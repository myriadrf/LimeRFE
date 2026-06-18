Introduction
############

.. toctree::
   :maxdepth: 3
   :hidden:
   
   Introduction <self>
   user/index
   reference/index
   developer/index
   advanced/index

.. figure:: images/LimeRFE_v1.0_3D.png
   :alt: LimeSDR XTRX v1.0 board
   :align: center
   :width: 600

Lime RF Front-End (LimeRFE) is an open hardware RF front-end module with support circuitry to augment the LimeSDR family of boards and LimeNET Micro, providing a complete solution that addresses applications ranging from amateur radio to standards-compliant cellular networks.

A single LimeRFE covers three very different sets of bands: cellular, amateur radio and wideband. The exact band used at any given time is software selectable. By making the RF front-end definable in software, LimeRFE is the next step in the evolution of software-defined radio.

LimeRFE provides not only transmit and receive amplification, but also band-specific filtering and integrates duplexers for cellular band FDD operation. In addition to which it provides power and VSWR (requires external directional coupler) metering, and configuration is possible via either USB or direct connection to a LimeSDR board.

Specifications
**************

RX
==
.. table:: Maximum input signals for RX
      
   +------------------+-------------------------+------------------------------------+------------------------------------+-------------+
   | **Channel**      | **Channel Description** | | **RF Input Power [dBm]**         | | **RF Input Power [dBm]**         | **Comment** |
   |                  |                         | | **LimeRFE 1v0**                  | | **LimeRFE 1v31**                 |             |
   +==================+=========================+====================================+====================================+=============+
   | HAM 30           | HF                      | 10                                 | 10                                 |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 50 and 70    | 6 and 4 m               |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 145          | 2 m                     |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 220          | 1.25 m                  |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 435          | 70 cm                   |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | Wideband 1000    | 1 – 1000 MHz            |                                    |                                    |             |
   +------------------+-------------------------+------------------------------------+------------------------------------+-------------+
   | HAM 915          | 33 cm                   | 20                                 | 20                                 |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 1280         | 23 cm                   |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 2400         | 13 cm                   |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | HAM 3500         | /                       |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | Wideband 4000    | 1 – 4 GHz               |                                    |                                    |             |
   +------------------+-------------------------+------------------------------------+------------------------------------+-------------+
   | Cellular Band 1  | LTE Band 1              | 20                                 | 20                                 |             |
   +------------------+-------------------------+                                    |                                    |             |
   | Cellular Band 2  | LTE Band 2/ PCS-1900    |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | Cellular Band 3  | LTE Band 3/ DCS-1800    |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | Cellular Band 7  | LTE Band 7              |                                    |                                    |             |
   +------------------+-------------------------+                                    |                                    |             |
   | Cellular Band 38 | LTE Band 38             |                                    |                                    |             |
   +------------------+-------------------------+------------------------------------+------------------------------------+-------------+

.. note::
   The received signal will be amplified at the connector SDR RX (J1), care must be taken about that the maximum input RF power of the SDR connected is not exceeded.

TX
==

.. table:: Maximum input signals for TX

   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | **Channel**      | **Channel Description** | | **RF Input Power [dBm]**       | | **RF Input Power [dBm]**         | **Comment** |
   |                  |                         | | **LimeRFE 1v0**                | | **LimeRFE 1v31**                 |             |
   +==================+=========================+==================================+====================================+=============+
   | HAM 30           | HF                      | 13                               | 13                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | HAM 50 and 70    | 6 and 4 m               | 13                               | 13                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | HAM 145          | 2 m                     | 15                               | 15                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | HAM 435          | 70 cm                   | 13                               | 13                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Wideband 1000    | 1 – 1000 MHz            | 0                                | 0                                  |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | HAM 1280         | 23 cm                   | 5                                | 5                                  |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | HAM 2400         | 13 cm                   | 10                               | -10                                |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | HAM 3500         | 9 cm                    | 5                                | -10                                |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Wideband 4000    | 1 – 4 GHz               | 5                                | 5                                  |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Cellular Band 1  | LTE Band 1              | 10                               | 10                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Cellular Band 2  | LTE Band 2/             | 10                               | 10                                 |             |
   |                  | PCS-1900                |                                  |                                    |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Cellular Band 3  | LTE Band 3/             | 10                               | 10                                 |             |
   |                  | DCS-1800                |                                  |                                    |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Cellular Band 7  | LTE Band 7              | 10                               | 10                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+
   | Cellular Band 38 | LTE Band 38             | 10                               | 10                                 |             |
   +------------------+-------------------------+----------------------------------+------------------------------------+-------------+

Digital Interface
=================

I2C, USB 2.0

Power Supply
============

.. list-table::
   :header-rows: 1
   
   * - Connector
     - Description
     - Max. recommended value
   * - J9
     - External 12 V connection – GND (PINs 1, 3), 12 V (PIN 2)
     - 14 V
   * - J10
     - External 5 V connection – GND (PINs 1, 3), 5 V (PIN 2)
     - 5.5 V
   * - J11
     - 5 V source selection:
       
       5 V is obtained from DC-DC connector supplied from external 12 V (PIN connection 1-2, jumper position – right);
       
       5 V is obtained from USB (PIN connection 3-4, jumper position – center);
       
       5 V is obtained from external 5 V supply unit (PIN connection 5-6, jumper position – left).
     - 
   * - J23
     - External 12 V connection
     - 14 V

Environmental
=============


.. list-table:: 
   :header-rows: 1
   :stub-columns: 1

   * - Parameter
     - Value
     - Notes
   * - Operating Temperature
     - -20 °C to +70 °C
     - Commercial-grade
   * - Storage Temperature
     - -40 °C to +85 °C
     - N/A
   * - Operating Humidity
     - 10% to 90% RH  
     - Non-condensing


Mechanical
==========

Board size 125.12mm x 162.51mm and weight 260g

Features
********

* Wideband RF front-end for SDR applications
* Supports amateur radio and cellular frequency bands
* Integrated RF switching, filtering, and amplification
* TX/RX switching with configurable signal routing
* Integrated PA and LNA control
* Compatible with LimeSDR platforms
* Compact RF front-end expansion board
* Optimized for SDR, HAM radio, LTE, and experimental RF applications
* Various LEDs used as indicators of successful communication, DC voltage status or GPIO signal value.

Devices
=======

* Front end module	Complete transceiver 1.6 – 4000 MHz
* Dedicated Cellular, LTE transceiver	Dedicated transceiver for LTE bands 1, 2, 3, 7 and 38
* ATMEGA328P-AU	Microcontroller
* FT232RL	USB controller
* External fan	Allows use of the external fan, which can cool-down external PA connected to the LimeRFE
* Integrated SWR meter 	Measures reflected and forward wave on connectors J17 and J18, respectivelly. 
* Measures forward coupled wave on output of the Cellular transmitters.
* GPIO subcircuit	Controls external devices, allows external devices to control transceiver.
* DCDC convertors	With 12V input supplies they provide all internal voltages and additionally +5V for external devices.
* Ferrite core output matching network	For HAM30 / HAM70 transmitter, allows bypassing on-board output matching network and using external ferrite core matching network 

Connections
===========

* J1	RF	RX output
* J2	RF	TX input
* J3	RF	TX/TX in/out
* J4	RF	TX output
* J5	RF	TX/TX in/out for low frequency (HAM30 and HAM70)
* J17	RF	Reflected wave
* J18	RF	Forward wave
* P1	Mechanical	For external fan
* J9, J23	Power	12V DC input
* J10	Power	5V DC input
* J33	Power	5V DC output
* J11	Power	5V selector
* CON1	Digital – USB 	USB connector for MCU
* J12	Digital – GPIO	GPIO and I2C 
* J22	Digital – GPIO	GPIO selector
* J13	Digital – GPIO	Level shifted GPIO
* J22	Digital – GPIO	GPIO source selector
* J14	Digital – Power 	Connects VDD_CON and VDDA if they are the same
* J15	Digital – Power	Provides VCOM, referent voltage for relay signals
* J16	Digital – Relay 	Output signals for relays 
* J6, J7	Digital – ADC 	Selectors for ADC source, either directly to MCU or from J12 or J13 connectors
* J8	Digital - ICSP	Connected to MCU


Purchasing
**********

Please see the  `Lime Micro website`_ for purchasing options.

Regulatory
**********

RoHS
====

This product is RoHS compliant and does not contain hazardous substances as defined by Directive 2011/65/EU.

WEEE
====

This product must be disposed of properly according to local regulations. Do not dispose of with general household waste.

RF Transmission Notice
======================

.. warning::
   Operating RF transmitting equipment may require appropriate licensing. Users are responsible for ensuring compliance with local regulations. Unauthorised transmission may result in legal penalties.


.. _Lime Micro Website: https://limemicro.com/sdr/limerfe/
