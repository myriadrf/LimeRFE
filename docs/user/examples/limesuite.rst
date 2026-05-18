Lime Suite
##########

HAM 144-146 MHz (2 m)
*********************

1. Before any connection terminate connectors J1, J3 and J5 with 50 Ohm terminations.
2. Connect signal generator to J2 connector. It is recommended to use attenuators between signal generator and connector J2. For all our tests we used 6 dB / 2 W attenuators. Also for initial test set power level below –30 dBm. For our test we used –40 dBm of input power. Do not turn on power, yet. 
3. Connect connector J4 to spectral analyzer. It is highly recommended to use high power high level attenuators between J4 and spectral analyzer in order to protect spectral analyzer from damages. For all our tests we used 40 dB / 50 W attenuators.
4. Connect your PC to LimeRFE board through USB cable.
5. Place jumper at position – right at J11 (with jumper, connect pins 1 and 2 of the connector J11).
6. Connect external 12 V DC power supply to J9 or to J23 and turn on 12 V DC voltage.
7. Open LimeSuiteGUI software.
8. Go to Modules/LimeRFE to open LimeRFE control window.
9. Change communication from SDR (I2C) to USB (in Communication panel).
10. Refresh available COM port by clicking Refresh button in USB panel.
11. Open port by clicking Open Port button in USB panel. After this a message in Masage Display panel will be printed and after this the LimeRFE board is connected to the PC.
12. In Configure panel in Type sub-panel select HAM.
13. In Channel/Band sub-panel select 144 – 146 MHz (2 m) band. 
14. In TX port sub-panel select TX (J4).
15. Afer this selection press Configure button.
16. After configuration, in Mode sub-panel two buttons will appear. These two buttons (TX and RX) will turn on and turn off transmitter and receiver independently. Turn on TX mode and turn off RX mode.
17. In signal generator turn on the power and amplified signal should appear at the spectral analyzer. The expected gain is of about 33 dB.

