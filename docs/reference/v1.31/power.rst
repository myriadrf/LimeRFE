Power Supply
############

Supply option is chosen by properly configuring and connecting connectors J9, J10, J11, J23 and CON1 (this is micro USB type B connector). All of these connectors except CON1 are placed in top layer, in the lower-right part of the LimeRFE board, shown in Figure 4. CON1 connector is in bottom layer, in the upper-right part of the LimeRFE board.

.. figure:: /images/LimeRFE_v1.31_pwrcon.png
  :width: 600

  Figure 9. LimeRFE v1.0 board power supply connectors

There are three ways of providing 5 V supply to the board. It is possible to select one of these ways by placing a jumper at connector J11, Table 4.

.. list-table:: Table 4. Power supply options with connector J11
   :header-rows: 1

   * - Jumper position
     - Selected option
     - Comments
   * - Left (Pins 5-6)
     - External 5 V power supply
     - 5 V is obtained from J10
   * - Centre (Pins 3-4)
     - Internal 5 V from USB
     - 5 V is obtained from USB cable
   * - Right (Pins 1-2)
     - 5 V from external 12 V power supply
     - 5 V is obtained from DC – DC convertor which is 
      
       supplied from 12 V. 12 V is obtained from J9 or J23

Preferred configuration of J11 connector is at jumper position – right (Pins 1-2), where 5V is obtained from the 12 V power supply. In this configuration either J9 or J23 are connected to external 12 V power supply. 

.. warning::
  A 12 V input is required to achieve full transmitter functionality