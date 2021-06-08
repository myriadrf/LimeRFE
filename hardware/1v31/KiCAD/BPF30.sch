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
Sheet 15 57
Title "LimeRFE"
Date "2019-07-12"
Rev "1v0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3675 3500 3675 3950
Wire Wire Line
	4075 3250 4075 3750
Wire Wire Line
	4475 3250 4475 3750
Connection ~ 4475 3500
Wire Wire Line
	3175 3500 4075 3500
Connection ~ 4075 3500
Wire Wire Line
	4875 3950 4875 3500
Connection ~ 4875 3500
Wire Wire Line
	5275 3250 5275 3750
Wire Wire Line
	5275 3750 5525 3750
Wire Wire Line
	6225 3750 5925 3750
Wire Wire Line
	6225 3250 6225 3750
Wire Wire Line
	5825 3250 5675 3250
Wire Wire Line
	4475 3500 5275 3500
Connection ~ 5275 3500
Wire Wire Line
	6975 3750 7225 3750
Wire Wire Line
	7925 3750 7625 3750
Wire Wire Line
	7925 3250 7925 3750
Wire Wire Line
	7525 3250 7375 3250
Connection ~ 6975 3500
Wire Wire Line
	6225 3500 6975 3500
Connection ~ 6225 3500
Wire Wire Line
	6975 3250 6975 3750
Wire Wire Line
	6575 3950 6575 3500
Connection ~ 6575 3500
Wire Wire Line
	7925 3500 8775 3500
Wire Wire Line
	8275 3500 8275 3950
Connection ~ 7925 3500
$Comp
L GND #PWR0552
U 1 1 5D69D398
P 3675 4600
AR Path="/5CAD20EB/5C58761B/5D69D398" Ref="#PWR0552"  Part="1" 
AR Path="/5CD70128/5D1FA13B/5D1FB8AA/5D69D398" Ref="#PWR892"  Part="1" 
F 0 "#PWR0552" H 3675 4600 30  0001 C CNN
F 1 "GND" H 3675 4530 30  0001 C CNN
F 2 "" H 3675 4600 60  0001 C CNN
F 3 "" H 3675 4600 60  0001 C CNN
	1    3675 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0553
U 1 1 5D69D399
P 4875 4600
AR Path="/5CAD20EB/5C58761B/5D69D399" Ref="#PWR0553"  Part="1" 
AR Path="/5CD70128/5D1FA13B/5D1FB8AA/5D69D399" Ref="#PWR893"  Part="1" 
F 0 "#PWR0553" H 4875 4600 30  0001 C CNN
F 1 "GND" H 4875 4530 30  0001 C CNN
F 2 "" H 4875 4600 60  0001 C CNN
F 3 "" H 4875 4600 60  0001 C CNN
	1    4875 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0554
U 1 1 5D69D39A
P 6575 4600
AR Path="/5CAD20EB/5C58761B/5D69D39A" Ref="#PWR0554"  Part="1" 
AR Path="/5CD70128/5D1FA13B/5D1FB8AA/5D69D39A" Ref="#PWR894"  Part="1" 
F 0 "#PWR0554" H 6575 4600 30  0001 C CNN
F 1 "GND" H 6575 4530 30  0001 C CNN
F 2 "" H 6575 4600 60  0001 C CNN
F 3 "" H 6575 4600 60  0001 C CNN
	1    6575 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0555
U 1 1 5D69D39B
P 8275 4600
AR Path="/5CAD20EB/5C58761B/5D69D39B" Ref="#PWR0555"  Part="1" 
AR Path="/5CD70128/5D1FA13B/5D1FB8AA/5D69D39B" Ref="#PWR895"  Part="1" 
F 0 "#PWR0555" H 8275 4600 30  0001 C CNN
F 1 "GND" H 8275 4530 30  0001 C CNN
F 2 "" H 8275 4600 60  0001 C CNN
F 3 "" H 8275 4600 60  0001 C CNN
	1    8275 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8275 4600 8275 4350
Wire Wire Line
	6575 4600 6575 4350
Wire Wire Line
	4875 4600 4875 4350
Wire Wire Line
	3675 4600 3675 4350
Connection ~ 8275 3500
Connection ~ 3675 3500
Text HLabel 9625 3500 2    60   Output ~ 0
OUT
Wire Wire Line
	9275 3500 9625 3500
Text HLabel 2175 3500 0    60   Input ~ 0
IN
Wire Wire Line
	2175 3500 2675 3500
$Comp
L 0R_0603_RCS06030000Z0EA R370
U 1 1 5D6AAEB1
P 2925 3500
F 0 "R370" H 2915 3570 50  0000 C CNN
F 1 "0R_0603_RCS06030000Z0EA" H 2925 3750 50  0001 C CNN
F 2 "SMD0603" H 2925 3850 60  0001 C CNN
F 3 "" V 2925 3500 60  0000 C CNN
F 4 "Mouser" H 2925 4350 60  0001 C CNN "Vendor"
F 5 "RCS06030000Z0EA" H 2945 4230 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay_Dale" H 2925 4150 60  0001 C CNN "Manufacturer"
F 7 "RCS06030000Z0EA" H 2875 4050 60  0001 C CNN "Manufacturer Part Number"
F 8 "Thick Film Resistors - SMD 0.25watt ZeroOhms" H 2925 3950 60  0001 C CNN "Description"
F 9 "0R" H 2925 3490 50  0000 C CNN "Component Value"
	1    2925 3500
	1    0    0    -1  
$EndComp
$Comp
L 0R_0603_RCS06030000Z0EA R371
U 1 1 5D6AB105
P 9025 3500
F 0 "R371" H 9015 3570 50  0000 C CNN
F 1 "0R_0603_RCS06030000Z0EA" H 9025 3750 50  0001 C CNN
F 2 "SMD0603" H 9025 3850 60  0001 C CNN
F 3 "" V 9025 3500 60  0000 C CNN
F 4 "Mouser" H 9025 4350 60  0001 C CNN "Vendor"
F 5 "RCS06030000Z0EA" H 9045 4230 60  0001 C CNN "Vendor Part Number"
F 6 "Vishay_Dale" H 9025 4150 60  0001 C CNN "Manufacturer"
F 7 "RCS06030000Z0EA" H 8975 4050 60  0001 C CNN "Manufacturer Part Number"
F 8 "Thick Film Resistors - SMD 0.25watt ZeroOhms" H 9025 3950 60  0001 C CNN "Description"
F 9 "0R" H 9025 3490 50  0000 C CNN "Component Value"
	1    9025 3500
	1    0    0    -1  
$EndComp
$Comp
L 68pF_0402_GCM1555C1H680JA16J C320
U 1 1 5D96C885
P 3675 4150
F 0 "C320" H 3725 4250 50  0000 L CNN
F 1 "68pF_0402_GCM1555C1H680JA16J" H 3325 4550 50  0001 L CNN
F 2 "SMD0402" H 3675 4450 39  0001 C CNN
F 3 "" H 3725 4250 60  0000 C CNN
F 4 "Mouser" H 3675 4650 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H680JA6J" H 3625 4750 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 3675 4850 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H680JA16J" H 3725 4950 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 68pF 50volts C0G 5%" H 3775 5050 60  0001 C CNN "Description"
F 9 "68pF" H 3800 4050 50  0000 C CNN "Component Value"
	1    3675 4150
	1    0    0    -1  
$EndComp
$Comp
L 15pF_0402_GJM1555C1H150JB01D C321
U 1 1 5D96ECC2
P 4275 3750
F 0 "C321" H 4325 3850 50  0000 L CNN
F 1 "15pF_0402_GJM1555C1H150JB01D" H 3925 4150 50  0001 L CNN
F 2 "SMD0402" H 4275 4050 39  0001 C CNN
F 3 "" H 4325 3850 60  0000 C CNN
F 4 "Mouser" H 4275 4250 60  0001 C CNN "Vendor"
F 5 "81-GJM1555C1H150JB1D" H 4225 4350 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 4275 4450 60  0001 C CNN "Manufacturer"
F 7 "GJM1555C1H150JB01D" H 4325 4550 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 15pF 50Volts C0G 5%" H 4375 4650 60  0001 C CNN "Description"
F 9 "15pF" H 4400 3650 50  0000 C CNN "Component Value"
	1    4275 3750
	0    1    1    0   
$EndComp
$Comp
L 120pF_0603_GRM1885C2A121JA01D C322
U 1 1 5D970F3D
P 4875 4150
F 0 "C322" H 4925 4250 50  0000 L CNN
F 1 "120pF_0603_GRM1885C2A121JA01D" H 4225 4850 50  0001 L CNN
F 2 "SMD0603" H 4875 4750 60  0001 C CNN
F 3 "" H 4875 4150 60  0000 C CNN
F 4 "Mouser" H 4875 5350 60  0001 C CNN "Vendor"
F 5 "81-GRM1885C2A121JA01" H 4825 5250 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 4825 5150 60  0001 C CNN "Manufacturer"
F 7 "GRM1885C2A121JA01D" H 4825 5050 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0603 120pF 100volts C0G 5%" H 4825 4950 60  0001 C CNN "Description"
F 9 "120pF" H 5000 4050 50  0000 C CNN "Component Value"
	1    4875 4150
	1    0    0    -1  
$EndComp
$Comp
L 120pF_0603_GRM1885C2A121JA01D C324
U 1 1 5D971044
P 6575 4150
F 0 "C324" H 6625 4250 50  0000 L CNN
F 1 "120pF_0603_GRM1885C2A121JA01D" H 5925 4850 50  0001 L CNN
F 2 "SMD0603" H 6575 4750 60  0001 C CNN
F 3 "" H 6575 4150 60  0000 C CNN
F 4 "Mouser" H 6575 5350 60  0001 C CNN "Vendor"
F 5 "81-GRM1885C2A121JA01" H 6525 5250 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 6525 5150 60  0001 C CNN "Manufacturer"
F 7 "GRM1885C2A121JA01D" H 6525 5050 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0603 120pF 100volts C0G 5%" H 6525 4950 60  0001 C CNN "Description"
F 9 "120pF" H 6700 4050 50  0000 C CNN "Component Value"
	1    6575 4150
	1    0    0    -1  
$EndComp
$Comp
L 4.3pF_0402_GCM1555C1H4R3CA16D C325
U 1 1 5D97547F
P 7425 3750
F 0 "C325" H 7475 3850 50  0000 L CNN
F 1 "4.3pF_0402_GCM1555C1H4R3CA16D" H 7075 4150 50  0001 L CNN
F 2 "SMD0402" H 7425 4050 39  0001 C CNN
F 3 "" H 7475 3850 60  0000 C CNN
F 4 "Mouser" H 7425 4250 60  0001 C CNN "Vendor"
F 5 "81-GCM1555C1H4R3CA6D" H 7375 4350 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 7425 4450 60  0001 C CNN "Manufacturer"
F 7 "GCM1555C1H4R3CA16D" H 7475 4550 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 4.3pF 50volts C0G" H 7525 4650 60  0001 C CNN "Description"
F 9 "4.3pF" H 7550 3650 50  0000 C CNN "Component Value"
	1    7425 3750
	0    1    1    0   
$EndComp
$Comp
L 20pF_0402_GJM1555C1H200GB01D C323
U 1 1 5D977602
P 5725 3750
F 0 "C323" H 5775 3850 50  0000 L CNN
F 1 "20pF_0402_GJM1555C1H200GB01D" H 5375 4150 50  0001 L CNN
F 2 "SMD0402" H 5725 4050 39  0001 C CNN
F 3 "" H 5775 3850 60  0000 C CNN
F 4 "Mouser" H 5725 4250 60  0001 C CNN "Vendor"
F 5 "81-GJM1555C1H200GB01" H 5675 4350 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 5725 4450 60  0001 C CNN "Manufacturer"
F 7 "GJM1555C1H200GB01D" H 5775 4550 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0402 20pF 50Volts C0G 2%" H 5825 4650 60  0001 C CNN "Description"
F 9 "20pF" H 5850 3650 50  0000 C CNN "Component Value"
	1    5725 3750
	0    1    1    0   
$EndComp
$Comp
L 220nH_0805_0805HP-221XGRB L73
U 1 1 5D97BE2E
P 4275 3250
F 0 "L73" V 4190 3280 50  0000 C CNN
F 1 "220nH_0805_0805HP-221XGRB" H 4275 3500 50  0001 C CNN
F 2 "SMD0805" H 4275 3600 60  0001 C CNN
F 3 "" H 4275 3250 60  0000 C CNN
F 4 "Mouser" H 4275 4100 60  0001 C CNN "Vendor"
F 5 "994-0805HP-221XGRB" H 4275 4000 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 4275 3900 60  0001 C CNN "Manufacturer"
F 7 "0805HP-221XGRB" H 4275 3800 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 220nH 2% 0.5A DCR=0.426Ohms" H 4275 3700 60  0001 C CNN "Description"
F 9 "220nH" V 4340 3230 50  0000 C CNN "Component Value"
	1    4275 3250
	0    1    1    0   
$EndComp
$Comp
L 180nH_0805_0805HP-181XGRB L74
U 1 1 5D97E02A
P 5475 3250
F 0 "L74" V 5390 3280 50  0000 C CNN
F 1 "180nH_0805_0805HP-181XGRB" H 5475 3500 50  0001 C CNN
F 2 "SMD0805" H 5475 3600 60  0001 C CNN
F 3 "" H 5475 3250 60  0000 C CNN
F 4 "Mouser" H 5475 4100 60  0001 C CNN "Vendor"
F 5 "994-0805HP-181XGRB" H 5475 4000 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 5475 3900 60  0001 C CNN "Manufacturer"
F 7 "0805HP-181XGRB" H 5475 3800 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 180nH 2% 0.54A" H 5475 3700 60  0001 C CNN "Description"
F 9 "180nH" V 5540 3230 50  0000 C CNN "Component Value"
	1    5475 3250
	0    1    1    0   
$EndComp
$Comp
L 56nH_0805_0805HP-56NXGRB L75
U 1 1 5D98022F
P 6025 3250
F 0 "L75" V 5940 3280 50  0000 C CNN
F 1 "56nH_0805_0805HP-56NXGRB" H 6025 3500 50  0001 C CNN
F 2 "SMD0805" H 6025 3600 60  0001 C CNN
F 3 "" H 6025 3250 60  0000 C CNN
F 4 "Mouser" H 6025 4100 60  0001 C CNN "Vendor"
F 5 "994-0805HP-56NXGRB" H 6025 4000 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 6025 3900 60  0001 C CNN "Manufacturer"
F 7 "0805HP-56NXGRB" H 6025 3800 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 56nH 2% 0.95A" H 6025 3700 60  0001 C CNN "Description"
F 9 "56nH" V 6090 3230 50  0000 C CNN "Component Value"
	1    6025 3250
	0    1    1    0   
$EndComp
$Comp
L 150nH_0805_0805HP-151XGRB L76
U 1 1 5D982475
P 7175 3250
F 0 "L76" V 7090 3280 50  0000 C CNN
F 1 "150nH_0805_0805HP-151XGRB" H 7175 3500 50  0001 C CNN
F 2 "SMD0805" H 7175 3600 60  0001 C CNN
F 3 "" H 7175 3250 60  0000 C CNN
F 4 "Mouser" H 7175 4100 60  0001 C CNN "Vendor"
F 5 "994-0805HP-151XGRB" H 7175 4000 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 7175 3900 60  0001 C CNN "Manufacturer"
F 7 "0805HP-151XGRB" H 7175 3800 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 150nH 2% 0.6A" H 7175 3700 60  0001 C CNN "Description"
F 9 "150nH" V 7240 3230 50  0000 C CNN "Component Value"
	1    7175 3250
	0    1    1    0   
$EndComp
$Comp
L 82nH_0805_0805HP-82NXJRB L77
U 1 1 5D984686
P 7725 3250
F 0 "L77" V 7640 3280 50  0000 C CNN
F 1 "82nH_0805_0805HP-82NXJRB" H 7725 3500 50  0001 C CNN
F 2 "SMD0805" H 7725 3600 60  0001 C CNN
F 3 "" H 7725 3250 60  0000 C CNN
F 4 "Mouser" H 7725 4100 60  0001 C CNN "Vendor"
F 5 "994-0805HP-82NXJRB" H 7725 4000 60  0001 C CNN "Vendor Part Number"
F 6 "Coilcraft" H 7725 3900 60  0001 C CNN "Manufacturer"
F 7 "0805HP-82NXJRB" H 7725 3800 60  0001 C CNN "Manufacturer Part Number"
F 8 "Fixed Inductors 82nH 5% 0.82A" H 7725 3700 60  0001 C CNN "Description"
F 9 "82nH" V 7790 3230 50  0000 C CNN "Component Value"
	1    7725 3250
	0    1    1    0   
$EndComp
$Comp
L 82pF_0603_GRM1885C1H820JA01D C326
U 1 1 5E1EABCF
P 8275 4150
F 0 "C326" H 8325 4250 50  0000 L CNN
F 1 "82pF_0603_GRM1885C1H820JA01D" H 7625 4600 50  0001 L CNN
F 2 "SMD0603" H 8275 4500 60  0001 C CNN
F 3 "" H 8275 4150 60  0000 C CNN
F 4 "Mouser" H 8275 5100 60  0001 C CNN "Vendor"
F 5 "81-GRM39C820J50" H 8275 5000 60  0001 C CNN "Vendor Part Number"
F 6 "Murata Electronics" H 8275 4900 60  0001 C CNN "Manufacturer"
F 7 "GRM1885C1H820JA01D" H 8275 4800 60  0001 C CNN "Manufacturer Part Number"
F 8 "Multilayer Ceramic Capacitors MLCC - SMD/SMT 0603 82pF 50volts C0G 5%" H 8275 4700 60  0001 C CNN "Description"
F 9 "82pF" H 8400 4050 50  0000 C CNN "Component Value"
	1    8275 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC