#define CMD_HELLO                   0x00

// CTRL
#define CMD_MODE                    0xd1  // CMD + MODE
#define CMD_CONFIG                  0xd2  // CMD + CHANNELID + TX2RXTX + NOTCH + ATTENUATION + MODE
#define CMD_MODE_FULL               0xd3  // CMD + MODE
#define CMD_CONFIG_FULL             0xd4  // CMD + chain bytes + MCU STATE byte

#define CMD_READ_ADC1               0xa1  // returns ADC1 value
#define CMD_READ_ADC2               0xa2  // returns ADC2 value
#define CMD_READ_TEMP               0xa3  // returns temperature

#define CMD_CONFGPIO45              0xb1  // sets the direction of the GPIO4 or GPIO5 pin
#define CMD_SETGPIO45               0xb2  // sets the value on GPIO4 or GPIO5 pin
#define CMD_GETGPIO45               0xb3  // gets the value from GPIO4 or GPIO5 pin 

#define CMD_FAN                     0xc1  // sets FAO On or OFF

// General CTRL
#define CMD_GET_INFO                0xe1
#define CMD_RESET                   0xe2
#define CMD_GET_CONFIG              0xe3  // returns CHANNELID + RXTX + NOTCH + ATTENUATION + MODE
#define CMD_GET_CONFIG_FULL         0xe4  // returns chain bytes + MCU STATE byte
#define CMD_I2C_MASTER              0xe5
