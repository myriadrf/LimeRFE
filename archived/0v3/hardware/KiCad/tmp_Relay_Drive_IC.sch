EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:GPIO_Subsystem-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ULN2003A U?
U 1 1 5C7E59DF
P 3000 3550
F 0 "U?" H 3000 4075 50  0000 C CNN
F 1 "ULN2003A" H 3000 4000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3050 2900 50  0001 L CNN
F 3 "" H 3100 3450 50  0001 C CNN
	1    3000 3550
	1    0    0    -1  
$EndComp
$Comp
L ULN2003A U?
U 1 1 5C7E59E0
P 3000 1800
F 0 "U?" H 3000 2325 50  0000 C CNN
F 1 "ULN2003A" H 3000 2250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3050 1150 50  0001 L CNN
F 3 "" H 3100 1700 50  0001 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L ULN2003A U?
U 1 1 5C7E59E1
P 3000 5150
F 0 "U?" H 3000 5675 50  0000 C CNN
F 1 "ULN2003A" H 3000 5600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 3050 4500 50  0001 L CNN
F 3 "" H 3100 5050 50  0001 C CNN
	1    3000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2100 2250 3350
Wire Wire Line
	2250 3350 2600 3350
Wire Wire Line
	2600 3250 2250 3250
Connection ~ 2250 3250
Wire Wire Line
	2150 2600 2250 2600
Wire Wire Line
	2300 3450 2600 3450
Wire Wire Line
	2500 3450 2500 3650
Wire Wire Line
	2500 3550 2600 3550
Wire Wire Line
	2500 3650 2600 3650
Connection ~ 2500 3550
Connection ~ 2500 3450
Wire Wire Line
	2300 5350 2600 5350
Wire Wire Line
	2600 5450 2450 5450
Wire Wire Line
	2450 5450 2450 5350
Connection ~ 2450 5350
Wire Wire Line
	2600 5250 2450 5250
Wire Wire Line
	2450 5250 2450 5150
Wire Wire Line
	2300 5150 2600 5150
Connection ~ 2450 5150
Wire Wire Line
	2600 5050 2450 5050
Wire Wire Line
	2450 5050 2450 4950
Wire Wire Line
	2300 4950 2600 4950
Connection ~ 2450 4950
Wire Wire Line
	2450 4850 2600 4850
Wire Wire Line
	2450 3750 2450 4850
Wire Wire Line
	2450 3850 2600 3850
Wire Wire Line
	2300 3750 2600 3750
Connection ~ 2450 3850
Connection ~ 2450 3750
Wire Wire Line
	3400 1500 3500 1500
Wire Wire Line
	3500 1500 3500 1700
Wire Wire Line
	3400 1700 4050 1700
Wire Wire Line
	3400 1600 3500 1600
Connection ~ 3500 1600
Wire Wire Line
	3400 1800 3500 1800
Wire Wire Line
	3500 1800 3500 2000
Wire Wire Line
	3400 2000 4050 2000
Wire Wire Line
	3400 1900 3500 1900
Connection ~ 3500 1900
Wire Wire Line
	3550 3350 3400 3350
Wire Wire Line
	3550 2100 3550 3350
Wire Wire Line
	3550 3250 3400 3250
Wire Wire Line
	3550 2100 3400 2100
Connection ~ 3550 3250
Wire Wire Line
	3400 3450 4050 3450
Wire Wire Line
	3550 3450 3550 3650
Wire Wire Line
	3550 3650 3400 3650
Wire Wire Line
	3400 3550 3550 3550
Connection ~ 3550 3550
Wire Wire Line
	3400 3750 4050 3750
Wire Wire Line
	3550 3750 3550 4850
Wire Wire Line
	3550 3850 3400 3850
Wire Wire Line
	3550 4850 3400 4850
Connection ~ 3550 3850
Wire Wire Line
	3400 4950 4050 4950
Wire Wire Line
	3550 4950 3550 5050
Wire Wire Line
	3550 5050 3400 5050
Wire Wire Line
	3400 5150 4050 5150
Wire Wire Line
	3550 5150 3550 5250
Wire Wire Line
	3550 5250 3400 5250
Wire Wire Line
	3400 5350 4050 5350
Wire Wire Line
	3550 5350 3550 5450
Wire Wire Line
	3550 5450 3400 5450
Wire Wire Line
	4900 5650 3400 5650
Wire Wire Line
	4900 1050 4900 5650
Wire Wire Line
	3400 4050 4900 4050
Connection ~ 4900 4050
Wire Wire Line
	3400 2300 4900 2300
Connection ~ 4900 2300
$Comp
L GND #PWR?
U 1 1 5C7E59E2
P 3000 6000
F 0 "#PWR?" H 3000 5750 50  0001 C CNN
F 1 "GND" H 3000 5850 50  0000 C CNN
F 2 "" H 3000 6000 50  0001 C CNN
F 3 "" H 3000 6000 50  0001 C CNN
	1    3000 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C7E59E3
P 3000 4350
F 0 "#PWR?" H 3000 4100 50  0001 C CNN
F 1 "GND" H 3000 4200 50  0000 C CNN
F 2 "" H 3000 4350 50  0001 C CNN
F 3 "" H 3000 4350 50  0001 C CNN
	1    3000 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C7E59E4
P 3000 2600
F 0 "#PWR?" H 3000 2350 50  0001 C CNN
F 1 "GND" H 3000 2450 50  0000 C CNN
F 2 "" H 3000 2600 50  0001 C CNN
F 3 "" H 3000 2600 50  0001 C CNN
	1    3000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2600 3000 2500
Wire Wire Line
	3000 4350 3000 4250
Wire Wire Line
	3000 5850 3000 6000
$Comp
L VCOM #PWR?
U 1 1 5C7E59E5
P 4900 1050
F 0 "#PWR?" H 4900 900 50  0001 C CNN
F 1 "VCOM" H 4900 1200 50  0000 C CNN
F 2 "" H 4900 1050 50  0001 C CNN
F 3 "" H 4900 1050 50  0001 C CNN
	1    4900 1050
	1    0    0    -1  
$EndComp
Text GLabel 4050 1700 2    60   BiDi ~ 0
RELAY_0
Text GLabel 4050 2000 2    60   BiDi ~ 0
RELAY_1
Text GLabel 4050 2700 2    60   BiDi ~ 0
RELAY_2
Text GLabel 4050 3450 2    60   BiDi ~ 0
RELAY_3
Text GLabel 4050 3750 2    60   BiDi ~ 0
RELAY_4
Text GLabel 4050 4950 2    60   BiDi ~ 0
RELAY_5
Text GLabel 4050 5150 2    60   BiDi ~ 0
RELAY_6
Text GLabel 4050 5350 2    60   BiDi ~ 0
RELAY_7
Connection ~ 3550 5350
Connection ~ 3550 5150
Connection ~ 3550 4950
Connection ~ 3550 3750
Connection ~ 3550 3450
Wire Wire Line
	4050 2700 3550 2700
Connection ~ 3550 2700
Connection ~ 3500 2000
Connection ~ 3500 1700
$Comp
L R R?
U 1 1 5C7E59E6
P 2150 1500
F 0 "R?" V 2230 1500 50  0000 C CNN
F 1 "0R" V 2150 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 1500 50  0001 C CNN
F 3 "" H 2150 1500 50  0001 C CNN
	1    2150 1500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59E7
P 2150 1800
F 0 "R?" V 2230 1800 50  0000 C CNN
F 1 "0R" V 2150 1800 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 1800 50  0001 C CNN
F 3 "" H 2150 1800 50  0001 C CNN
	1    2150 1800
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59E8
P 2000 2600
F 0 "R?" V 2080 2600 50  0000 C CNN
F 1 "0R" V 2000 2600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 1930 2600 50  0001 C CNN
F 3 "" H 2000 2600 50  0001 C CNN
	1    2000 2600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59E9
P 2150 3450
F 0 "R?" V 2230 3450 50  0000 C CNN
F 1 "0R" V 2150 3450 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 3450 50  0001 C CNN
F 3 "" H 2150 3450 50  0001 C CNN
	1    2150 3450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59EA
P 2150 3750
F 0 "R?" V 2230 3750 50  0000 C CNN
F 1 "0R" V 2150 3750 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 3750 50  0001 C CNN
F 3 "" H 2150 3750 50  0001 C CNN
	1    2150 3750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59EB
P 2150 4950
F 0 "R?" V 2230 4950 50  0000 C CNN
F 1 "0R" V 2150 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 4950 50  0001 C CNN
F 3 "" H 2150 4950 50  0001 C CNN
	1    2150 4950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59EC
P 2150 5150
F 0 "R?" V 2230 5150 50  0000 C CNN
F 1 "0R" V 2150 5150 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 5150 50  0001 C CNN
F 3 "" H 2150 5150 50  0001 C CNN
	1    2150 5150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5C7E59ED
P 2150 5350
F 0 "R?" V 2230 5350 50  0000 C CNN
F 1 "0R" V 2150 5350 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" V 2080 5350 50  0001 C CNN
F 3 "" H 2150 5350 50  0001 C CNN
	1    2150 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 5350 2000 5350
Wire Wire Line
	1350 5150 2000 5150
Wire Wire Line
	1350 4950 2000 4950
Wire Wire Line
	1350 3750 2000 3750
Wire Wire Line
	1350 3450 2000 3450
Wire Wire Line
	2000 1500 1350 1500
Wire Wire Line
	1350 1800 2000 1800
Wire Wire Line
	1850 2600 1350 2600
Text GLabel 1350 1500 0    60   BiDi ~ 0
GPIO0
Text GLabel 1350 1800 0    60   BiDi ~ 0
GPIO1
Text GLabel 1350 2600 0    60   BiDi ~ 0
GPIO2
Text GLabel 1350 3450 0    60   BiDi ~ 0
GPIO3
Text GLabel 1350 3750 0    60   BiDi ~ 0
GPIO4
Text GLabel 1350 4950 0    60   BiDi ~ 0
GPIO5
Text GLabel 1350 5150 0    60   BiDi ~ 0
GPIO6
Text GLabel 1350 5350 0    60   BiDi ~ 0
GPIO7
Wire Wire Line
	2300 1500 2600 1500
Wire Wire Line
	2600 1700 2500 1700
Wire Wire Line
	2500 1700 2500 1500
Connection ~ 2500 1500
Wire Wire Line
	2600 1600 2500 1600
Connection ~ 2500 1600
Wire Wire Line
	2300 1800 2600 1800
Wire Wire Line
	2600 1900 2500 1900
Wire Wire Line
	2500 1800 2500 2000
Connection ~ 2500 1800
Wire Wire Line
	2500 2000 2600 2000
Connection ~ 2500 1900
Wire Wire Line
	2250 2100 2600 2100
Connection ~ 2250 2600
$EndSCHEMATC
