PA Biasing
##########

All LimeRFE boards arrive in already preset power amplifier bias currents. Some deviation in bias currents might be possible due to different ambient temperature, some minor changes during the transport, etc.

However, it is possible to change bias current of four power amplifiers on LimeRFE board. The user must pay attention for any further change of these values and do it on his/her own responsibility. The list of these amplifiers with their default bias currents is given in Table 8.

.. list-table:: Default power amplifier bias currents which can be changed
   :header-rows: 1

   * - Channel/Band
     - Bias current
     - Jumper
     - Trimmer
   * - 30 MHz (HF) and 50 – 70 MHz (6 & 4 m)
     - 500 mA
     - J36 *
     - R343
   * - 144 – 146 MHz (2 m)
     - 200 mA
     - J24
     - R161
   * - 220 – 225 MHz (1.25 m)
     - 200 mA
     - J25
     - R218
   * - 430 – 440 MHz (70 cm)
     - 200 mA
     - J26
     - R226
   * - 902 – 928 MHz (33 cm)
     - 100 mA
     - J27
     - R253
   * - 1240 – 1325 MHz (23 cm)
     - 40 mA
     - J20
     - R176

`*` Jumpers on connectors J29, J31 and J19 (J32 and J30) must be properly placed (for detail description about all these jumpers look at in Table 5)

Figure 5 shows possitions of all connectors and trimmers necessary to change power amplifier bias currents.

.. figure:: /images/LimeRFE_v1.0_jumpersandtrimers.png
  :width: 300

  Figure 5: Positions of all necessary connectors and trimmers for bias currents changes

HAM 30 MHz (HF) and 50-70 MHz (6 & 4m)
**************************************

1. Choose external DC power supply of 12 V and 5 V from on board DC-DC convertor by connecting pin 1 and pin 2 of connector J11 on the board (jumper position – right). Connect external DC supply unit to J9, but do not turn on 12 V from DC supply unit.
2. Terminate J1, J2, J3 and J4 SMA connectors with 50 Ohm terminations
3. J5 SMA connector (30 MHz out) connect to termination or high attenuation (> 10 dB) capable to endure  10 W of RF power (in our setup we used 40 dB / 10 W attenuator)
4. Connect USB cable from computer to the LimeRFE board
5. Before external DC supply is turned on, turn around all of trimmers, which are not already set, in counter clockwise directions (R161, R176, R218, R226, R253, R343).
6. Connect J36 connector pins through ammeter (set 10 A range in ammeter)
7. Also, jumpers on connectors J29, J31 and J19 (J32 and J30) must be properly placed (for all these jumpers look at Table 5 for more detail description)
8. Turn on 12 V from external DC supply unit (setup maximum current of 800 mA in external DC supply unit if desired bias current is 500 mA)
9. In software, setup the board for HAM, 30 MHz (HF) band.
10. Turn off Receiver/Turn on Transmitter mode.
11. Turn around trimmer R343 in clockwise direction until ammeter shows 0.5 A

HAM 144-146 MHz (2 m)
*********************

1. Choose external DC power supply of 12 V and 5 V from on board DC-DC convertor by connecting pin 1 and pin 2 of connector J11 on the board  (jumper position – right). Connect external DC supply unit to J9, but do not turn on 12 V from DC supply unit.
2. Terminate J1, J2, J3 and J5 SMA connectors with 50 Ohm terminations
3. J4 SMA connector connect to termination or high attenuation (> 10 dB) capable to endure 5 W of RF power (in our setup we used 40 dB / 50 W attenuator)
4. Connect USB cable from computer to the LimeRFE board
5. Before external DC supply is turned on, turn around all of trimmers, which are not already set, in counter clockwise directions (R161, R176, R218, R226, R253, R343) 
6. Connect J24 connector pins through ammeter (set 10 A range in ammeter)
7. Turn on 12 V from external DC supply unit (setup maximum current of 400 mA in external DC supply unit if desired bias current is 200 mA)
8. In software, setup the board for HAM, 144 – 146 MHz (2 m) band, with TX (J4).
9. Turn off Receiver and Turn on Transmitter
10. Turn around trimmer R161 in clockwise direction until ammeter shows 0.2 A

HAM 220-225 MHz (1.25 m)
************************

1. Choose external DC power supply of 12 V and 5 V from on board DC-DC convertor by connecting pin 1 and pin 2 of connector J11 on the board  (jumper position – right). Connect external DC supply unit to J9, but do not turn on 12 V from DC supply unit.
2. Terminate J1, J2, J3 and J5 SMA connectors with 50 Ohm terminations
3. J4 SMA connector connect to termination or high attenuation (> 10 dB) capable to endure 5 W of RF power (in our setup we used 40 dB / 50 W attenuator)
4. Connect USB cable from computer to the LimeRFE board
5. Before external DC supply is turned on, turn around all of trimmers, which are not already set, in counter clockwise directions (R161, R176, R218, R226, R253, R343) 
6. Connect J25 connector pins through ammeter (set 10 A range in ammeter)
7. Turn on 12 V from external DC supply unit (setup maximum current of 400 mA in external DC supply unit if desired bias current is 200 mA)
8. In software, setup the board for HAM, 220 – 225 MHz (1.25 m) band, with TX Connector (J4).
9. Turn off Receiver and Turn on Transmitter
10. Turn around trimmer R218 in clockwise direction until ammeter shows 0.2 A

HAM 430-440 MHz (70 cm)
***********************

1. Choose external DC power supply of 12 V and 5 V from on board DC-DC convertor by connecting pin 1 and pin 2 of connector J11 on the board (jumper position – right). Connect external DC supply unit to J9, but do not turn on 12 V from DC supply unit.
2. Terminate J1, J2, J3 and J5 SMA connectors with 50 Ohm terminations.
3. J4 SMA connector connect to termination or high attenuation (> 10 dB) capable to endure 5 W of RF power (in our setup we used 40 dB / 50 W attenuator).
4. Connect USB cable from computer to the LimeRFE board.
5. Before external DC supply is turned on, turn around all of trimmers, which are not already set, in counter clockwise directions (R161, R176, R218, R226, R253, R343).
6. Connect J26 connector pins through ammeter (set 10 A range in ammeter).
7. Turn on 12 V from external DC supply unit (setup maximum current of 400 mA in external DC supply unit if desired bias current is 200mA).
8. In software, setup the board for HAM, 430 – 440 MHz (70 cm) band, with TX Connector (J4).
9. Turn off Receiver and Turn on Transmitter.
10. Turn around trimmer R226 in clockwise direction until ammeter shows 0.2 A.
  
HAM 902-928 MHz (33 cm)
***********************

1. Choose external DC power supply of 12 V and 5 V from on board DC-DC convertor by connecting pin 1 and pin 2 of connector J11 on the board (jumper position – right). Connect external DC supply unit to J9, but do not turn on 12 V from DC supply unit.
2. Terminate J1, J2, J3 and J5 SMA connectors with 50 Ohm terminations.
3. J4 SMA connector connect to termination or high attenuation (> 10 dB) capable to endure 5 W of RF power (in our setup we used 40 dB / 50 W attenuator).
4. Connect USB cable from computer to the LimeRFE board.
5. Before external DC supply is turned on, turn around all of trimmers, which are not already set, in counter clockwise directions (R161, R176, R218, R226, R253, R343).
6. Connect J27 connector pins through ammeter (set 10 A range in ammeter).
7. Turn on 12 V from external DC supply unit (setup maximum current of 300 mA in external DC supply unit if desired bias current is 100mA).
8. In software, setup the board for HAM, 902 – 928 MHz (33 cm) band, with TX Connector (J4).
9. Turn off Receiver and Turn on Transmitter.
10. Turn around trimmer R253 in clockwise direction until ammeter shows 0.1 A. 
  
HAM 1240-1325 MHz (23 cm)
*************************

1. Choose external DC power supply of 12 V and 5 V from on board DC-DC convertor by connecting pin 1 and pin 2 of connector J11 on the board (jumper position – right). Connect external DC supply unit to J9, but do not turn on 12 V from DC supply unit.
2. Terminate J1, J2, J3 and J5 SMA connectors with 50 Ohm terminations.
3. J4 SMA connector connect to termination or high attenuation (> 10 dB) capable to endure 5 W of RF power (in our setup we used 40 dB / 50 W attenuator).
4. Connect USB cable from computer to the LimeRFE board.
5. Before external DC supply is turned on, turn around all of trimmers, which are not already set, in counter clockwise directions (R161, R176, R218, R226, R253, R343).
6. Connect J20 connector pins through ammeter (set 200 mA range in ammeter).
7. Turn on 12 V from external DC supply unit (setup maximum current of 300 mA in external DC power unit if desired bias current is 40 mA).
8. In software, setup the board for HAM, 1240 – 1325 MHz (23 cm) band, with TX Connector (J4).
9. Turn off Receiver and Turn on Transmitter.
10. Turn around trimmer R176 in clockwise direction until ammeter shows 40 mA.
