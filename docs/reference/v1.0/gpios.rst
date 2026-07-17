GPIOs
#####

10-pin GPIO interface between SDR and LimeRFE pinouti s given in table 6.

.. list-table:: Table 6. GPIO and I2C connector (J12)
   :header-rows: 1
   :stub-columns: 1

   * - Pin Number
     - Designation on Schematic
     - Comments
   * - 1
     - GPIO0
     - Drives RELAY_0
   * - 2
     - GPIO1
     - Drives RELAY_1
   * - 3
     - GPIO2
     - Drives RELAY_2
   * - 4
     - GPIO3_CONN
     - Via J22 drives RELAY_3
   * - 5
     - GPIO4
     - Connected to PIN 14 of MCU
   * - 6
     - GPIO5
     - Via J22 drives RELAY_3

       Connected to PIN 13 of MCU

       Can directly control PA enable for Cell band 38.
   * - 7
     - SCL
     - I2C bus
   * - 8
     - SDA
     - I2C bus
   * - 9
     - GND
     - Ground
   * - 10
     - VDD_CON
     - Referent voltage for GPIOx and I2C signals

Level shifted (VDDA) GPIOs and ADC header pinout is given in table 7.

.. list-table:: Table 7. GPIO_LS and ADC connector (J13)
   :header-rows: 1
   :stub-columns: 1

   * - Pin Numbers
     - Designation on Schematic
     - Comments
   * - 1
     - GPIO0_LS
     - Connected to GPIO, level shifted to VDDA
   * - 2
     - GPIO2_LS
     - Connected to GPI2, level shifted to VDDA
   * - 3
     - ADC1
     - Via J6 connected to internal MCU ADC
   * - 4
     - GND
     - Ground
   * - 5
     - VDDA
     - Referent voltage for GPIOx_LS signals
   * - 6
     - ADC2
     - Via J7 connected to internal MCU ADC
   * - 7
     - GPIO3_LS
     - Connected to GPI3, level shifted to VDDA
   * - 8
     - GPIO1_LS
     - Connected to GPI1, level shifted to VDDA

External relays connector (J16) pinout is given in table 8.

.. list-table:: Table 8. External relays connector (J16)
   :header-rows: 1
   :stub-columns: 1

   * - Pin Numbers
     - Designation on Schematic
     - Comments
   * - 1
     - RELAY_3
     - Drives relay 3
   * - 2
     - VCOM
     - Referent voltage, from connector J15
   * - 3
     - RELAY_2
     - Drives relay 2
   * - 4
     - VCOM
     - Referent voltage, from connector J15
   * - 5
     - RELAY_1
     - Drives relay 1
   * - 6
     - VCOM
     - Referent voltage, from connector J15
   * - 7
     - RELAY_0
     - Drives relay 0
   * - 8
     - VCOM
     - Referent voltage, from connector J15

