Connectors
##########

The top view of the LimeRFE board is shown in Figure 6. The bottom view of the LimeRFE board is shown in Figure 7.

.. figure:: /images/LimeRFE_v1.31_connectors_top.png
  :width: 600

  Figure 6: LimeRFE v1.31 connectors - top view

.. figure:: /images/LimeRFE_v1.31_connectors_bot.png
  :width: 600

  Figure 7: LimeRFE v1.31 connectors - bottom view

.. list-table:: Table 1. Connectors
   :header-rows: 1

   * - Connector
     - Description
   * - J1
     - RF output – for RX mode (connect to SDR input)
   * - J2
     - RF input – for TX mode (connect to SDR output)
   * - J3
     - RF input – in RX mode, for all frequency bands

       RF output – in TX mode, for all frequency bands except 30 MHz (HF) band and 50–70 MHz (6 & 4 m) band
   * - J4
     - RF output – in TX mode, for all frequency bands except 30 MHz (HF) band and 50–70 MHz (6 & 4 m) band and all Cellular bands

       (Band 1, 2, 3, 7 and 38)
   * - J5
     - RF input – in RX mode, for 30 MHz (HF), 50 – 70 MHz (6 & 4 m),

       144 – 146 MHz (2 m), 220 – 225 MHz (1.25 m) and 430 – 440 MHz (70 cm) bands

       RF output – in TX mode, only for 30 MHz (HF) and 50 – 70 MHz (6 & 4 m) bands
   * - J6
     - To connect the output of the log detector to ADC7 input of the microcontroller, in order to measure forward power, place jumper between
       
       pins 1 and 2.

       To connect the external signal (connected to J13-PIN3) to ADC7 input of the microcontroller, place jumper between pins 2 and 3.
   * - J7
     - To connect the output of the log detector to ADC6 input of the microcontroller, in order to measure forward power, place jumper between 
       
       pins 1 and 2.

       To connect the external signal (connected to J13-PIN6) to ADC6 input of the microcontroller, place jumper between pins 2 and 3.
   * - J8
     - ICSP bus – MISO (PIN1), SCK (PIN3), MOSI (PIN4), RESET (PIN5), PWR (PIN2), GND (PIN6)
   * - J9
     - External 12 V connection – GND (PINs 1, 3), 12 V (PIN 2)
   * - J10
     - External 5 V connection – GND (PINs 1, 3), 5 V (PIN 2)
   * - J11
     - 5 V source selection:

       5 V is obtained from DC-DC connector supplied from external 12 V (PIN connection 1-2, jumper position – right);

       5 V is obtained from USB (PIN connection 3-4, jumper position – center);

       5 V is obtained from external 5 V supply unit (PIN connection 5-6, jumper position – left).
   * - J12
     - This 10-header enables the communication between the SDR and LimeRFE. Denoted as GPIO SDR.

       Such 10-pin GPIO headers are available in all Lime Microsystems’ SDR platforms.

       GPIO – GPIO0 (PIN1), GPIO1 (PIN2), GPIO2 (PIN3), GPIO3 (PIN4),

       These pins are connected to the GPIO sub-system of the LimeRFE. This sub-system provides level shifters and relay drivers, and enables

       communication/control between SDR and other hardware (e.g. additional PA). This sub-system enables the same

       functionality as the LimeSDR GPIO Board (https://wiki.myriadrf.org/LimeSDR_GPIO_Board), but with the number of GPIO pins reduced to 4.

       GPIO – GPIO4 (PIN5), GPIO5 (PIN6)

       These 2 pins provide the 2-way communication between the SDR and the microcontroller on LimeRFE.

       SCL (PIN7), SDA (PIN8)

       These pins enable I2C communication between SDR and LimeRFE.

       GND (PIN9), VDD_CON (PIN10)

       These are supply pins.
   * - J13
     - GPIO2_LS (PIN1), GPIO4_LS (PIN2), GPIO5_LS (PIN7), GPIO3_LS (PIN8)

       These pins are part of the GPIO sub-system.

       ADC7 (PIN3), ADC6 (PIN6)

       These pins can be connected to the ADC inputs of the LimeRFE microcontroller by properly setting jumpers on J6 and J7.

       VDDA (PIN5), GND (PIN4)

       These are supply pins.
   * - J14
     - VDDA (PIN1), VDD_CON (PIN2)

       Jumper connection only in case that VDDA = VDDA_CONN (For use in relay only mode)
   * - J15
     - DC supply for RELAY signals – VCOM (PIN2), GND (PIN1)
   * - J16
     - RELAY signals – RELAY_0 (PIN7), RELAY_1 (PIN5), RELAY_2 (PIN3), RELAY_3 (PIN1), VCOM (PINs 2, 4, 6, 8)
   * - J17
     - Reverse power RF input (for SWR operation)
   * - J18
     - Forward power RF input (for SWR operation)
   * - J19
     - This connector connects drain of RD16HHF1 to the either the on-board baluns T1 and T2 or to the external balun (LimeRFE add-on balun board).

       In default configuration (T1 and T2 are used), J29 should be shorted by jumper, as well as the J31 connector. Also, pins 1 and 2 of connector J19

       should be shorted by jumper for this configuration (jumper in left position).

       If external balun is used (LimeRFE add-on balun board), then connectors J29 and J31 should be left open and pins 2 and 3 of connector J19 should

       be shortened by jumper (jumper in right position). External balun is connected to the board through

       connector J30. Connector J32 is dummy and serves only for mechanical support. All four pins of J32 are connected to ground.
   * - J20
     - This connector enables the measurement of the bias current in power amplifier for 1240–1325 MHz (23 cm) band. Pins should be shorted by jumper

       for normal operation.
   * - J22
     - Connects GPIO3 to GPIO3_CONN (PIN connection 2-3) or to GPIO5 (PIN connection 1-2).

       The intention is to enable one of the level-shifters/relay-drivers to be controlled directly from the LimeRFE microcontroller.
   * - J23
     - External 12 V connection
   * - J24
     - This connector enables the measurement of the bias current in power amplifier for 144–146 MHz (2 m) band. Pins should be shorted by jumper

       for normal operation.
   * - J25
     - This connector enables the measurement of the bias current in power amplifier for 220–225 MHz (1.25 m) band. Pins should be shorted by jumper

       for normal operation.
   * - J26
     - This connector enables the measurement of the bias current in power amplifier for 430–440 MHz (70 cm) band. Pins should be shorted by jumper

       for normal operation.
   * - J27
     - This connector enables the measurement of the bias current in power amplifier for 902–928 MHz (33 cm) band. Pins should be shorted by jumper

       for normal operation.
   * - J29
     - Please refer to the description of J19.
   * - J30
     - Please refer to the description of J19.
   * - J31
     - Please refer to the description of J19.
   * - J32
     - Please refer to the description of J19.
   * - J36
     - This connector enables the measurement of the bias current in power amplifier for 30 MHz (HF) band. Pins should be shorted by jumper for normal

       operation.
   * - SW1
     - LimeRFE microcontroller RESET push-switch
   * - SW2
     - GPIO to/from level shifted signals (GPIO_LS):

       When the switches are in position closer to PIN1 (marked with dot), direction signal is high, direction is GPIO → GPIO_LS;

       When the switches are in position away from PIN1 (marked with dot), direction signal is low, direction is GPIO_LS → GPIO.
   * - CON1
     - Micro USB type B connector
   * - P1
     - 3-pin fan connector for external fan