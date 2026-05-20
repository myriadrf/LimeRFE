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
Sheet 50 56
Title "LimeRFE"
Date "2019-07-12"
Rev "1v0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3175 4075 0    60   Input ~ 0
IN
Text HLabel 6425 4075 2    60   Output ~ 0
OUT
Wire Wire Line
	5300 4075 6425 4075
Text HLabel 8675 3825 2    60   Input ~ 0
R_CTRL_2V5
Text Notes 6475 2775 0    118  ~ 0
CHECK CTRL
$Comp
L EE2-5NU-L U121
U 1 1 5D6AA115
P 5000 3975
F 0 "U121" H 5130 4375 60  0000 C CNN
F 1 "EE2-5NU-L" H 5015 3615 60  0000 C CNN
F 2 "EE2-5NU-L" H 5000 4835 60  0001 C CNN
F 3 "" H 4950 3635 60  0000 C CNN
F 4 "Mouser" H 5000 5335 60  0001 C CNN "Vendor"
F 5 "80-EE2-5NU-L" H 5000 5235 60  0001 C CNN "Vendor Part Number"
F 6 "KEMET" H 5000 5135 60  0001 C CNN "Manufacturer"
F 7 "EE2-5NU-L" H 5000 5035 60  0001 C CNN "Manufacturer Part Number"
F 8 "Low Signal Relays - PCB 5V 2A Non Latching 2 Form C DPDT" H 5000 4935 60  0001 C CNN "Description"
F 9 "EE2-5NU-L" H 5000 4745 60  0001 C CNN "Component Value"
	1    5000 3975
	1    0    0    -1  
$EndComp
$Sheet
S 4525 2675 900  325 
U 5D6AAE97
F0 "LPF30" 60
F1 "LPF30.sch" 60
F2 "OUT" O R 5425 2825 60 
F3 "IN" I L 4525 2825 60 
$EndSheet
$Sheet
S 4525 4800 900  325 
U 5D6AAE9B
F0 "LPF70" 60
F1 "LPF70.sch" 60
F2 "OUT" O R 5425 4950 60 
F3 "IN" I L 4525 4950 60 
$EndSheet
$Comp
L DRDC3105F-7 U138
U 1 1 5D6B8CFD
P 7950 3725
F 0 "U138" H 7950 3475 60  0000 C CNN
F 1 "DRDC3105F-7" H 7950 4125 60  0001 C CNN
F 2 "LimeMicroBGD_Library:DRDC3105F-7_SOT23" H 7950 4225 60  0001 C CNN
F 3 "" H 7900 4075 60  0000 C CNN
F 4 "Mouser" H 7950 4725 60  0001 C CNN "Vendor"
F 5 "621-DRDC3105F-7" H 7950 4625 60  0001 C CNN "Vendor Part Number"
F 6 "Diodes Incorporated" H 7950 4525 60  0001 C CNN "Manufacturer"
F 7 "DRDC3105F-7" H 7950 4425 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC REG LINEAR 3V 200MA 5TSOP" H 7950 4325 60  0001 C CNN "Description"
F 9 "DRDC3105F-7" H 7950 3975 60  0000 C CNN "Component Value"
	1    7950 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3725 7500 3725
$Comp
L GND #PWR01009
U 1 1 5D6B9228
P 8475 3625
F 0 "#PWR01009" H 8475 3625 30  0001 C CNN
F 1 "GND" H 8475 3555 30  0001 C CNN
F 2 "~" H 8475 3625 60  0000 C CNN
F 3 "~" H 8475 3625 60  0000 C CNN
	1    8475 3625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8475 3625 8400 3625
Wire Wire Line
	8400 3825 8675 3825
$Comp
L +5V #PWR01010
U 1 1 5D6BA53D
P 4650 3725
F 0 "#PWR01010" H 4650 3815 20  0001 C CNN
F 1 "+5V" H 4650 3815 30  0000 C CNN
F 2 "" H 4650 3725 60  0000 C CNN
F 3 "" H 4650 3725 60  0000 C CNN
	1    4650 3725
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3725 4650 3725
Wire Wire Line
	4700 3925 3900 3925
Wire Wire Line
	3900 3925 3900 2825
Wire Wire Line
	3900 2825 4525 2825
Wire Wire Line
	4700 4225 3900 4225
Wire Wire Line
	3900 4225 3900 4950
Wire Wire Line
	3900 4950 4525 4950
Wire Wire Line
	5300 4225 5875 4225
Wire Wire Line
	5875 4225 5875 4950
Wire Wire Line
	5875 4950 5425 4950
Wire Wire Line
	5300 3925 5875 3925
Wire Wire Line
	5875 3925 5875 2825
Wire Wire Line
	5875 2825 5425 2825
Wire Wire Line
	4700 4075 3175 4075
$EndSCHEMATC
