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
Sheet 15 44
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3300 4150 3300 4600
Wire Wire Line
	3700 3900 3700 4400
Wire Wire Line
	4100 3900 4100 4400
Connection ~ 4100 4150
Wire Wire Line
	2750 4150 3700 4150
Connection ~ 3700 4150
Wire Wire Line
	4500 4600 4500 4150
Connection ~ 4500 4150
Wire Wire Line
	4900 3900 4900 4400
Wire Wire Line
	4900 4400 5150 4400
Wire Wire Line
	5550 4400 5850 4400
Wire Wire Line
	5850 4400 5850 3900
Wire Wire Line
	5450 3900 5300 3900
Wire Wire Line
	4100 4150 4900 4150
Connection ~ 4900 4150
Wire Wire Line
	6600 4400 6850 4400
Wire Wire Line
	7250 4400 7550 4400
Wire Wire Line
	7550 4400 7550 3900
Wire Wire Line
	7150 3900 7000 3900
Connection ~ 6600 4150
Wire Wire Line
	5850 4150 6600 4150
Connection ~ 5850 4150
Wire Wire Line
	6600 3900 6600 4400
Wire Wire Line
	6200 4600 6200 4150
Connection ~ 6200 4150
Wire Wire Line
	7550 4150 8450 4150
Wire Wire Line
	7900 4150 7900 4600
Connection ~ 7550 4150
$Comp
L GND #PWR0481
U 1 1 5C55833D
P 3300 5250
F 0 "#PWR0481" H 3300 5250 30  0001 C CNN
F 1 "GND" H 3300 5180 30  0001 C CNN
F 2 "" H 3300 5250 60  0001 C CNN
F 3 "" H 3300 5250 60  0001 C CNN
	1    3300 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0482
U 1 1 5C5583D3
P 4500 5250
F 0 "#PWR0482" H 4500 5250 30  0001 C CNN
F 1 "GND" H 4500 5180 30  0001 C CNN
F 2 "" H 4500 5250 60  0001 C CNN
F 3 "" H 4500 5250 60  0001 C CNN
	1    4500 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0483
U 1 1 5C55840E
P 6200 5250
F 0 "#PWR0483" H 6200 5250 30  0001 C CNN
F 1 "GND" H 6200 5180 30  0001 C CNN
F 2 "" H 6200 5250 60  0001 C CNN
F 3 "" H 6200 5250 60  0001 C CNN
	1    6200 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0484
U 1 1 5C558479
P 7900 5250
F 0 "#PWR0484" H 7900 5250 30  0001 C CNN
F 1 "GND" H 7900 5180 30  0001 C CNN
F 2 "" H 7900 5250 60  0001 C CNN
F 3 "" H 7900 5250 60  0001 C CNN
	1    7900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5250 7900 5000
Wire Wire Line
	6200 5250 6200 5000
Wire Wire Line
	4500 5250 4500 5000
Wire Wire Line
	3300 5250 3300 5000
Connection ~ 7900 4150
Connection ~ 3300 4150
Text HLabel 9250 4150 2    60   Output ~ 0
OUT
Wire Wire Line
	8850 4150 9250 4150
Text HLabel 1800 4150 0    60   Input ~ 0
IN
Wire Wire Line
	1800 4150 2350 4150
$Comp
L 330nH_0805 L27
U 1 1 5CAD2FC5
P 3900 3900
F 0 "L27" V 3815 3930 50  0000 C CNN
F 1 "330nH_0805" H 3900 4150 50  0001 C CNN
F 2 "SMD0805" H 3900 4250 60  0001 C CNN
F 3 "" H 3900 3900 60  0000 C CNN
F 4 "Mouser" H 3900 4550 60  0001 C CNN "Vendor"
F 5 "994-0805HP-331XGRB" H 3900 4450 60  0001 C CNN "Vendor Part Number"
F 6 "COILCRAFT" H 3900 4750 60  0001 C CNN "Manufacturer"
F 7 "0805HP-331XGRB" H 3900 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 330nH 2% 0.36A DCR=1.004Ohms" H 3900 4350 60  0001 C CNN "Description"
F 9 "330nH" V 3965 3880 50  0000 C CNN "Component Value"
	1    3900 3900
	0    1    1    0   
$EndComp
$Comp
L 220nH_0805 L28
U 1 1 5CADD43C
P 5100 3900
F 0 "L28" V 5015 3930 50  0000 C CNN
F 1 "220nH_0805" H 5100 4150 50  0001 C CNN
F 2 "SMD0805" H 5100 4250 60  0001 C CNN
F 3 "" H 5100 3900 60  0000 C CNN
F 4 "Mouser" H 5100 4550 60  0001 C CNN "Vendor"
F 5 "994-0805HP-221XGRB" H 5100 4450 60  0001 C CNN "Vendor Part Number"
F 6 "COILCRAFT" H 5100 4750 60  0001 C CNN "Manufacturer"
F 7 "0805HP-221XGRB" H 5100 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 220nH 2% 0.5A DCR=0.426Ohms" H 5100 4350 60  0001 C CNN "Description"
F 9 "220nH" V 5165 3880 50  0000 C CNN "Component Value"
	1    5100 3900
	0    1    1    0   
$EndComp
$Comp
L 120nH_0805 L29
U 1 1 5CADF587
P 5650 3900
F 0 "L29" V 5565 3930 50  0000 C CNN
F 1 "120nH_0805" H 5650 4150 50  0001 C CNN
F 2 "SMD0805" H 5650 4250 60  0001 C CNN
F 3 "" H 5650 3900 60  0000 C CNN
F 4 "Mouser" H 5650 4550 60  0001 C CNN "Vendor"
F 5 "994-0805HP-121XGRB" H 5650 4450 60  0001 C CNN "Vendor Part Number"
F 6 "COILCRAFT" H 5650 4750 60  0001 C CNN "Manufacturer"
F 7 "0805HP-121XGRB" H 5650 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 120nH 2% 0.62A DCR=0.293Ohms" H 5650 4350 60  0001 C CNN "Description"
F 9 "120nH" V 5715 3880 50  0000 C CNN "Component Value"
	1    5650 3900
	0    1    1    0   
$EndComp
$Comp
L 180pF_0603 C145
U 1 1 5CAE1ED7
P 6200 4800
F 0 "C145" H 6250 4900 50  0000 L CNN
F 1 "180pF_0603" H 6000 5250 50  0001 L CNN
F 2 "SMD0603" H 6200 5150 60  0001 C CNN
F 3 "" H 6200 4800 60  0000 C CNN
F 4 "Mouser" H 6200 5350 60  0001 C CNN "Vendor"
F 5 "581-06035A181GAT2A" H 6200 5450 60  0001 C CNN "Vendor Part Number"
F 6 "Murata" H 6200 5550 60  0001 C CNN "Manufacturer"
F 7 "06035A181GAT2A" H 6200 5650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 180pF C0G 0603 2% Tol" H 6200 5750 60  0001 C CNN "Description"
F 9 "180pF" H 6325 4700 50  0000 C CNN "Component Value"
	1    6200 4800
	1    0    0    -1  
$EndComp
$Comp
L 220nH_0805 L30
U 1 1 5CAE2054
P 6800 3900
F 0 "L30" V 6715 3930 50  0000 C CNN
F 1 "220nH_0805" H 6800 4150 50  0001 C CNN
F 2 "SMD0805" H 6800 4250 60  0001 C CNN
F 3 "" H 6800 3900 60  0000 C CNN
F 4 "Mouser" H 6800 4550 60  0001 C CNN "Vendor"
F 5 "994-0805HP-221XGRB" H 6800 4450 60  0001 C CNN "Vendor Part Number"
F 6 "COILCRAFT" H 6800 4750 60  0001 C CNN "Manufacturer"
F 7 "0805HP-221XGRB" H 6800 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 220nH 2% 0.5A DCR=0.426Ohms" H 6800 4350 60  0001 C CNN "Description"
F 9 "220nH" V 6865 3880 50  0000 C CNN "Component Value"
	1    6800 3900
	0    1    1    0   
$EndComp
$Comp
L 150nH_0805 L31
U 1 1 5CAE4551
P 7350 3900
F 0 "L31" V 7265 3930 50  0000 C CNN
F 1 "150nH_0805" H 7350 4150 50  0001 C CNN
F 2 "SMD0805" H 7350 4250 60  0001 C CNN
F 3 "" H 7350 3900 60  0000 C CNN
F 4 "Mouser" H 7350 4550 60  0001 C CNN "Vendor"
F 5 "994-0805HP-151XGRB" H 7350 4450 60  0001 C CNN "Vendor Part Number"
F 6 "COILCRAFT" H 7350 4750 60  0001 C CNN "Manufacturer"
F 7 "0805HP-151XGRB" H 7350 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 150nH 2% 0.6A DCR=0.288Ohms" H 7350 4350 60  0001 C CNN "Description"
F 9 "150nH" V 7415 3880 50  0000 C CNN "Component Value"
	1    7350 3900
	0    1    1    0   
$EndComp
$Comp
L 91pF_0402_GRM1555C1H910GA01D C141
U 1 1 5CF62807
P 3300 4800
F 0 "C141" H 3350 4900 50  0000 L CNN
F 1 "91pF_0402_GRM1555C1H910GA01D" H 3100 5250 50  0001 C CNN
F 2 "SMD0402" H 3300 5150 60  0001 C CNN
F 3 "" H 3300 4800 60  0000 C CNN
F 4 "Mouser" H 3300 5350 60  0001 C CNN "Vendor"
F 5 "81-GRM1555C1H910GA1D" H 3300 5450 60  0001 C CNN "Vendor Part Number"
F 6 "Murata" H 3300 5550 60  0001 C CNN "Manufacturer"
F 7 "GRM1555C1H910GA01D" H 3300 5650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 91pF 50volts C0G 2%" H 3300 5750 60  0001 C CNN "Description"
F 9 "91pF" H 3425 4700 50  0000 C CNN "Component Value"
	1    3300 4800
	1    0    0    -1  
$EndComp
$Comp
L 18pF_0402_GJM1555C1H180GB01D C142
U 1 1 5CF62961
P 3900 4400
F 0 "C142" H 3950 4500 50  0000 L CNN
F 1 "18pF_0402_GJM1555C1H180GB01D" H 3700 4850 50  0001 C CNN
F 2 "SMD0402" H 3900 4750 60  0001 C CNN
F 3 "" H 3900 4400 60  0000 C CNN
F 4 "Mouser" H 3900 4950 60  0001 C CNN "Vendor"
F 5 "81-GJM1555C1H180GB01" H 3900 5050 60  0001 C CNN "Vendor Part Number"
F 6 "Murata" H 3900 5150 60  0001 C CNN "Manufacturer"
F 7 "GJM1555C1H180GB01D" H 3900 5250 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 18pF 50Volts C0G 2%" H 3900 5350 60  0001 C CNN "Description"
F 9 "18pF" H 4025 4300 50  0000 C CNN "Component Value"
	1    3900 4400
	0    1    1    0   
$EndComp
$Comp
L 180pF_0603_06035A181GAT2A C143
U 1 1 5CF62A5F
P 4500 4800
F 0 "C143" H 4550 4900 50  0000 L CNN
F 1 "180pF_0603_06035A181GAT2A" H 4300 5250 50  0001 C CNN
F 2 "SMD0603" H 4500 5150 60  0001 C CNN
F 3 "" H 4500 4800 60  0000 C CNN
F 4 "Mouser" H 4500 5350 60  0001 C CNN "Vendor"
F 5 "581-06035A181GAT2A" H 4500 5450 60  0001 C CNN "Vendor Part Number"
F 6 "Murata" H 4500 5550 60  0001 C CNN "Manufacturer"
F 7 "06035A181GAT2A" H 4500 5650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 180pF C0G 0603 2% Tol" H 4500 5750 60  0001 C CNN "Description"
F 9 "180pF" H 4625 4700 50  0000 C CNN "Component Value"
	1    4500 4800
	1    0    0    -1  
$EndComp
$Comp
L 27pF_0402_04025U270GAT2A C144
U 1 1 5CF62C5A
P 5350 4400
F 0 "C144" H 5400 4500 50  0000 L CNN
F 1 "27pF_0402_04025U270GAT2A" H 5150 4850 50  0001 C CNN
F 2 "SMD0402" H 5350 4750 60  0001 C CNN
F 3 "" H 5350 4400 60  0000 C CNN
F 4 "Mouser" H 5350 4950 60  0001 C CNN "Vendor"
F 5 "581-04025U270GAT2A" H 5350 5050 60  0001 C CNN "Vendor Part Number"
F 6 "Murata" H 5350 5150 60  0001 C CNN "Manufacturer"
F 7 "04025U270GAT2A" H 5350 5250 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 27pF C0G 0402 2% Tol" H 5350 5350 60  0001 C CNN "Description"
F 9 "27pF" H 5475 4300 50  0000 C CNN "Component Value"
	1    5350 4400
	0    1    1    0   
$EndComp
$Comp
L 6pF_0402_GCM1555C1H6R0FA16D C146
U 1 1 5CF62D70
P 7050 4400
F 0 "C146" H 7100 4500 50  0000 L CNN
F 1 "6pF_0402_GCM1555C1H6R0FA16D" H 6850 4850 50  0001 C CNN
F 2 "SMD0402" H 7050 4750 60  0001 C CNN
F 3 "" H 7050 4400 60  0000 C CNN
F 4 "Mouser" H 7050 4950 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H6R0FA6D" H 7050 5050 60  0001 C CNN "Vendor Part Number"
F 6 "Murata" H 7050 5150 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H6R0FA16D" H 7050 5250 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 6pF 50volts C0G 1%" H 7050 5350 60  0001 C CNN "Description"
F 9 "6pF" H 7175 4300 50  0000 C CNN "Component Value"
	1    7050 4400
	0    1    1    0   
$EndComp
$Comp
L 100pF_0603_06035A101GAT2A C147
U 1 1 5CF62ED7
P 7900 4800
F 0 "C147" H 7950 4900 50  0000 L CNN
F 1 "100pF_0603_06035A101GAT2A" H 7700 5250 50  0001 C CNN
F 2 "SMD0603" H 7900 5150 60  0001 C CNN
F 3 "" H 7900 4800 60  0000 C CNN
F 4 "Mouser" H 7900 5350 60  0001 C CNN "Vendor"
F 5 "581-06035A101GAT2A" H 7900 5450 60  0001 C CNN "Vendor Part Number"
F 6 "AVX_Corporation" H 7900 5550 60  0001 C CNN "Manufacturer"
F 7 "06035A101GAT2A" H 7900 5650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 100pF C0G 0603 2%" H 7900 5750 60  0001 C CNN "Description"
F 9 "100pF" H 8025 4700 50  0000 C CNN "Component Value"
	1    7900 4800
	1    0    0    -1  
$EndComp
$Comp
L 1u_0402 R128
U 1 1 5CF1C8DB
P 2550 4150
F 0 "R128" H 2600 4250 50  0000 L CNN
F 1 "1u_0402" H 2350 4500 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 2550 4400 60  0001 C CNN
F 3 "" H 2550 4150 60  0000 C CNN
F 4 "DigiKey" H 2550 4900 60  0001 C CNN "Vendor"
F 5 "490-13409-1-ND" H 2550 5000 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics North America" H 2550 4800 60  0001 C CNN "Manufacturer"
F 7 "GCM155C71A105KE38D" H 2550 4700 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER 1UF 10V X7S 0402" H 2550 4600 60  0001 C CNN "Description"
F 9 "1uF" H 2675 4050 50  0000 C CNN "Component Value"
	1    2550 4150
	0    -1   -1   0   
$EndComp
$Comp
L 1u_0402 R129
U 1 1 5CF1CD16
P 8650 4150
F 0 "R129" H 8700 4250 50  0000 L CNN
F 1 "1u_0402" H 8450 4500 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 8650 4400 60  0001 C CNN
F 3 "" H 8650 4150 60  0000 C CNN
F 4 "DigiKey" H 8650 4900 60  0001 C CNN "Vendor"
F 5 "490-13409-1-ND" H 8650 5000 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics North America" H 8650 4800 60  0001 C CNN "Manufacturer"
F 7 "GCM155C71A105KE38D" H 8650 4700 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER 1UF 10V X7S 0402" H 8650 4600 60  0001 C CNN "Description"
F 9 "1uF" H 8775 4050 50  0000 C CNN "Component Value"
	1    8650 4150
	0    -1   -1   0   
$EndComp
$EndSCHEMATC