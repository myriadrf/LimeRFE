Hardware Setup
##############

Host Interface
**************

There are 2 possible ways to run the LimeRFE board:  

    * Through SDR board − Communication if established through the LimeSDR board using I2C. In this document this type of communication will be denoted SDR.
    * Directly through USB − Direct communication via USB.

Cooling
*******

Fan mounting holes and Fan connectors?

Heatsink parameters?

.. note::
   In the event of errors, instability or reduced performance, check the board temperature to ensure that it is within the specified operating range.

RF Connections
**************

Image of LimeRFE board with highlighted RF connectors

.. figure:: /images/LimeRFE_RF_connectors.png
  :width: 600
  
  Figure 4: LimeRFE board top with RF connector positions

Table listing Highlited RF connectors ID (J?, X? or ...), Channel (Ch1, Ch2 or ...) , type (SMA / U.FL or ...) and Frequency range.

.. note::
   TX and RX bands frequency ranges are determined by matching networks. These bands frequency ranges can be changed by replacing their matching networks components.

.. warning::
   Care should be taken when connecting external RF signals to the RX inputs, to ensure that the maximum safe input power of +10 dBm is not exceeded, as this may cause permanent damage to the device.
