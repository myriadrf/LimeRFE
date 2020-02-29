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
Sheet 22 44
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4675 3775 0    60   Input ~ 0
IN
Text HLabel 7475 3775 2    60   Output ~ 0
OUT
Wire Wire Line
	6675 3775 6900 3775
Wire Wire Line
	7300 3775 7475 3775
Wire Wire Line
	5250 3775 5475 3775
Wire Wire Line
	4675 3775 4850 3775
$Comp
L GND #PWR0515
U 1 1 5D22D7BD
P 6075 4225
F 0 "#PWR0515" H 6075 4225 30  0001 C CNN
F 1 "GND" H 6075 4155 30  0001 C CNN
F 2 "" H 6075 4225 60  0001 C CNN
F 3 "" H 6075 4225 60  0001 C CNN
	1    6075 4225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0516
U 1 1 5D22D7BE
P 6075 3325
F 0 "#PWR0516" H 6075 3325 30  0001 C CNN
F 1 "GND" H 6075 3255 30  0001 C CNN
F 2 "" H 6075 3325 60  0001 C CNN
F 3 "" H 6075 3325 60  0001 C CNN
	1    6075 3325
	1    0    0    1   
$EndComp
$Comp
L 3600BP14M0600T U72
U 1 1 5D42CE0D
P 6075 3775
F 0 "U72" H 6075 3225 60  0000 C CNN
F 1 "3600BP14M0600T" H 6125 4475 60  0001 C CNN
F 2 "LimeMicroBGD_Library:3600BP14M0600T" H 6125 4575 60  0001 C CNN
F 3 "" H 6075 4425 60  0000 C CNN
F 4 "Mouser" H 6075 5075 60  0001 C CNN "Vendor"
F 5 "609-3600BP14M0600T" H 6100 4975 60  0001 C CNN "Vendor Part Number"
F 6 "Johanson_Technology_Inc. " H 6075 4875 60  0001 C CNN "Manufacturer"
F 7 "3600BP14M0600T " H 6075 4775 60  0001 C CNN "Manufacturer Part Number"
F 8 "FILTER BANDPASS 3.6GHZ " H 6125 4675 60  0001 C CNN "Description"
F 9 "3600BP14M0600T" H 6600 3400 60  0000 C CNN "Component Value"
	1    6075 3775
	1    0    0    -1  
$EndComp
$Comp
L 1000pF_0402 R138
U 1 1 5CF2B72E
P 5050 3775
F 0 "R138" H 5100 3875 50  0000 L CNN
F 1 "1000pF_0402" H 5050 4125 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 5050 4025 60  0001 C CNN
F 3 "" H 5050 3775 60  0000 C CNN
F 4 "DigiKey" H 5050 4525 60  0001 C CNN "Vendor"
F 5 "490-6189-1-ND" H 5050 4625 60  0001 C CNN "Vendor Part Number"
F 6 "Murata_Electronics_North_America" H 5050 4425 60  0001 C CNN "Manufacturer"
F 7 "GRM1555C1H102FA01D" H 5050 4325 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP_CER_1000PF_50V_C0G/NP0_0402" H 5050 4225 60  0001 C CNN "Description"
F 9 "1000pF" H 5200 3675 50  0000 C CNN "Component Value"
	1    5050 3775
	0    1    -1   0   
$EndComp
$Comp
L 1000pF_0402 R139
U 1 1 5CF2B7C2
P 7100 3775
F 0 "R139" H 7150 3875 50  0000 L CNN
F 1 "1000pF_0402" H 7100 4125 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 7100 4025 60  0001 C CNN
F 3 "" H 7100 3775 60  0000 C CNN
F 4 "DigiKey" H 7100 4525 60  0001 C CNN "Vendor"
F 5 "490-6189-1-ND" H 7100 4625 60  0001 C CNN "Vendor Part Number"
F 6 "Murata_Electronics_North_America" H 7100 4425 60  0001 C CNN "Manufacturer"
F 7 "GRM1555C1H102FA01D" H 7100 4325 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP_CER_1000PF_50V_C0G/NP0_0402" H 7100 4225 60  0001 C CNN "Description"
F 9 "1000pF" H 7250 3675 50  0000 C CNN "Component Value"
	1    7100 3775
	0    1    -1   0   
$EndComp
$EndSCHEMATC
