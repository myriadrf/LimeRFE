#define GPIO4_PIN               10
#define GPIO5_PIN               9
#define RELAY_PIN               A2
#define RX_SW_PIN0              A1  // sw v2
#define RX_SW_PIN1              A0  // sw v3
#define DATA_RESET_PIN          7
#define DATA_PIN                6
#define DATA_CLK_PIN            5
#define FAN_SENSE_PIN           4
#define ADC1_PIN                A6
#define ADC2_PIN                A7
#define BAND38_TX_ENn_PIN       A3

#define LNA_EN_PIN              3
#define PA_ENn_PIN              2

#define MCU_BYTE_PA_EN_BIT      0
#define MCU_BYTE_LNA_EN_BIT     1
#define MCU_BYTE_TXRX0_BIT      2
#define MCU_BYTE_TXRX1_BIT      3
#define MCU_BYTE_RELAY_BIT      4
#define MCU_BYTE_BAND38_BIT     5

void setupMCU(unsigned char value, unsigned char * currentState);
void enableLNAs();
void disableLNAs();
void enablePAs();
void disablePAs();
void setRelay(unsigned char value);
void setRXTX(unsigned char value);
void setBand38(unsigned char value);
long read_temp();
double conv_temp(long raw_temp);
char getGPIO45( char pin);
void setGPIO45( char pin, char value);
void configGPIO45( char pin, char dir);
