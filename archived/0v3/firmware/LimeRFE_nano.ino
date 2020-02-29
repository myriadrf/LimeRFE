#include <Wire.h>
#include "mcu.h"
#include "chain.h"
#include "cmd.h"

#define I2C_ADDRESS       0x51 // Random pick, change if needed

bool isMaster;

unsigned char activeBuffer[BUFFER_SIZE];
unsigned char activeState[STATE_SIZE];
unsigned char nextState[STATE_SIZE];

unsigned char activeChannelID = CID_NOT_SELECTED;
unsigned char activeTX2TXRX = 0x00;
unsigned char activeAttenuation = 0x00;
unsigned char activeNotch = 0x00;
unsigned char activeMode = 0xff;

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
  activeState[0] = 0x00;
  setupMCU(activeState[0], activeState);
  for (int i=0; i<STATE_SIZE; i++){
    activeBuffer[i] = 0x0;
    activeState[i] = 0x0;
  }
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
      wait_for_bytes(BUFFER_SIZE - 1, 1000);
      Serial.readBytes(activeBuffer + 1, BUFFER_SIZE - 1);
      unsigned char command;
      command = activeBuffer[0];
      doCommand();
      activeBuffer[0] = command;
      Serial.write(activeBuffer,BUFFER_SIZE);
      
      
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
        configureState(activeBuffer[1], activeBuffer[2], activeBuffer[3], activeBuffer[4]);
        setMode(activeBuffer[5]);
        break;
      }
    case CMD_MODE:  {
        setMode(activeBuffer[1]);
        break;
      }
    case CMD_READ_ADC1: {
        clearBuffer();
        int adcValue = analogRead(ADC1_PIN);
        activeBuffer[1] = lowByte(adcValue);
        activeBuffer[2] = highByte(adcValue);
        break;
      }    
    case CMD_READ_ADC2: {
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
        activeBuffer[1] = activeChannelID;
        activeBuffer[2] = activeTX2TXRX;
        activeBuffer[3] = activeNotch;
        activeBuffer[4] = activeAttenuation;
        activeBuffer[5] = activeMode;
        break;
      }
    case CMD_GET_INFO: {
        clearBuffer();  
        
        activeBuffer[1] = 1;    // FW_VER
        activeBuffer[2] = 0x59; // HW_VER
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

void configureState(unsigned char channelId, unsigned char selTX2TXRX, unsigned char notch, unsigned char attenuation){
  switch(channelId){
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
  }

  //////// set notch
  unsigned char notchBit;

  if (notch == NOTCH_VALUE_ON)
    notchBit = NOTCH_BIT_ON;
  else
    notchBit = NOTCH_BIT_OFF;
    
  (notchBit == 1) ? nextState[NOTCH_BYTE -1] |= (1 << NOTCH_BIT) : nextState[NOTCH_BYTE - 1] &= ~(1 << NOTCH_BIT);

  //////// set attenuation
  unsigned char usatt = attenuation;
  
  for(int i=0; i<3; i++)
    ((usatt >> i) & 0x01) ? nextState[ATTEN_BYTE - 1] |= (1 << (ATTEN_BIT + i)) : nextState[ATTEN_BYTE - 1] &= ~(1 << (ATTEN_BIT + i));

  //////// set sw position
  (selTX2TXRX == 1) ? nextState[TX2TXRX_BYTE - 1] |= (1 << TX2TXRX_BIT) : nextState[TX2TXRX_BYTE - 1] &= ~(1 << TX2TXRX_BIT);
  
  //////// shift data
  shiftData(nextState, CHAIN_SIZE, activeState);   // Shift Chain Data
  
  //////// set active values
  activeChannelID = channelId;
  activeTX2TXRX = selTX2TXRX;
  activeNotch = notch;
  activeAttenuation = attenuation;
}

void setMode(unsigned char mode){
  unsigned char nextMCUSetup = 0;
  unsigned char channelID;
  
  unsigned char iTXRX0 = 0; // V2
  unsigned char iTXRX1 = 0; // V3
  unsigned char iLNA_EN = 0;
  unsigned char iPA_EN = 0;
  unsigned char iRELAY = 0; // 0 - RX; 1 - TX
  unsigned char iBAND38TX = 0; // 0 - RX; 1 - TX

  channelID = getChannelID();

  if(channelID != CID_NOT_SELECTED){
    activeMode = mode;
  
    /* For Cellular channels the mode cannot be changed */
    if ((channelID == CID_CELL_BAND01) ||
        (channelID == CID_CELL_BAND02) ||
        (channelID == CID_CELL_BAND03) ||
        (channelID == CID_CELL_BAND07) ||
        (channelID == CID_CELL_BAND38)) {                      // CELL
      iTXRX0 = 0;
      iTXRX1 = 1;
      if (channelID == CID_CELL_BAND38){
        if (mode == RFE_MODE_TX){
          iBAND38TX = 1;
        } else {
          iBAND38TX = 0;
        }
      }
      if (channelID == CID_CELL_BAND07){
        iBAND38TX = 1;
      }
    } else {
      switch(mode){
        case RFE_MODE_NONE: {
          iLNA_EN = 0;
          iPA_EN = 0;
        }
        break;
        case RFE_MODE_TX: {
          iLNA_EN = 0;
          iPA_EN = 1;
          if (channelID == CID_HAM_0030) {
            iRELAY = 1;
          } else {
            iTXRX0 = 1;
            iTXRX1 = 1;
          }
        }
        break;
        case RFE_MODE_RX:{
          if (channelID == CID_HAM_0030) {                    // 30MHz
            iRELAY = 0;
          } else if ((channelID == CID_HAM_0145) || 
                          (channelID == CID_HAM_0435) || 
                          (channelID == CID_WB_1000)) {       // RX_L
            iTXRX0 = 1;
            iTXRX1 = 0;
          } else {                                            // RX_H
            iTXRX0 = 0;
            iTXRX1 = 0;
          }
          iLNA_EN = 1;
          iPA_EN = 0;
        }
        break;
        case RFE_MODE_TXRX: {
          if(getTX2TXRX() == 0){                              // TX to TX SMA
            if (channelID == CID_HAM_0030) {                  // 30MHz
              iRELAY = 0;
            } else if ((channelID == CID_HAM_0145) || 
                            (channelID == CID_HAM_0435) || 
                            (channelID == CID_WB_1000)) {     // RX_L
              iTXRX0 = 1;
              iTXRX1 = 0;
            } else {                                          // RX_H
              iTXRX0 = 0;
              iTXRX1 = 0;
            }
            iLNA_EN = 1;
            iPA_EN = 1;
          } else {
            iLNA_EN = 0;
            iPA_EN = 0;
          }
        }
        break;
      }
    }
      
    (iTXRX0 == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_TXRX0_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_TXRX0_BIT));
    (iTXRX1 == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_TXRX1_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_TXRX1_BIT));
    (iRELAY == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_RELAY_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_RELAY_BIT));
    (iLNA_EN == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_LNA_EN_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_LNA_EN_BIT));
    (iPA_EN == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_PA_EN_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_PA_EN_BIT));
    (iBAND38TX == 1) ? nextMCUSetup |= (1 << (MCU_BYTE_BAND38_BIT)) : nextMCUSetup &= ~(1 << (MCU_BYTE_BAND38_BIT));
    
    setupMCU(nextMCUSetup, activeState);
    
  }
  
}

void wait_for_bytes(int num_bytes, unsigned long timeout){
  unsigned long startTime = millis();
  //Wait for incoming bytes or exit if timeout
  while ((Serial.available() < num_bytes) && (millis() - startTime < timeout)){}
  
}

unsigned char getChannelID(){
  return activeChannelID;
}

unsigned char getTX2TXRX(){
  return activeTX2TXRX;
}

void receiveEvent(int howMany) {
  int i = 0;
  while (Wire.available()) {                   // loop through all but the last
    activeBuffer[i] = Wire.read();             // receive byte as a character
    i++;
  }
  
  if(howMany == BUFFER_SIZE){
    doCommand();
  }
}

void requestEvent() {
  Wire.write(activeBuffer, BUFFER_SIZE);
}
