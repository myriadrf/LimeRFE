Connectors
##########

The top view of the LimeRFE board is shown in Figure 6. The bottom view of the LimeRFE board is shown in Figure 7.

.. figure:: /images/LimeRFE_v1.0_connectors_top.png
  :width: 600

  Figure 6: LimeRFE v1.0 connectors - top view

.. figure:: /images/LimeRFE_v1.0_Connectors_bot.png
  :width: 600

  Figure 7: LimeRFE v1.0 connectors - bottom view


Please, pay attention that in top view connectors J1, J2, J3, J4 and J5 are terminated with 50 Ohm and that all jumpers are set in position for quick start.

Please, pay attention that in bottom view there are no terminations on J1, J2, J3, J4, J5 connectors. Also, there is no heat sink and RD16HHF1 transistor which are removed for better view of all bottom components.

.. list-table:: Table 1. Connectors
   :header-rows: 1

   * - Connector
     - Description
   * - J1
     - RF output – in RX mode
   * - J2
     - RF input – in TX mode
   * - J3
     - RF input – in RX mode, for all frequency bands. RF output – in TX mode, for all frequency bands except
       
       30 MHz (HF) band and 50–70 MHz (6 & 4 m) band
   * - J4
     - RF output – in TX mode, for all frequency bands except 30 MHz (HF) band and 
      
       50–70 MHz (6 & 4 m) band 
       
       and all Cellular bands (Band 1, 2, 3, 7 and 38)
   * - J5
     - RF input – in RX mode, for 30 MHz (HF), 50–70 MHz (6 & 4 m), 144–146 MHz (2 m), 
     
       220–225 MHz (1.25 m) and 430–440 MHz bands.

       RF output – in TX mode, only for 30 MHz (HF) band
   * - J6
     - Connects output of log detector to ADC7 input for forward power measurement – jumper between 
      
       pins 1–2.
  
       External signal (J13-PIN3) to ADC7 – jumper between pins 2–3
   * - J7
     - Connects output of log detector to ADC6 input for reflection coefficient – jumper between pins 1–2.
  
       External signal (J13-PIN6) to ADC6 – jumper between pins 2–3
   * - J8
     - ICSP bus – MISO (PIN1), SCK (PIN3), MOSI (PIN4), RESET (PIN5), PWR (PIN2), GND (PIN6)
   * - J9
     - External 12 V connection – GND (PINs 1, 3), 12 V (PIN 2)
   * - J10
     - External 5 V connection – GND (PINs 1, 3), 5 V (PIN 2)
   * - J11
     - 5 V source selection:
       DC-DC from external 12 V (1–2, right jumper),

       USB (3–4, center jumper),
       external 5 V supply (5–6, left jumper)
   * - J12
     - 10-pin GPIO interface between SDR and LimeRFE.
  
       GPIO0–GPIO3 control subsystem (level shifting, relay drivers).

       GPIO4–GPIO5 2-way MCU communication.

       I2C: SCL (7), SDA (8).

       Power: GND (9), VDD_CON (10)
   * - J13
     - GPIO0_LS–GPIO3_LS (PIN1–4), ADC7 (PIN3), ADC6 (PIN6),
  
       VDDA (PIN5), GND (PIN4)
   * - J14
     - VDDA (PIN1), VDD_CON (PIN2). Used when VDDA = VDDA_CONN (relay-only mode)
   * - J15
     - DC supply for relay signals – VCOM (PIN2), GND (PIN1)
   * - J16
     - RELAY signals – RELAY_0 (PIN7), RELAY_1 (PIN5), RELAY_2 (PIN3), RELAY_3 (PIN1), GND (PINs 2,4,6,8)
   * - J17
     - Reverse power RF input (SWR operation)
   * - J18
     - Forward power RF input (SWR operation)
   * - J19
     - Selects on-board baluns (T1/T2) or external balun.
  
       Default: J29 + J31 shorted, J19 pins 1–2 shorted.

       External balun: J29/J31 open, J19 pins 2–3 shorted, J30 used.

       J32 is mechanical support, all pins grounded
   * - J20
     - Bias current measurement for 1240–1325 MHz PA. Normally shorted
   * - J22
     - Connects GPIO3_CONN to GPIO3 (2–3) or GPIO5 to GPIO3 (1–2)
   * - J23
     - External 12 V connection
   * - J24
     - Bias current measurement for 144–146 MHz PA. Normally shorted
   * - J25
     - Bias current measurement for 220–225 MHz PA. Normally shorted
   * - J26
     - Bias current measurement for 430–440 MHz PA. Normally shorted
   * - J27
     - Bias current measurement for 902–928 MHz PA. Normally shorted
   * - J29
     - Selects on-board baluns T1/T2 path. Works with J19/J31 configuration. See J19 for details
   * - J30
     - External balun connector (replaces T1/T2). Used with J19/J29/J31 configuration
   * - J31
     - Connects on-board baluns T1/T2 to output (J5). Works with J19/J29 configuration
   * - J32
     - Mechanical support connector for external balun board. All pins grounded
   * - J36
     - Bias current measurement for 30 MHz (HF) PA. Normally shorted
   * - SW1
     - Microcontroller RESET push-button
   * - SW2
     - GPIO direction control switch:
  
       ON (PIN1 side): GPIO → GPIO_LS

       OFF: GPIO_LS → GPIO
   * - CON1
     - Micro USB type B connector
   * - P1
     - 3-pins fan connector for external fan