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
LIBS:PA_220MHz_920MHz-cache
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
Sheet 25 56
Title "LimeRFE"
Date "2019-07-12"
Rev "1v0"
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
Wire Wire Line
	4850 3575 4625 3575
Wire Wire Line
	7225 3575 7400 3575
$Comp
L GND #PWR0736
U 1 1 5CA79D63
P 5425 3375
F 0 "#PWR0736" H 5425 3375 30  0001 C CNN
F 1 "GND" H 5425 3305 30  0001 C CNN
F 2 "" H 5425 3375 60  0001 C CNN
F 3 "" H 5425 3375 60  0001 C CNN
	1    5425 3375
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0737
U 1 1 5CA82526
P 5450 3775
F 0 "#PWR0737" H 5450 3775 30  0001 C CNN
F 1 "GND" H 5450 3705 30  0001 C CNN
F 2 "" H 5450 3775 60  0001 C CNN
F 3 "" H 5450 3775 60  0001 C CNN
	1    5450 3775
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0738
U 1 1 5CA8255E
P 6525 3375
F 0 "#PWR0738" H 6525 3375 30  0001 C CNN
F 1 "GND" H 6525 3305 30  0001 C CNN
F 2 "" H 6525 3375 60  0001 C CNN
F 3 "" H 6525 3375 60  0001 C CNN
	1    6525 3375
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0739
U 1 1 5CA82572
P 6500 3775
F 0 "#PWR0739" H 6500 3775 30  0001 C CNN
F 1 "GND" H 6500 3705 30  0001 C CNN
F 2 "" H 6500 3775 60  0001 C CNN
F 3 "" H 6500 3775 60  0001 C CNN
	1    6500 3775
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5525 3375 5425 3375
Wire Wire Line
	5350 3575 5525 3575
Wire Wire Line
	5525 3775 5450 3775
Wire Wire Line
	6425 3375 6525 3375
Wire Wire Line
	6425 3575 6725 3575
Wire Wire Line
	6500 3775 6425 3775
$Comp
L 2450LP14B100T U95
U 1 1 5CB1C55B
P 5975 3575
F 0 "U95" V 5550 3575 60  0000 C CNN
F 1 "2450LP14B100T" H 5975 4275 60  0001 C CNN
F 2 "LimeMicroBGD_Library:2450LP14B100T" H 5975 4375 60  0001 C CNN
F 3 "" H 5925 4075 60  0000 C CNN
F 4 "Mouser" H 5975 4775 60  0001 C CNN "Vendor"
F 5 "609-2450LP14B100T" H 5975 4875 60  0001 C CNN "Vendor Part Number"
F 6 "Johanson Technology Inc." H 5975 4675 60  0001 C CNN "Manufacturer"
F 7 "2450LP14B100T " H 5975 4575 60  0001 C CNN "Manufacturer Part Number"
F 8 "FILTER LOWPASS 2.4GHZ " H 5975 4475 60  0001 C CNN "Description"
F 9 "2450LP14B100" V 6400 3625 60  0000 C CNN "Component Value"
	1    5975 3575
	0    -1   -1   0   
$EndComp
$Comp
L 0R_0603_RCS06030000Z0EA R151
U 1 1 5D690EB0
P 5100 3575
F 0 "R151" H 5090 3645 50  0000 C CNN
F 1 "0R_0603_RCS06030000Z0EA" H 5100 3825 50  0001 C CNN
F 2 "SMD0603" H 5100 3925 60  0001 C CNN
F 3 "" V 5100 3575 60  0000 C CNN
F 4 "Mouser" H 5100 4425 60  0001 C CNN "Vendor"
F 5 "RCS06030000Z0EA" H 5120 4305 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay_Dale" H 5100 4225 60  0001 C CNN "Manufacturer"
F 7 "RCS06030000Z0EA" H 5050 4125 60  0001 C CNN "Manufacturer Part Number"
F 8 "Thick Film Resistors - SMD 0.25watt ZeroOhms" H 5100 4025 60  0001 C CNN "Description"
F 9 "0R" H 5100 3565 50  0000 C CNN "Component Value"
	1    5100 3575
	1    0    0    -1  
$EndComp
$Comp
L 0R_0603_RCS06030000Z0EA R152
U 1 1 5D690F28
P 6975 3575
F 0 "R152" H 6965 3645 50  0000 C CNN
F 1 "0R_0603_RCS06030000Z0EA" H 6975 3825 50  0001 C CNN
F 2 "SMD0603" H 6975 3925 60  0001 C CNN
F 3 "" V 6975 3575 60  0000 C CNN
F 4 "Mouser" H 6975 4425 60  0001 C CNN "Vendor"
F 5 "RCS06030000Z0EA" H 6995 4305 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay_Dale" H 6975 4225 60  0001 C CNN "Manufacturer"
F 7 "RCS06030000Z0EA" H 6925 4125 60  0001 C CNN "Manufacturer Part Number"
F 8 "Thick Film Resistors - SMD 0.25watt ZeroOhms" H 6975 4025 60  0001 C CNN "Description"
F 9 "0R" H 6975 3565 50  0000 C CNN "Component Value"
	1    6975 3575
	1    0    0    -1  
$EndComp
$EndSCHEMATC