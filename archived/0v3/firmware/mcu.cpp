#include "Arduino.h"
#include <Wire.h>
#include "consts.h"
#include "mcu.h"

void setupMCU(unsigned char value, unsigned char * currentState){
  
  if(bitRead(value, 0) == 1){
    enablePAs();
  } else {
    disablePAs();
  }
  
  if(bitRead(value, 1) == 1){
    enableLNAs();
  } else {
    disableLNAs();
  }

  setRXTX(value);
  
  setRelay(value);

  setBand38(value);

  memcpy(currentState + CHAIN_SIZE, &value, sizeof(value));
  
}

void enableLNAs(){
  digitalWrite(LNA_EN_PIN, HIGH); // LNAs enable
}

void disableLNAs(){
  digitalWrite(LNA_EN_PIN, LOW); // LNAs disable
}

void enablePAs(){
  digitalWrite(PA_ENn_PIN, LOW); // PAs enable (Active Low)
}

void disablePAs(){
  digitalWrite(PA_ENn_PIN, HIGH); // PAs disable (Active Low)
}

void band38TX(){
  digitalWrite(BAND38_TX_ENn_PIN, LOW);
}

void band38RX(){
  digitalWrite(BAND38_TX_ENn_PIN, HIGH);
}

void setRelay(unsigned char value){
  digitalWrite(RELAY_PIN, bitRead(value, MCU_BYTE_RELAY_BIT));
}

void setRXTX(unsigned char value){
  digitalWrite(RX_SW_PIN0, bitRead(value, MCU_BYTE_TXRX0_BIT));
  digitalWrite(RX_SW_PIN1, bitRead(value, MCU_BYTE_TXRX1_BIT));
}

void setBand38(unsigned char value){
  if (bitRead(value, MCU_BYTE_BAND38_BIT) == 0){
    band38RX();
  } else {
    band38TX();
  }
}

// Read Atmega328P internal temperature sensor //
long read_temp()
{
  // Read temperature sensor against 1.1V reference
  ADMUX = _BV(REFS1) | _BV(REFS0) | _BV(MUX3);
  // Start AD conversion
  ADCSRA |= _BV(ADEN) | _BV(ADSC);
  // Detect end-of-conversion
  while (bit_is_set(ADCSRA,ADSC));
  // return raw data
  return ADCL | (ADCH << 8);
}

// Convert raw temperature data to °C
double conv_temp(long raw_temp)
{
  // f(x) = (raw - offset) / coeff
  return((raw_temp - 324.31) / 1.22);
}
