API Functions
#############

API functions for LimeRFE control are implemented in LimeSuite shared library.
Communication with LimeRFE is possible using USB, or through LimeSDR using I2C.
In the following API functions for control of the LimeRFE board will be detailed.
Definition of all the constants used are given in the file limeRFE.h which is located in <LimeSuite source>/scr/limeRFE/ folder.

Reference
*********

RFE_Open
========

..  code-block:: shell

   rfe_dev_t* RFE_Open(const char* serialport, lms_device_t *dev);

This functions opens LimeRFE device. Connection can be direct via USB or through SDR board.

**Parameters**

:code:`const char* serialport` Serial port name, (e.g. COM3) for control via USB. NULL if LimeRFE is controlled via SDR.

:code:`lms_device_t *dev` LimeSDR device obtained by invoking LMS_Open. May be NULL if direct USB connection is used.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

FE_Close
========

.. code-block:: shell

   void RFE_Close(rfe_dev_t* rfe);

This function closes the device previously opened with RFE_Open.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

**Return value**

None.

RFE_GetInfo
===========

.. code-block:: shell

   int RFE_GetInfo(rfe_dev_t* rfe, unsigned char* cinfo);

This function gets the firmware and hardware version, as well as 2 status bytes (reserved for future use).

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`unsigned char* cinfo` Board info:

* cinfo[0] – Firmware version
* cinfo[1] – Hardware version
* cinfo[2] – Status (reserved for future use)
* cinfo[3] – Status (reserved for future use)

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_LoadConfig
==============

.. code-block:: shell

   int RFE_LoadConfig(rfe_dev_t* rfe, const char *filename);

This function loads LimeRFE configuration from an .ini file, and configures the board accordingly.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`const char *filename`	Full path to .ini configuration file.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_Reset
=========

.. code-block:: shell

   int RFE_Reset(rfe_dev_t* rfe);

Resets the board. All channels are disabled.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_Configure
=============

.. code-block:: shell

   API_EXPORT int CALL_CONV RFE_Configure(rfe_dev_t* rfe, char channelIDRX, char channelIDTX, char portRX, char portTX, char mode, char notch, char attenuation, char enableSWR, char sourceSWR);

This function configures LimeRFE board.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`char channelIDRX`	RX channel to be acitvated (convenience constants defined in limeRFE.h). For example constant RFE_CID_HAM_0145 identifies 2m (144 – 146 MHz) HAM channel.

:code:`char channelIDTX`	TX channel to be acitvated (convenience constants defined in limeRFE.h). For example constant RFE_CID_HAM_0145 identifies 2m (144 – 146 MHz) HAM channel. If -1 then the same channel as for RX is used.

:code:`char portRX`	RX port (convenience constants defined in limeRFE.h).

:code:`char portTX`	TX port (convenience constants defined in limeRFE.h).

:code:`char mode`	Operation mode (defined in limeRFE.h). Not all modes all applicable to all configurations. HAM channels using same port for RX and TX are not allowed RFE_MODE_TXRX mode. Cellular FDD bands 1, 2, 3, and 7 are always in RFE_MODE_TXRX mode. Cellular TDD band 38 can not be in RFE_MODE_TXRX.

:code:`char notch`	Specifies whether the notch filter is applied or not (convenience constants defined in limeRFE.h).

:code:`char attenuation`	Specifies the attenuation in the receive path. Attenuation [dB] = 2 * attenuation.

:code:`char enableSWR`	Enable SWR subsystem. (convenience constants defined in limeRFE.h).

:code:`char sourceSWR`	SWR subsystem source. (convenience constants defined in limeRFE.h).

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_ConfigureState
==================

.. code-block:: shell

   int RFE_ConfigureState(rfe_dev_t* rfe, rfe_boardState state);

This function configures the LimeRFE board. It's functionality is identical to RFE_Configure, with different arguments.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`rfe_boardState`` state	Structure containing configuration parameters.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_Mode
========

.. code-block:: shell

   int RFE_Mode(rfe_dev_t* rfe, int mode);

This function sets the LimeRFE mode (receive, transmit, both, or none).

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int mode`	Operation mode (defined in limeRFE.h). Not all modes all applicable to all configurations. HAM channels using same port for RX and TX are not allowed RFE_MODE_TXRX mode. Cellular FDD bands 1, 2, 3, and 7 are always in RFE_MODE_TXRX mode. Cellular TDD band 38 can not be in RFE_MODE_TXRX.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_ReadADC
===========

.. code-block:: shell

   int RFE_ReadADC(rfe_dev_t* rfe, int adcID, int* value);

This function reads the value of the speficied ADC.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int adcID`	Specifies which ADC is to be read (convenience constants defined in limeRFE.h).

:code:`int* value`	ADC value

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_ConfGPIO
============

.. code-block:: shell

   int RFE_ConfGPIO(rfe_dev_t* rfe, int gpioNum, int direction);

This function configures single GPIO pin. Only pins 4 and 5 are configurable.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int gpioNum`	GPIO pin number. Only pins 4 and 5 are configurable.

:code:`int direction`	GPIO pin direction (convenience constants defined in limeRFE.h). 0 - Output; 1 - Input.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_SetGPIO
===========

.. code-block:: shell

   int RFE_SetGPIO(rfe_dev_t* rfe, int gpioNum, int val);

This function sets the GPIO pin value. GPIO pin should have been previously configured as output using RFE_ConfGPIO function.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int gpioNum`	GPIO pin number. Only pins 4 and 5 are configurable.

:code:`int val`	GPIO pin value.

**Return value**

0 on success, other on failure (see LimeRFE error codes).

RFE_GetGPIO
===========

.. code-block:: shell

   int RFE_GetGPIO(rfe_dev_t* rfe, int gpioNum, int* val);

This function reads the GPIO pin value. GPIO pin should have been previously configured as output using RFE_ConfGPIO function.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int gpioNum`	GPIO pin number. Only pins 4 and 5 are configurable.

:code:`int* val`	GPIO pin value.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_AssignSDRChannels
=====================

.. code-block:: shell

   int RFE_AssignSDRChannels(rfe_dev_t* rfe, int rxChan, int txChan);

Links LimeRFE Rx and Tx to specific SDR boards channels for automatic band selection and RF switching purposes. By default channel 0 is used, so this function is only needed if different channel is going to be used.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int rxChan`	Rx channel index.

:code:`int txChan`	Tx channels index.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

RFE_Fan
=======

.. code-block:: shell

   int RFE_Fan(rfe_dev_t* rfe, int enable);

This function enables/disables the fan.

**Parameters**

:code:`rfe_dev_t* rfe`	Handle previously obtained from invoking RFE_Open.

:code:`int enable`	Fan state: 0 – disable; 1 - enable.

**Return value**

0 on success, other on failure (see error codes in limeRFE.h).

Examples
********

Examples are available in the <LimeSuite source>/scr/examples/ folder.

Examples are:

* limeRFE_I2C_example.cpp – Simple example of configuring LimeRFE using I2C.
* limeRFE_USB_example.cpp – Simple example of configuring LimeRFE using USB
  
In addition one Python example is provided in the same folder:

* limeRFE_Python_example.py – Simple example in Python