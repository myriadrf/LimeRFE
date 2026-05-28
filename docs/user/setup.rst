Hardware Setup
##############

Host Interface
**************

There are 2 possible ways to run the LimeRFE board:  

    * Through SDR board − Communication if established through the LimeSDR board using I2C. In this document this type of communication will be denoted SDR.
    * Directly through USB − Direct communication via USB.

Cooling
*******

The LimeRFE board ships with a pre-installed heatsink. Under normal ambient temperature conditions, passive cooling is sufficient to maintain stable and reliable board operation.

Default heatsink part number is 567-558-75AB:

  * Mounting Style:Screw.
  * Heat sink Material:Aluminum.
  * Fin Style:Rectangular Fin.
  * Thermal Resistance:1.8 C/W.
  * Power Dissipation @ Temperature Rise 12.0W @ 40°C.
  * Length:61 mm.
  * Width:116.8 mm.
  * Height:19.1 mm.

In environments with high ambient temperatures, an external 5V fan can be connected to the P1 connector to provide additional cooling.

.. note::
   In the event of errors, instability or reduced performance, check the board temperature to ensure that it is within the specified operating range.

RF Connections
**************

.. figure:: /images/LimeRFE_RF_connectors.png
  :width: 600
  
  Figure 3: LimeRFE board top with RF connector positions

.. list-table:: Table 1. RF Connectors
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
     - RF output – in TX mode, for all frequency bands except 30 MHz (HF) band, 50–70 MHz (6 & 4 m) band, 
      
       and all Cellular bands (Band 1, 2, 3, 7 and 38)
   * - J5
     - RF input – in RX mode, for 30 MHz (HF), 50–70 MHz (6 & 4 m),
       144–146 MHz (2 m), 220–225 MHz (1.25 m) and 430–440 MHz (70 cm) bands
       
       RF output – in TX mode, only for 30 MHz (HF) and 50–70 MHz (6 & 4 m) bands
   * - J17
     - Reverse power RF input (for SWR operation)
   * - J18
     - Forward power RF input (for SWR operation)
   * - J30
     - Connects external ferrite bead output matching circuit for 30 MHz and 70 MHz band transmitter.
   * - J32
     - Connects external ferrite bead output matching circuit for 30 MHz and 70 MHz band transmitter.

.. warning::
   Care should be taken when connecting external RF signals to the RX inputs, to ensure that the maximum safe input power of +10 dBm is not exceeded, as this may cause permanent damage to the device.
