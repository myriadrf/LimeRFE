#include "Arduino.h"
#include <Wire.h>
#include "consts.h"
#include "mcu.h"
#include "chain.h"

void shiftData(unsigned char* data, int dataSize, unsigned char* currentState ){
  
  disableLNAs();
  disablePAs();
  
  digitalWrite(DATA_RESET_PIN, DATA_RESET);     // Reset Registers Values
  delay(10); // todo time?
  digitalWrite(DATA_RESET_PIN, DATA_RESETn);    // Enable Register
  myShiftOut(DATA_PIN, DATA_CLK_PIN, MSBFIRST, data, CHAIN_SIZE);
  memcpy(currentState, data, sizeof(data[0])*CHAIN_SIZE);
  
  setupMCU(currentState[0], currentState);
  
}

void myShiftOut(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder, unsigned char* val, unsigned int numOfBytes)
{
  for(int a = 0; a < numOfBytes; a++)  {
    for (int i = 0; i < 8; i++)  {
      if (bitOrder == LSBFIRST)
        digitalWrite(dataPin, !!(val[a] & (1 << i)));
      else
        digitalWrite(dataPin, !!(val[a] & (1 << (7 - i))));
      digitalWrite(clockPin, HIGH);
      digitalWrite(clockPin, LOW);  
    }
  }
}
