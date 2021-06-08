EESchema Schematic File Version 2
LIBS:LimeMicroBGD_Library
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
LIBS:Lime_RFE-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 53 57
Title "LimeRFE"
Date "2019-07-12"
Rev "1v0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8400 3450 2    60   Output ~ 0
OUT
Text HLabel 2975 3450 0    60   Input ~ 0
IN
Wire Wire Line
	2975 3450 3250 3450
Wire Wire Line
	8125 3450 8400 3450
$Comp
L GND #PWR01046
U 1 1 5D2B10D2
P 4075 4175
F 0 "#PWR01046" H 4075 4175 30  0001 C CNN
F 1 "GND" H 4075 4105 30  0001 C CNN
F 2 "" H 4075 4175 60  0001 C CNN
F 3 "" H 4075 4175 60  0001 C CNN
	1    4075 4175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01047
U 1 1 5D2B10D8
P 5325 4175
F 0 "#PWR01047" H 5325 4175 30  0001 C CNN
F 1 "GND" H 5325 4105 30  0001 C CNN
F 2 "" H 5325 4175 60  0001 C CNN
F 3 "" H 5325 4175 60  0001 C CNN
	1    5325 4175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01048
U 1 1 5D2B10DE
P 6575 4175
F 0 "#PWR01048" H 6575 4175 30  0001 C CNN
F 1 "GND" H 6575 4105 30  0001 C CNN
F 2 "" H 6575 4175 60  0001 C CNN
F 3 "" H 6575 4175 60  0001 C CNN
	1    6575 4175
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01049
U 1 1 5D2B10E4
P 7375 4175
F 0 "#PWR01049" H 7375 4175 30  0001 C CNN
F 1 "GND" H 7375 4105 30  0001 C CNN
F 2 "" H 7375 4175 60  0001 C CNN
F 3 "" H 7375 4175 60  0001 C CNN
	1    7375 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3300 4500 3600
Wire Wire Line
	4900 3300 4900 3600
Wire Wire Line
	5725 3300 5725 3600
Wire Wire Line
	6125 3300 6125 3600
Wire Wire Line
	7175 3300 7175 3600
Wire Wire Line
	6775 3300 6775 3600
Wire Wire Line
	7625 3450 7175 3450
Connection ~ 7175 3450
Wire Wire Line
	7375 3650 7375 3450
Connection ~ 7375 3450
Wire Wire Line
	7375 4175 7375 4050
Wire Wire Line
	6575 4175 6575 4050
Wire Wire Line
	6775 3450 6125 3450
Connection ~ 6125 3450
Connection ~ 6775 3450
Wire Wire Line
	6575 3650 6575 3450
Connection ~ 6575 3450
Wire Wire Line
	5325 4175 5325 4050
Wire Wire Line
	5725 3450 4900 3450
Connection ~ 4900 3450
Connection ~ 5725 3450
Wire Wire Line
	4075 4050 4075 4175
Wire Wire Line
	3750 3450 4500 3450
Connection ~ 4500 3450
Wire Wire Line
	4075 3650 4075 3450
Connection ~ 4075 3450
Wire Wire Line
	5325 3650 5325 3450
Connection ~ 5325 3450
$Comp
L 0R_0402_RC0402JR-070RL R275
U 1 1 5D2F584D
P 3500 3450
F 0 "R275" H 3490 3520 50  0000 C CNN
F 1 "0R_0402_RC0402JR-070RL" H 3500 3600 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 3500 3700 60  0001 C CNN
F 3 "" H 3490 3520 60  0000 C CNN
F 4 "Mouser" H 3500 4100 60  0001 C CNN "Vendor"
F 5 "603-RC0402JR-070RL" H 3500 4200 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 3500 4000 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 3500 3900 60  0001 C CNN "Manufacturer Part Number"
F 8 "Thick Film Resistors - SMD ZERO OHM JUMPER" H 3500 3800 60  0001 C CNN "Description"
F 9 "0R" H 3500 3440 50  0000 C CNN "Component Value"
	1    3500 3450
	1    0    0    -1  
$EndComp
$Comp
L 0R_0402_RC0402JR-070RL R276
U 1 1 5D2F5924
P 7875 3450
F 0 "R276" H 7865 3520 50  0000 C CNN
F 1 "0R_0402_RC0402JR-070RL" H 7875 3600 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 7875 3700 60  0001 C CNN
F 3 "" H 7865 3520 60  0000 C CNN
F 4 "Mouser" H 7875 4100 60  0001 C CNN "Vendor"
F 5 "603-RC0402JR-070RL" H 7875 4200 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 7875 4000 60  0001 C CNN "Manufacturer"
F 7 "RC0402JR-070RL" H 7875 3900 60  0001 C CNN "Manufacturer Part Number"
F 8 "Thick Film Resistors - SMD ZERO OHM JUMPER" H 7875 3800 60  0001 C CNN "Description"
F 9 "0R" H 7875 3440 50  0000 C CNN "Component Value"
	1    7875 3450
	1    0    0    -1  
$EndComp
$Comp
L 72nH_0603_0603HP-72NXGLU L89
U 1 1 5D2F6DF9
P 4700 3300
F 0 "L89" V 4615 3330 50  0000 C CNN
F 1 "72nH_0603_0603HP-72NXGLU" H 4700 3550 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0603" H 4700 3650 60  0001 C CNN
F 3 "" H 4700 3300 60  0000 C CNN
F 4 "Mouser" H 4700 4150 60  0001 C CNN "Vendor"
F 5 "994-0603HP-72NXGLU" H 4700 4050 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 4700 3950 60  0001 C CNN "Manufacturer"
F 7 "0603HP-72NXGLU" H 4700 3850 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 0603HP Hi Perfrmnce 72 nH 2 % 0.55 A" H 4700 3750 60  0001 C CNN "Description"
F 9 "72nH" V 4765 3280 50  0000 C CNN "Component Value"
	1    4700 3300
	0    1    1    0   
$EndComp
$Comp
L 72nH_0603_0603HP-72NXGLU L90
U 1 1 5D2F6E8A
P 5925 3300
F 0 "L90" V 5840 3330 50  0000 C CNN
F 1 "72nH_0603_0603HP-72NXGLU" H 5925 3550 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0603" H 5925 3650 60  0001 C CNN
F 3 "" H 5925 3300 60  0000 C CNN
F 4 "Mouser" H 5925 4150 60  0001 C CNN "Vendor"
F 5 "994-0603HP-72NXGLU" H 5925 4050 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 5925 3950 60  0001 C CNN "Manufacturer"
F 7 "0603HP-72NXGLU" H 5925 3850 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 0603HP Hi Perfrmnce 72 nH 2 % 0.55 A" H 5925 3750 60  0001 C CNN "Description"
F 9 "72nH" V 5990 3280 50  0000 C CNN "Component Value"
	1    5925 3300
	0    1    1    0   
$EndComp
$Comp
L 100nH_0603_0603HP-R10XJLU L91
U 1 1 5D2F83AB
P 6975 3300
F 0 "L91" V 6890 3330 50  0000 C CNN
F 1 "100nH_0603_0603HP-R10XJLU" H 6975 3550 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0603" H 6975 3650 60  0001 C CNN
F 3 "" H 6975 3300 60  0000 C CNN
F 4 "Mouser" H 6975 4150 60  0001 C CNN "Vendor"
F 5 "994-0603HP-R10XJLU" H 6975 4050 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 6975 3950 60  0001 C CNN "Manufacturer"
F 7 "0603HP-R10XJLU" H 6975 3850 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 0603HP Hi Perfrmnce 100 nH 5 % 0.47 A" H 6975 3750 60  0001 C CNN "Description"
F 9 "100nH" V 7040 3280 50  0000 C CNN "Component Value"
	1    6975 3300
	0    1    1    0   
$EndComp
$Comp
L 27pF_0402_GCM1555C1H270FA16D C410
U 1 1 5D2F8482
P 4075 3850
F 0 "C410" H 4125 3950 50  0000 L CNN
F 1 "27pF_0402_GCM1555C1H270FA16D" H 3725 4250 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 4075 4150 39  0001 C CNN
F 3 "" H 4125 3950 60  0000 C CNN
F 4 "Mouser" H 4075 4350 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H270FA6D" H 4025 4450 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 4075 4550 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H270FA16D" H 4125 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 27pF 50volts C0G 1%" H 4175 4750 60  0001 C CNN "Description"
F 9 "27pF" H 4200 3750 50  0000 C CNN "Component Value"
	1    4075 3850
	1    0    0    -1  
$EndComp
$Comp
L 22pF_0402_CC0402JRNPO9BN220 C411
U 1 1 5D2F84EB
P 4700 3600
F 0 "C411" H 4750 3700 50  0000 L CNN
F 1 "22pF_0402_CC0402JRNPO9BN220" H 4700 4000 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 4700 3900 39  0001 C CNN
F 3 "" H 4700 3600 60  0000 C CNN
F 4 "Mouser" H 4700 4500 60  0001 C CNN "Vendor"
F 5 "603-CC402JRNPO9BN220" H 4700 4400 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 4700 4300 60  0001 C CNN "Manufacturer"
F 7 "CC0402JRNPO9BN220" H 4700 4200 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER, 22PF, 50V, 5%, NPO, 0402," H 4700 4100 60  0001 C CNN "Description"
F 9 "22pF" H 4825 3500 50  0000 C CNN "Component Value"
	1    4700 3600
	0    1    1    0   
$EndComp
$Comp
L 56pF_0402_GCM1555C1H560JA16D C412
U 1 1 5D2F85AC
P 5325 3850
F 0 "C412" H 5375 3950 50  0000 L CNN
F 1 "56pF_0402_GCM1555C1H560JA16D" H 5325 4250 50  0001 C CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 5325 4150 39  0001 C CNN
F 3 "" H 5325 3850 60  0000 C CNN
F 4 "Mouser" H 5325 4750 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H560JA6D" H 5325 4650 60  0001 C CNN "Vendor Part Number"
F 6 "Yageo" H 5325 4550 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H560JA16D" H 5325 4450 60  0001 C CNN "Manufacturer Part Number"
F 8 "CAP CER, 56PF, 50V, 5%, NPO, 0402," H 5325 4350 60  0001 C CNN "Description"
F 9 "56pF" H 5450 3750 50  0000 C CNN "Component Value"
	1    5325 3850
	1    0    0    -1  
$EndComp
$Comp
L 27pF_0402_GCM1555C1H270FA16D C413
U 1 1 5D2F8619
P 5925 3600
F 0 "C413" H 5975 3700 50  0000 L CNN
F 1 "27pF_0402_GCM1555C1H270FA16D" H 5575 4000 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 5925 3900 39  0001 C CNN
F 3 "" H 5975 3700 60  0000 C CNN
F 4 "Mouser" H 5925 4100 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H270FA6D" H 5875 4200 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 5925 4300 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H270FA16D" H 5975 4400 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 27pF 50volts C0G 1%" H 6025 4500 60  0001 C CNN "Description"
F 9 "27pF" H 6050 3500 50  0000 C CNN "Component Value"
	1    5925 3600
	0    1    1    0   
$EndComp
$Comp
L 68pF_0402_GCM1555C1H680FA16J C414
U 1 1 5D2F9AFD
P 6575 3850
F 0 "C414" H 6625 3950 50  0000 L CNN
F 1 "68pF_0402_GCM1555C1H680FA16J" H 6225 4250 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 6575 4150 39  0001 C CNN
F 3 "" H 6625 3950 60  0000 C CNN
F 4 "Mouser" H 6575 4350 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H680FA6J" H 6525 4450 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 6575 4550 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H680FA16J" H 6625 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 68pF 50volts C0G 1%" H 6675 4750 60  0001 C CNN "Description"
F 9 "68pF" H 6700 3750 50  0000 C CNN "Component Value"
	1    6575 3850
	1    0    0    -1  
$EndComp
$Comp
L 8.1pF_0402_GJM1555C1H8R1BB01D C415
U 1 1 5D2FAF8A
P 6975 3600
F 0 "C415" H 7025 3700 50  0000 L CNN
F 1 "8.1pF_0402_GJM1555C1H8R1BB01D" H 6625 4000 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 6975 3900 39  0001 C CNN
F 3 "" H 7025 3700 60  0000 C CNN
F 4 "Mouser" H 6975 4100 60  0001 C CNN "Vendor"
F 5 "81-GJM1555C1H8R1BB1D" H 6925 4200 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 6975 4300 60  0001 C CNN "Manufacturer"
F 7 "GJM1555C1H8R1BB01D" H 7025 4400 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 8.1pF 50Volts C0G +/-0.1pF" H 7075 4500 60  0001 C CNN "Description"
F 9 "8.1pF" H 7100 3500 50  0000 C CNN "Component Value"
	1    6975 3600
	0    1    1    0   
$EndComp
$Comp
L 47pF_0402_GCQ1555C1H470JB01D C416
U 1 1 5D2FC42C
P 7375 3850
F 0 "C416" H 7425 3950 50  0000 L CNN
F 1 "47pF_0402_GCQ1555C1H470JB01D" H 7025 4250 50  0001 L CNN
F 2 "LimeMicroBGD_Library:SMD0402" H 7375 4150 39  0001 C CNN
F 3 "" H 7425 3950 60  0000 C CNN
F 4 "Mouser" H 7375 4350 60  0001 C CNN "Vendor"
F 5 "81-GCQ1555C1H470JB1D" H 7325 4450 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 7375 4550 60  0001 C CNN "Manufacturer"
F 7 "GCQ1555C1H470JB01D" H 7425 4650 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 50VDC 47pF 5% AEC-Q200" H 7475 4750 60  0001 C CNN "Description"
F 9 "47pF" H 7500 3750 50  0000 C CNN "Component Value"
	1    7375 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC