Software
########

Installing
**********

LimeRFE is supported by the :external+suite:ref:`Classic Lime Suite software <index:introduction>`, which provides drivers, command line utilities, plug-ins for popular ecosystem applications, and a graphical user interface (GUI) application for advanced engineering/debugging tasks.

.. warning::
   LimeRFE is not supported by LimeSuite NG

For a guide to getting up and running with Lime Suite, please refer to the :external+quickstart:ref:`SDR Quick Start <index:introduction>`.

Basic Setup
***********

1. Open Lime Suite GUI and then go to Modules/LimeRFE, Figure 6. 

.. figure:: /images/LimeRFE_v1.0_suitegui.jpg
  :width: 600

  Figure 6: Lime Suite GUI window

2. LimeRFE Controls window should appear, Figure 7. This window consists of several panels: Communication, Configuration, Synchronize, RX Channel, TX Channel, Mode, SWR (to display this pannel go to View/Power Meter) and Message Display panel.

.. figure:: /images/LimeRFE_v1.0_suitectrl.jpg
  :width: 300

  Figure 7: LimeRFE Controls window (To display SWR pannel go to View/Power Meter)

3. In Communication panels, chose one of two possible options, SDR (this is standard I2C communication) or USB. 
   Keep in mind that for SDR (I2C) communication, an additional LimeSDR board must be connected. For SDR (I2C), a default LimeRFE board address is 0x51. If any other device on SDR (I2C) bus has the same address one of these two devices should change its address. LimeRFE address can be changed in its firmware. After connection the board on I2C bus, button Open Port enables communication. Button Close Port terminates SDR (I2C) communication.
   For  USB communication an appropriate COM port should be chosen. In USB panel, by clicking Refresh button, LimeRFE Controls software will automatically display available COM ports. Also, all available COM ports (under Windows OS) can be checked in the Windows Device Manager tool.

4. From a drop menu select appropriate COM port and click Open Port button to open communication between the LimeRFE board and PC. Text message in Message Display panel will be shown after a successful port opening. 
5. In Configuration panel, current configuration can be saved into the `*`.ini file (Save button) and previously saved configuration can be loaded from the `*`.ini file (Open button).
6. In Synchronize panel, any current configuration can be changed to default, by clicking Reset button. Button Board→GUI is used to sinhronize Lime RFE Controls  software parameters with current board configuration.
7. In RX Channel panel, in Type sub-panel there are three different options (in Figure 7 an option “Wideband” is shown) . 
   
   Depending of selected type, different Channel/Band options will appear (in Figure 7 an option “1 – 1000 MHz” is shown). 

   The third sub-panel shows selected input port for receiver mode (in Figure 7 an option “TX/RX (J3)” is shown). RX signal get out from the board at connector J1.

   All possible states are given in Table 3 bellow. 

   In the same panel, from Attenuation drop menu, attenuation level can be changed for signal in receive mode. Given attenuation values are: 0, 2, 4, 6, 8, 10, 12 and 14 dB (in Figure 7, 0 dB is selected attenuation level).

   In the same panel, AM/FM Notch filter can be enabled or bypassed in check in box. (in Figure 7 this AM/FM Notch filter has been bypassed, box is not checked). 

   Keep in mind that after choosing one of options, button Configure must be pressed to apply all changes in configuration.
8. In TX Channel panel, in Type sub-panel there are three different options (in Figure 7 an option “HAM” is shown). 

   Depending of selected type, different Channel/Band options will appear (in Figure 7 an option “1240 – 1325 MHz” is shown). 

   The third sub-panel shows selected input port for receiver mode (in Figure 7 an option “TX (J4)” is shown). TX signal get in into the board at connector J2.

   All possible states are given in Table 3, bellow. 

   In the same panel, check in box same as RX can be checked. If it is checked than Type and Channel/Band options will be the same as it was chosen in RX menu, but TX must be selected manually.

   Keep in mind that after choosing one of options, button Configure must be pressed to apply all changes in configuration.
9. In Mode panel the board can be configured to operates in RX or TX mode, but for some bands it can be in both modes at the same time or both modes turned off at the same time. All possible states are given in table bellow.

.. table:: Table 3. All possible states of the LimeSDR board (Type, Band/Channel, Rx and Tx connectors, Modes)

   +----------+------------------+-------------------------+-------------------------+---------------------+
   | **Type** | **Channel/Band** | **RX Port**             | **TX port**             | **Mode**            |
   +==========+==================+=========================+=========================+=====================+
   | Wideband | 1 – 1000 MHz     | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          |                  +-------------------------+-------------------------+---------------------+
   |          |                  | TX to 30 MHz TX/RX (J5) | TX/RX (J3)              | None, RX, TX, RX&TX |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 1000 – 4000 MHz  | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   +----------+------------------+-------------------------+-------------------------+---------------------+
   | HAM      | 30 MHz (HF)      | TX/RX (J3)              | TX to 30 MHz TX/RX (J5) | None, RX, TX, RX&TX |
   |          |                  +-------------------------+                         +---------------------+
   |          |                  | TX to 30 MHz TX/RX (J5) |                         | None, RX, TX        |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 50 – 70 MHz      | TX/RX (J3)              | TX to 30 MHz TX/RX (J5) | None, RX, TX, RX&TX |
   |          |                  +-------------------------+                         +---------------------+
   |          | (6 & 4m)         | TX to 30 MHz TX/RX (J5) |                         | None, RX, TX        |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 144 – 146 MHz    | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          | (2m)             |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          |                  +-------------------------+-------------------------+---------------------+
   |          |                  | TX to 30 MHz TX/RX (J5) | TX/RX (J3)              | None, RX, TX, RX&TX |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 220 – 225 MHz    | TX to 30 MHz TX/RX (J5) | TX/RX (J3)              | None, RX, TX, RX&TX |
   |          |                  |                         +-------------------------+---------------------+
   |          | (1.25m)          |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          |                  +-------------------------+-------------------------+---------------------+
   |          |                  | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 430 – 440 MHz    | TX to 30 MHz TX/RX (J5) | TX/RX (J3)              | None, RX, TX, RX&TX |
   |          |                  |                         +-------------------------+---------------------+
   |          | (70cm)           |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          |                  +-------------------------+-------------------------+---------------------+
   |          |                  | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 902 – 928 MHz    | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          | (33cm)           |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 1240 – 1325 MHz  | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          | (23cm)           |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 2300 – 2450 MHz  | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          | (13cm)           |                         | TX (J4)                 | None, RX, TX, RX&TX |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | 3300 – 3500 MHz  | TX/RX (J3)              | TX/RX (J3)              | None, RX, TX        |
   |          |                  |                         +-------------------------+---------------------+
   |          |                  |                         | TX (J4)                 | None, RX, TX, RX&TX |
   +----------+------------------+-------------------------+-------------------------+---------------------+
   | Cellular | Band 1           | TX/RX (J3)              | TX/RX (J3)              | RX&TX               |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | Band 2/          | TX/RX (J3)              | TX/RX (J3)              | RX&TX               |
   |          |                  |                         |                         |                     |
   |          | PCS – 1900       |                         |                         |                     |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | Band3/           | TX/RX (J3)              | TX/RX (J3)              | RX&TX               |
   |          |                  |                         |                         |                     |
   |          | DCS – 1800       |                         |                         |                     |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | Band 7           | TX/RX (J3)              | TX/RX (J3)              | RX&TX               |
   |          +------------------+-------------------------+-------------------------+---------------------+
   |          | Band 38          | TX/RX (J3)              | TX/RX (J3)              | RX, TX              |
   +----------+------------------+-------------------------+-------------------------+---------------------+

10. When the LimeRFE Controls GUI is opened, its default view doesn’t show SWR panel. To display SWR panel go to View/Power Meter. 
      
    In its basic configuration, SWR panel gives signal powers measured at SMA connectors J17 and J18. Source sub-panel gives two options. Cellular option enables ability to measure forward power at the output of currently active power amplifier, from cellular block of the board. In External option, RF output of LimeRFE board (conectors J3, J4 or J5) can be connected to antenna or other amplifier device through a directional coupler. Forward and reverse ports of the directional coupler are connected back to LimeSDR board to connectors J18 (forward) and J17 (reverse), where RF powers are measured and displayed in the Power Meter panel.

    It is possible to correct the values by a constant coefficient, by performing calibration. Namely, if the exact value for the power and/or reflection coefficient (gamma) is known, it can be entered in the fields Calibration Power and Calibration Gamma. By clicking Calibrate button, coefficients are calculated, and will be used in subsequent calculations. These coefficients are included in the configuration file, and can be saved/loaded.
11. Message Display panel prints all important information related to the communication with the LimeRFE board (displays info massages if port is opened, closed, if the board is configured for specific band, if there was an error in communication…)
    
.. figure:: /images/LimeRFE_v1.0_withcalibration.png
  :width: 300

  Figure 8: LimeRFE Controls window with opened SWR pannel and enabled SWR

.. note::
   It is important to keep the impedance controlled on all output connectors (J3, J4, and J5, see the next Section for detailed description of the connectors). In the very unlikely situations that the impedance on those ports is very reflective, the power amplifier oscillations might occur, which may damage the board. Hence, it is recommended to connect  50 Ω matched loads/sources, and to terminate the unused ports with 50 Ω terminations.
