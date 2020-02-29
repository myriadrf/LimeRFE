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
Sheet 21 44
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
Wire Wire Line
	4625 3575 4900 3575
Wire Wire Line
	5300 3575 5525 3575
Wire Wire Line
	6525 3575 6775 3575
Wire Wire Line
	7175 3575 7400 3575
$Comp
L GND #PWR0513
U 1 1 5D22D7C4
P 6025 4025
F 0 "#PWR0513" H 6025 4025 30  0001 C CNN
F 1 "GND" H 6025 3955 30  0001 C CNN
F 2 "" H 6025 4025 60  0001 C CNN
F 3 "" H 6025 4025 60  0001 C CNN
	1    6025 4025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0514
U 1 1 5D22D7C5
P 6025 3125
F 0 "#PWR0514" H 6025 3125 30  0001 C CNN
F 1 "GND" H 6025 3055 30  0001 C CNN
F 2 "" H 6025 3125 60  0001 C CNN
F 3 "" H 6025 3125 60  0001 C CNN
	1    6025 3125
	-1   0    0    1   
$EndComp
$Comp
L DEA252400BT-2030A1 U71
U 1 1 5D42DEE8
P 6025 3575
F 0 "U71" H 6025 2975 60  0000 C CNN
F 1 "DEA252400BT-2030A1" H 6025 4275 60  0001 C CNN
F 2 "LimeMicroBGD_Library:DEA252400BT-2030A1" H 6025 4375 60  0001 C CNN
F 3 "" H 5975 4075 60  0000 C CNN
F 4 "Mouser" H 6025 4775 60  0001 C CNN "Vendor"
F 5 "810-DEA252400BT2030A" H 6025 4875 60  0001 C CNN "Vendor Part Number"
F 6 "TDK Corporation " H 6025 4675 60  0001 C CNN "Manufacturer"
F 7 "DEA252400BT-2030A1 " H 6025 4575 60  0001 C CNN "Manufacturer Part Number"
F 8 "FILTER BANDPASS 2.4GHZ WLAN SMD " H 6025 4475 60  0001 C CNN "Description"
F 9 "DEA252400BT-2030A1" H 6600 3225 60  0000 C CNN "Component Value"
	1    6025 3575
	1    0    0    -1  
$EndComp
$Comp
L 1000pF_0402 R136
U 1 1 5CF28C24
P 5100 3575
F 0 "R136" H 5150 3675 50  0000 L CNN
F 1 "1000pF_0402" H 5100 3925 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 5100 3825 60  0001 C CNN
F 3 "" H 5100 3575 60  0000 C CNN
F 4 "DigiKey" H 5100 4325 60  0001 C CNN "Vendor"
F 5 "490-6189-1-ND" H 5100 4425 60  0001 C CNN "Vendor Part Number"
F 6 "Murata_Electronics_North_America" H 5100 4225 60  0001 C CNN "Manufacturer"
F 7 "GRM1555C1H102FA01D" H 5100 4125 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP_CER_1000PF_50V_C0G/NP0_0402" H 5100 4025 60  0001 C CNN "Description"
F 9 "1000pF" H 5250 3475 50  0000 C CNN "Component Value"
	1    5100 3575
	0    1    -1   0   
$EndComp
$Comp
L 1000pF_0402 R137
U 1 1 5CF28CB8
P 6975 3575
F 0 "R137" H 7025 3675 50  0000 L CNN
F 1 "1000pF_0402" H 6975 3925 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 6975 3825 60  0001 C CNN
F 3 "" H 6975 3575 60  0000 C CNN
F 4 "DigiKey" H 6975 4325 60  0001 C CNN "Vendor"
F 5 "490-6189-1-ND" H 6975 4425 60  0001 C CNN "Vendor Part Number"
F 6 "Murata_Electronics_North_America" H 6975 4225 60  0001 C CNN "Manufacturer"
F 7 "GRM1555C1H102FA01D" H 6975 4125 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP_CER_1000PF_50V_C0G/NP0_0402" H 6975 4025 60  0001 C CNN "Description"
F 9 "1000pF" H 7125 3475 50  0000 C CNN "Component Value"
	1    6975 3575
	0    1    -1   0   
$EndComp
$EndSCHEMATC
