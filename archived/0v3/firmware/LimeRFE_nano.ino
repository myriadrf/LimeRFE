#include <Wire.h>
#include "mcu.h"
#include "chain.h"
#include "cmd.h"
#include "errorCode.h"

#define I2C_ADDRESS       0x51 // Random pick, change if needed

bool isMaster;

unsigned char activeBuffer[BUFFER_SIZE];
unsigned char activeBufferSize = BUFFER_SIZE;
unsigned char activeState[STATE_SIZE];
unsigned char nextState[STATE_SIZE];

unsigned char activeRxChannelID = CID_WB_1000;        // wb1000
unsigned char activeTxChannelID = CID_WB_1000;        // wb1000
unsigned char activeRxConn = CONN_TXRX;               // J3
unsigned char activeTxConn = CONN_TX;                 // J4
unsigned char activeAttenuation = 0x00;               // 0
unsigned char activeNotch = 0x00;                     // 0
unsigned char activeSwrEn = 0x00;                     // 0
unsigned char activeSwrSrc = 0x00;                    // 0
unsigned char activeMode = RFE_MODE_NONE;             // RFE_MODE_NONE

void setup() {

  isMaster = false; // Board is slave by default
  
  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  
  Wire.begin(I2C_ADDRESS); // join i2c bus with address #I2C_ADDRESS
  
  Wire.onReceive(receiveEvent); // register event
  Wire.onRequest(requestEvent); // register event
  
  // Configure pins
  pinMode(GPIO4_PIN, INPUT);
  pinMode(GPIO5_PIN, INPUT);
  pinMode(RELAY_PIN, OUTPUT);
  pinMode(RX_SW_PIN0, OUTPUT);
  pinMode(RX_SW_PIN1, OUTPUT);
  pinMode(DATA_RESET_PIN, OUTPUT);
  pinMode(DATA_PIN, OUTPUT);
  pinMode(DATA_CLK_PIN, OUTPUT);
  pinMode(FAN_SENSE_PIN, INPUT);
  pinMode(RX_SW_PIN1, OUTPUT);
  pinMode(LNA_EN_PIN, OUTPUT);
  pinMode(PA_ENn_PIN, OUTPUT);
  pinMode(ADC1_PIN, INPUT);
  pinMode(ADC2_PIN, INPUT);
  pinMode(BAND38_TX_ENn_PIN, OUTPUT);
  
  setDefaults();
}

void setDefaults(){

  digitalWrite(DATA_RESET_PIN, DATA_RESET);  // reset all shift registers
  digitalWrite(DATA_RESET_PIN, DATA_RESETn);

  configureState(CID_WB_1000, CID_WB_1000, CONN_TXRX, CONN_TX, 0x00, 0x00, 0x00, 0x00);  // set defaults
  setMode(RFE_MODE_NONE);

}

void loop() {
  if (Serial.available()) {
    Serial.readBytes(activeBuffer, 1);
    if (activeBuffer[0] == CMD_HELLO){
      while(Serial.read() >= 0){} // flush the receive buffer
      Serial.write(CMD_HELLO);
      // Blink twice if synchronized
      delay(100);
    } else {
      unsigned char command;
      command = activeBuffer[0];
      if (command == CMD_MODE) {       // cmd_mode is shorter
          activeBufferSize = BUFFER_SIZE_MODE;
      } else {
          activeBufferSize = BUFFER_SIZE;
      }
      wait_for_bytes(activeBufferSize - 1, 1000);
      Serial.readBytes(activeBuffer + 1, activeBufferSize - 1);
      doCommand();
      activeBuffer[0] = command;
      
      Serial.write(activeBuffer,activeBufferSize);
      
    }
  }
}

void doCommand(){
  switch(activeBuffer[0]) {
    case CMD_CONFIG_FULL: {
        disableLNAs();                              // Disable LNAs
        disablePAs();                               // Disable PAs
        
        shiftData(activeBuffer + 1, CHAIN_SIZE, activeState);   // Shift Chain Data
        setupMCU(activeBuffer[CHAIN_SIZE + 1], activeState);    // 
        
        break;
      }
    case CMD_MODE_FULL: {
        setupMCU(activeBuffer[1], activeState);
        break;
      }
    case CMD_CONFIG:  {
        unsigned char err = configureState(activeBuffer[1], activeBuffer[2], activeBuffer[3], activeBuffer[4], activeBuffer[6], activeBuffer[7], activeBuffer[8], activeBuffer[9]);
        if (err == COMPLETED){
            err = setMode(activeBuffer[5]);
        }
        clearBuffer();
        activeBuffer[1] = err;
        break;
      }
    case CMD_MODE:  {
        unsigned char err = setMode(activeBuffer[1]);
        clearBuffer();
        activeBuffer[1] = err;
        break;
      }
    case CMD_READ_ADC2: {
        clearBuffer();
        int adcValue = analogRead(ADC1_PIN);
        activeBuffer[1] = lowByte(adcValue);
        activeBuffer[2] = highByte(adcValue);
        break;
      }    
    case CMD_READ_ADC1: {
        clearBuffer();
        int adcValue = analogRead(ADC2_PIN);
        activeBuffer[1] = lowByte(adcValue);
        activeBuffer[2] = highByte(adcValue);
        break;
      }
    case CMD_READ_TEMP: {
        clearBuffer();
        int tempValue = round(conv_temp(read_temp()));
        activeBuffer[1] = highByte(tempValue);
        activeBuffer[2] = lowByte(tempValue);
        break;
      }
    case CMD_GET_CONFIG_FULL: {
        clearBuffer();
        memcpy(activeBuffer + 1, activeState, sizeof(activeState[0])*STATE_SIZE);
        break;
      }
    case CMD_GET_CONFIG:  {
        clearBuffer();
        activeBuffer[1] = activeRxChannelID;
        activeBuffer[2] = activeTxChannelID;
        activeBuffer[3] = activeRxConn;
        activeBuffer[4] = activeTxConn;
        activeBuffer[5] = activeMode;                         // mode
        activeBuffer[6] = activeNotch;
        activeBuffer[7] = activeAttenuation;
        activeBuffer[8] = activeSwrEn;
        activeBuffer[9] = activeSwrSrc;
        break;
      }
    case CMD_CONFGPIO45:  {
        configGPIO45(activeBuffer[1], activeBuffer[2]);
        break;
      }    
    case CMD_SETGPIO45:  {
        setGPIO45(activeBuffer[1], activeBuffer[2]);
        break;
      }
    case CMD_GETGPIO45:  {
        char pin = activeBuffer[1];
        clearBuffer();
        activeBuffer[1] = getGPIO45(pin);
        break;
      }
    case CMD_GET_INFO: {
        clearBuffer();  
        activeBuffer[1] = 0x01;    // FW_VER
        activeBuffer[2] = 0x10; // HW_VER
        activeBuffer[3] = 1;    // Status
        activeBuffer[4] = 1;    // Status
        break;
      }
    case CMD_RESET: {
        setDefaults();
        break;
      }
    default:  {
        clearBuffer();
      }
  }
}

void clearBuffer(){
  for (int i=0; i<BUFFER_SIZE; i++){
      activeBuffer[i] = 0x0;
  }
}

unsigned char configureState(unsigned char rxChannelID, unsigned char txChannelId, unsigned char rxConn, unsigned char txConn, unsigned char notch, unsigned char attenuation, unsigned char swrEn, unsigned char swrSrc){
  switch(rxConn){
      case CONN_DEFAULT:{
        if (rxChannelID == CID_HAM_0030){
          rxConn = CONN_30;
        } else {
          rxConn = CONN_TXRX;
        }
        break;
      }
      case CONN_TXRX:{
        break;
      }
      case CONN_TX:{
          // error
          return ERROR_RX_CONN;
        break;
      }
      case CONN_30:{
        if (isRxH(rxChannelID) || isCell(rxChannelID)){
          // error
          return ERROR_RX_CONN;
        }
        break;
      }
      default: {
        // error
        return ERROR_RX_CONN;
        break;
      }
  }
  
  switch(txConn){
      case CONN_DEFAULT:{
        if (txChannelId == CID_HAM_0030){
          txConn = CONN_30;
        } else {
          txConn = CONN_TXRX;
        }
        break;
      }
      case CONN_TXRX:{
        if (txChannelId == CID_HAM_0030){
          // error
          return ERROR_TX_CONN;
        }
        break;
      }
      case CONN_TX:{
        if (txChannelId == CID_HAM_0030 || isCell(txChannelId)){
          // error
          return ERROR_TX_CONN;
        }
        break;
      }
      case CONN_30:{
        if (txChannelId != CID_HAM_0030){
          // error
          return ERROR_TX_CONN;
        }
        break;
      }
      default: {
        // error
        return ERROR_TX_CONN;
        break;
      }
  }
  
  switch(rxChannelID){
    case CID_WB_1000: {
        memcpy(nextState, STATE_HAMWB1, sizeof(STATE_HAMWB1[0])*CHAIN_SIZE);
        break;
      }
    case CID_WB_4000: {
        memcpy(nextState, STATE_HAMWB2, sizeof(STATE_HAMWB2[0])*CHAIN_SIZE);
        break;
      }
    case CID_HAM_0030:  {
        memcpy(nextState, STATE_HAM30, sizeof(STATE_HAM30[0])*CHAIN_SIZE);
        break;
      }
    case CID_HAM_0145:  {
        memcpy(nextState, STATE_HAM145, sizeof(STATE_HAM145[0])*CHAIN_SIZE);
        break;
      }
    case CID_HAM_0435:  {
        memcpy(nextState, STATE_HAM435, sizeof(STATE_HAM435[0])*CHAIN_SIZE);
        break;
      }
    case CID_HAM_1280:  {
        memcpy(nextState, STATE_HAM1280, sizeof(STATE_HAM1280[0])*CHAIN_SIZE);
        break;
      }
    case CID_HAM_2400:  {
        memcpy(nextState, STATE_HAM2400, sizeof(STATE_HAM2400[0])*CHAIN_SIZE);
        break;
      }
    case CID_HAM_3500:  {
        memcpy(nextState, STATE_HAM3500, sizeof(STATE_HAM3500[0])*CHAIN_SIZE);
        break;
      }
    case CID_CELL_BAND01: {
        memcpy(nextState, STATE_CELLB01, sizeof(STATE_CELLB01[0])*CHAIN_SIZE);
        break;
      }
    case CID_CELL_BAND02: {
        memcpy(nextState, STATE_CELLB02, sizeof(STATE_CELLB02[0])*CHAIN_SIZE);
        break;
      }
    case CID_CELL_BAND03: {
        memcpy(nextState, STATE_CELLB03, sizeof(STATE_CELLB03[0])*CHAIN_SIZE);
        break;
      }
    case CID_CELL_BAND07: {
        memcpy(nextState, STATE_CELLB07, sizeof(STATE_CELLB07[0])*CHAIN_SIZE);
        break;
      }
    case CID_CELL_BAND38: {
        memcpy(nextState, STATE_CELLB38, sizeof(STATE_CELLB38[0])*CHAIN_SIZE);
        break;
      }
    default: {
        return ERROR_WRONG_CHANNEL_CODE;
        break;
      }
  }

  if(isCell(rxChannelID) || isCell(txChannelId)) {       
      if(txChannelId != rxChannelID){
          return ERROR_CELL_TX_NOT_EQUAL_RX;
      }
  } else {
      switch(txChannelId){
        case CID_WB_1000: {
            setTxState(nextState, STATE_HAMWB1);
            break;
          }
        case CID_WB_4000: {
            setTxState(nextState, STATE_HAMWB2);
            break;
          }
        case CID_HAM_0030:  {
            setTxState(nextState, STATE_HAM30);
            break;
          }
        case CID_HAM_0145:  {
            setTxState(nextState, STATE_HAM145);
            break;
          }
        case CID_HAM_0435:  {
            setTxState(nextState, STATE_HAM435);
            break;
          }
        case CID_HAM_1280:  {
            setTxState(nextState, STATE_HAM1280);
            break;
          }
        case CID_HAM_2400:  {
            setTxState(nextState, STATE_HAM2400);
            break;
          }
        case CID_HAM_3500:  {
            setTxState(nextState, STATE_HAM3500);
            break;
          }
        default:  {
            return ERROR_WRONG_CHANNEL_CODE;
            break;
        }
      }
  }
  
  //////// set notch
  unsigned char notchBit;
  
  if (notch == NOTCH_VALUE_ON)
    notchBit = NOTCH_BIT_ON;
  else
    notchBit = NOTCH_BIT_OFF;
    
  (notchBit == 1) ? nextState[NOTCH_BYTE -1] |= (1 << NOTCH_BIT) : nextState[NOTCH_BYTE - 1] &= ~(1 << NOTCH_BIT);

  (swrEn == 1) ? nextState[SWR_EN_BYTE -1] |= (1 << SWR_EN_BIT) : nextState[SWR_EN_BYTE - 1] &= ~(1 << SWR_EN_BIT);

  (swrSrc == 1) ? nextState[SWR_SRC_BYTE -1] |= (1 << SWR_SRC_BIT) : nextState[SWR_SRC_BYTE - 1] &= ~(1 << SWR_SRC_BIT);
  
  //////// set attenuation
  unsigned char usatt = attenuation;
  
  for(int i=0; i<3; i++)
    ((usatt >> i) & 0x01) ? nextState[ATTEN_BYTE - 1] |= (1 << (ATTEN_BIT + i)) : nextState[ATTEN_BYTE - 1] &= ~(1 << (ATTEN_BIT + i));

  //////// set RX sw position
  (rxConn == CONN_30) ? nextState[RX2TXRX_BYTE - 1] |= (1 << RX2TXRX_BIT) : nextState[RX2TXRX_BYTE - 1] &= ~(1 << RX2TXRX_BIT);

  //////// set TX sw position
  (txConn == CONN_TXRX) ? nextState[TX2TXRX_BYTE - 1] |= (1 << TX2TXRX_BIT) : nextState[TX2TXRX_BYTE - 1] &= ~(1 << TX2TXRX_BIT);

  //////// shift data
  shiftData(nextState, CHAIN_SIZE, activeState);   // Shift Chain Data

  //////// set active values
  activeRxChannelID = rxChannelID;
  activeTxChannelID = txChannelId;
  activeRxConn = rxConn;
  activeTxConn = txConn;
  activeNotch = notch;
  activeAttenuation = attenuation;
  activeSwrEn = swrEn;
  activeSwrSrc = swrSrc;
    
  return COMPLETED;
}

void setTxState(unsigned char* state, const unsigned char* txState){
  for(int i = 0; i < CHAIN_SIZE; i++){
      state[i] = (state[i] & ~TX_MASK[i]) | (txState[i] & TX_MASK[i]);
  }
}

unsigned char setMode(unsigned char mode){
  unsigned char nextMCUSetup = 0;
  unsigned char rxChannelID;
  unsigned char txChannelID;
  
  unsigned char iTXRX0 = 0;         // V2
  unsigned char iTXRX1 = 0;         // V3
  unsigned char iLNA_EN = 0;
  unsigned char iPA_EN = 0;
  unsigned char iRELAY = 0;         // 0 - RX; 1 - TX
  unsigned char iBAND38TX = 0;      // 0 - RX; 1 - TX

  rxChannelID = getRxChannelID();
  txChannelID = getTxChannelID();

  if(rxChannelID != CID_NOT_SELECTED){
    activeMode = mode;
    
    if (isCell(rxChannelID)) {                      /////////////////// CELL ////////////////
      iTXRX0 = 0;
      iTXRX1 = 1;
      if (rxChannelID == CID_CELL_BAND38){  
        if (mode == RFE_MODE_TX){                                // TX mode Band 38
          iBAND38TX = 1;
        } else if (mode == RFE_MODE_RX) {                        // RX mode Band 38
          iBAND38TX = 0;
        } else {
          return ERROR_CELL_WRONG_MODE;                          // not TX or RX mode for Band 38
        }
      } else {
          if (mode != RFE_MODE_TXRX){
              return ERROR_CELL_WRONG_MODE;                      // not TXRX mode for (Cell - Band 38)
          }

          if (rxChannelID == CID_CELL_BAND07){
              iBAND38TX = 1;                                     // enable PA for band 7 (same as for band 38)
          }
      }                                                          /////////////////// CELL /////////////////
      
    } else {                                                     /////////////////// HAM & WB /////////////
      switch(mode){
        case RFE_MODE_NONE: {
          iLNA_EN = 0;
          iPA_EN = 0;
          break;
        }
        case RFE_MODE_TX: {
          if (txChannelID == CID_HAM_0030) {
            iRELAY = 1;
          } else {
            iTXRX0 = 1;
            iTXRX1 = 1;
          }
          iLNA_EN = 0;
          iPA_EN = 1;
          break;
        }
        case RFE_MODE_RX:{
          if (rxChannelID == CID_HAM_0030) {                    // 30MHz
              if (activeRxConn == CONN_TXRX){
                  iTXRX0 = 1;
                  iTXRX1 = 0;
              } else if(activeRxConn == CONN_30){
                  iRELAY = 0;
              }
          } else if ((rxChannelID == CID_HAM_0145) || 
                          (rxChannelID == CID_HAM_0435) || 
                          (rxChannelID == CID_WB_1000)) {       // RX_L
            iTXRX0 = 1;
            iTXRX1 = 0;
          } else {                                              // RX_H
            iTXRX0 = 0; 
            iTXRX1 = 0;
          }
          iLNA_EN = 1;
          iPA_EN = 0;
          break;
        }
        case RFE_MODE_TXRX: {
          if(activeTxConn != activeRxConn){                     // for RXTX rx_conn and tx_conn have to be different        
            if (rxChannelID == CID_HAM_0030) {                  // RX_30MHz
              if (activeRxConn == CONN_TXRX){
                  iTXRX0 = 1;
                  iTXRX1 = 0;
              } else if(activeRxConn == CONN_30){
                  iRELAY = 0;
              }
            } else if ((rxChannelID == CID_HAM_0145) ||
                            (rxChannelID == CID_HAM_0435) ||
                            (rxChannelID == CID_WB_1000)) {     // RX_L
              iTXRX0 = 1;
              iTXRX1 = 0;
            } else if ((rxChannelID == CID_HAM_1280) ||
                            (rxChannelID == CID_HAM_2400) ||
                            (rxChannelID == CID_HAM_3500) ||
                            (rxChannelID == CID_WB_4000)) {     // RX_H
              iTXRX0 = 0;
              iTXRX1 = 0;
            }
            
            if (txChannelID == CID_HAM_0030) {                  // TX_30MHz
              iRELAY = 1;
            } else if(activeTxConn == CONN_TXRX){
              iTXRX0 = 1;
              iTXRX1 = 1;
            }
            
            iLNA_EN = 1;                                        // turn LNAs ON
            iPA_EN = 1;                                         // turn PAs ON
            
          } else {
            iLNA_EN = 0;
            iPA_EN = 0;
            if(!isCell(rxChannelID)){
                // return error "tx_conn = tx_conn"
                return ERROR_RXTX_SAME_CONN;
            }
          }
        break;
        }
      }
    }                                                           /////////////////// HAM & WB /////////////
      
    (iTXRX0 == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_TXRX0_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_TXRX0_BIT));
    (iTXRX1 == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_TXRX1_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_TXRX1_BIT));
    (iRELAY == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_RELAY_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_RELAY_BIT));
    (iLNA_EN == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_LNA_EN_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_LNA_EN_BIT));
    (iPA_EN == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_PA_EN_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_PA_EN_BIT));
    (iBAND38TX == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_BAND38_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_BAND38_BIT));
    
    setupMCU(nextMCUSetup, activeState);
    
  }
  return COMPLETED;
}

boolean isRxH(unsigned char rxCh){
  return  (rxCh == CID_WB_4000 || 
          rxCh == CID_HAM_1280 || 
          rxCh == CID_HAM_2400 || 
          rxCh == CID_HAM_3500);
}

boolean isRxL(unsigned char rxCh){
  return  (rxCh == CID_WB_1000 || 
          rxCh == CID_HAM_0030 || 
          rxCh == CID_HAM_0145 || 
          rxCh == CID_HAM_0435);
}

boolean isCell(unsigned char ch){
  return  (ch == CID_CELL_BAND01 || 
          ch == CID_CELL_BAND02 || 
          ch == CID_CELL_BAND03 || 
          ch == CID_CELL_BAND07 || 
          ch == CID_CELL_BAND38);
}

void wait_for_bytes(int num_bytes, unsigned long timeout){
  unsigned long startTime = millis();
  //Wait for incoming bytes or exit if timeout
  while ((Serial.available() < num_bytes) && (millis() - startTime < timeout)){}
  
}

unsigned char getRxChannelID(){
  return activeRxChannelID;
}

unsigned char getTxChannelID(){
  return activeTxChannelID;
}

void receiveEvent(int howMany) {
  int i = 0;
  while (Wire.available()) {                   // loop through all but the last
    activeBuffer[i] = Wire.read();             // receive byte as a character
    i++;
  }
  unsigned char command = activeBuffer[0];
  if (command == CMD_MODE) {       // cmd_mode is shorter
      activeBufferSize = BUFFER_SIZE_MODE;
  } else {
      activeBufferSize = BUFFER_SIZE;
  }
  if(howMany == activeBufferSize){
    doCommand();
  }
}

void requestEvent() {
  Wire.write(activeBuffer, activeBufferSize);
}
