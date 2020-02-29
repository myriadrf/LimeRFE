EESchema Schematic File Version 2
LIBS:Lime_HAM_Z
LIBS:LimeMicroBGD_Library
LIBS:Cellular_Subsystem_Library
LIBS:LimeMicroBGD_Library_bb
LIBS:LMS8001_AppPCB-cache
LIBS:LMS8001_PowerSupply-cache
LIBS:ADM7155_Addon-cache
LIBS:LMS8001_DigitalPCB-cache
LIBS:SWR_Meter_Subsystem_library
LIBS:GPIO_Subsystem-cache
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:FilterLib
LIBS:BB_Library
LIBS:Lime_RFE-rescue
LIBS:Lime_RFE-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 36 44
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4625 3575 0    60   Input ~ 0
IN
Text HLabel 7400 3575 2    60   Output ~ 0
OUT
$Comp
L 0R_0603 R246
U 1 1 5D22D7BF
P 6975 3575
F 0 "R246" H 6965 3645 50  0000 C CNN
F 1 "0R_0603" H 6950 3750 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0603" H 6925 3825 60  0001 C CNN
F 3 "" V 6975 3575 60  0000 C CNN
F 4 "Digi-Key" H 6975 4235 60  0001 C CNN "Vendor"
F 5 "541-2779-1-ND" H 6995 4305 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay_Dale" H 6985 4145 60  0001 C CNN "Manufacturer"
F 7 "RCS06030000Z0EA" H 6995 4015 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES SMD 0 OHM JUMPER 1/4W 0603" H 6975 3915 60  0001 C CNN "Description"
F 9 "0R" H 6975 3565 50  0000 C CNN "Component Value"
	1    6975 3575
	1    0    0    -1  
$EndComp
$Comp
L 0R_0603 R245
U 1 1 5D22D7C2
P 5100 3575
F 0 "R245" H 5090 3645 50  0000 C CNN
F 1 "0R_0603" H 5075 3750 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0603" H 5050 3825 60  0001 C CNN
F 3 "" V 5100 3575 60  0000 C CNN
F 4 "Digi-Key" H 5100 4235 60  0001 C CNN "Vendor"
F 5 "541-2779-1-ND" H 5120 4305 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay_Dale" H 5110 4145 60  0001 C CNN "Manufacturer"
F 7 "RCS06030000Z0EA" H 5120 4015 60  0001 C CNN "Manufacturer Part Number"
F 8 "RES SMD 0 OHM JUMPER 1/4W 0603" H 5100 3915 60  0001 C CNN "Description"
F 9 "0R" H 5100 3565 50  0000 C CNN "Component Value"
	1    5100 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3575 4625 3575
Wire Wire Line
	7225 3575 7400 3575
$Comp
L LFCN-1450+ U84
U 1 1 5CB1FE0C
P 6075 3775
F 0 "U84" V 5675 3775 60  0000 C CNN
F 1 "LFCN-1450+" H 6075 4475 60  0001 C CNN
F 2 "LFCN-1450+" H 6075 4575 60  0001 C CNN
F 3 "" H 6025 4275 60  0000 C CNN
F 4 "Mini-Circuits" H 6075 4975 60  0001 C CNN "Vendor"
F 5 "LFCN-1450+" H 6075 5075 60  0001 C CNN "Vendor Part Number"
F 6 "Mini-Circuits" H 6075 4875 60  0001 C CNN "Manufacturer"
F 7 "LFCN-1450+" H 6075 4775 60  0001 C CNN "Manufacturer Part Number"
F 8 "LTCC Low Pass Filter, DC -1450 MHz" H 6075 4675 60  0001 C CNN "Description"
F 9 "LFCN-1450+" V 6475 3800 60  0000 C CNN "Component Value"
	1    6075 3775
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0738
U 1 1 5CB1FF86
P 5425 3975
F 0 "#PWR0738" H 5425 3975 30  0001 C CNN
F 1 "GND" H 5425 3905 30  0001 C CNN
F 2 "" H 5425 3975 60  0001 C CNN
F 3 "" H 5425 3975 60  0001 C CNN
	1    5425 3975
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0739
U 1 1 5CB1FFA0
P 6750 3975
F 0 "#PWR0739" H 6750 3975 30  0001 C CNN
F 1 "GND" H 6750 3905 30  0001 C CNN
F 2 "" H 6750 3975 60  0001 C CNN
F 3 "" H 6750 3975 60  0001 C CNN
	1    6750 3975
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 3975 6525 3975
Wire Wire Line
	5625 3975 5425 3975
Wire Wire Line
	5625 3575 5350 3575
Wire Wire Line
	6525 3575 6725 3575
$EndSCHEMATC
