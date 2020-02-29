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
LIBS:LimeSDR_Breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L CONN_02X05 J?
U 1 1 5C7E4F4B
P 1350 1250
F 0 "J?" H 1350 1550 50  0000 C CNN
F 1 "CONN_02X05" H 1350 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm_SMD" H 1350 50  50  0001 C CNN
F 3 "" H 1350 50  50  0001 C CNN
	1    1350 1250
	1    0    0    -1  
$EndComp
$Comp
L DIP_8_SW SW?
U 1 1 5C7E4F4C
P 10200 5750
F 0 "SW?" H 10200 6450 60  0000 C CNN
F 1 "DIP_8_SW_IKD0803101" H 10200 5450 60  0000 C CNN
F 2 "KiCad:DIP_W7.40_Gull-Wing-J" H 10200 5750 60  0001 C CNN
F 3 "" H 10200 5750 60  0001 C CNN
	1    10200 5750
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J?
U 1 1 5C7E4F4D
P 10450 3350
F 0 "J?" H 10450 4200 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 10300 3350 50  0000 C TNN
F 2 "KiCad:RS_189_6060_R" H 10450 2525 50  0001 C CNN
F 3 "" H 10425 3950 50  0001 C CNN
	1    10450 3350
	-1   0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J?
U 1 1 5C7E4F4E
P 10650 1900
F 0 "J?" H 10650 2150 50  0000 C TNN
F 1 "Screw_Terminal_1x02" V 10500 1900 50  0000 C TNN
F 2 "KiCad:RS_189-6105_reversed" H 10650 1675 50  0001 C CNN
F 3 "" H 10625 1900 50  0001 C CNN
	1    10650 1900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C7E4F4F
P 800 2100
F 0 "#PWR?" H 800 1850 50  0001 C CNN
F 1 "GND" H 800 1950 50  0000 C CNN
F 2 "" H 800 2100 50  0001 C CNN
F 3 "" H 800 2100 50  0001 C CNN
	1    800  2100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5C7E4F50
P 2300 850
F 0 "#PWR?" H 2300 700 50  0001 C CNN
F 1 "+3V3" H 2300 990 50  0000 C CNN
F 2 "" H 2300 850 50  0001 C CNN
F 3 "" H 2300 850 50  0001 C CNN
	1    2300 850 
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F51
P 1700 1750
F 0 "C?" H 1725 1850 50  0000 L CNN
F 1 "1uF 16V 0402" H 1725 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1738 1600 50  0001 C CNN
F 3 "" H 1700 1750 50  0001 C CNN
	1    1700 1750
	1    0    0    -1  
$EndComp
Text GLabel 1050 1050 0    60   BiDi ~ 0
GPIO0
Text GLabel 1650 1050 2    60   BiDi ~ 0
GPIO1
Text GLabel 1050 1150 0    60   BiDi ~ 0
GPIO2
Text GLabel 1650 1150 2    60   BiDi ~ 0
GPIO3
Text GLabel 1050 1250 0    60   BiDi ~ 0
GPIO4
Text GLabel 1650 1250 2    60   BiDi ~ 0
GPIO5
Text GLabel 1050 1350 0    60   BiDi ~ 0
GPIO6
Text GLabel 1650 1350 2    60   BiDi ~ 0
GPIO7
$Comp
L GND #PWR?
U 1 1 5C7E4F52
P 10750 6250
F 0 "#PWR?" H 10750 6000 50  0001 C CNN
F 1 "GND" H 10750 6100 50  0000 C CNN
F 2 "" H 10750 6250 50  0001 C CNN
F 3 "" H 10750 6250 50  0001 C CNN
	1    10750 6250
	1    0    0    -1  
$EndComp
Text GLabel 9250 5200 0    60   BiDi ~ 0
DIR_GPIO0
Text GLabel 8300 5300 0    60   BiDi ~ 0
DIR_GPIO1
Text GLabel 9400 5400 0    60   BiDi ~ 0
DIR_GPIO2
Text GLabel 8400 5500 0    60   BiDi ~ 0
DIR_GPIO3
Text GLabel 9500 5600 0    60   BiDi ~ 0
DIR_GPIO4
Text GLabel 8400 5700 0    60   BiDi ~ 0
DIR_GPIO5
Text GLabel 9600 5800 0    60   BiDi ~ 0
DIR_GPIO6
Text GLabel 8450 5900 0    60   BiDi ~ 0
DIR_GPIO7
$Comp
L +3V3 #PWR?
U 1 1 5C7E4F53
P 9000 4400
F 0 "#PWR?" H 9000 4250 50  0001 C CNN
F 1 "+3V3" H 9000 4540 50  0000 C CNN
F 2 "" H 9000 4400 50  0001 C CNN
F 3 "" H 9000 4400 50  0001 C CNN
	1    9000 4400
	1    0    0    -1  
$EndComp
$Comp
L R_Pack04 RN?
U 1 1 5C7E4F54
P 9450 4800
F 0 "RN?" V 9150 4800 50  0000 C CNN
F 1 "10k" V 9650 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9725 4800 50  0001 C CNN
F 3 "" H 9450 4800 50  0001 C CNN
	1    9450 4800
	-1   0    0    -1  
$EndComp
$Comp
L R_Pack04 RN?
U 1 1 5C7E4F55
P 8550 4800
F 0 "RN?" V 8250 4800 50  0000 C CNN
F 1 "10K" V 8750 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 8825 4800 50  0001 C CNN
F 3 "" H 8550 4800 50  0001 C CNN
	1    8550 4800
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 J?
U 1 1 5C7E4F56
P 4450 1300
F 0 "J?" H 4450 1600 50  0000 C CNN
F 1 "CONN_02X05" H 4450 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm_SMD" H 4450 100 50  0001 C CNN
F 3 "" H 4450 100 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
$Sheet
S 850  3950 1200 1000
U 5C7E4F57
F0 "Relay_Drive_IC" 60
F1 "file5C7E4F57.sch" 60
$EndSheet
$Sheet
S 850  2750 1200 950 
U 5C7E4F58
F0 "GPIO_Level_Shift" 60
F1 "file5C7E4F58.sch" 60
$EndSheet
Text GLabel 4100 1100 0    60   BiDi ~ 0
GPIO0_LS
Text GLabel 4950 1100 2    60   BiDi ~ 0
GPIO1_LS
Text GLabel 3600 1200 0    60   BiDi ~ 0
GPIO2_LS
Text GLabel 5450 1200 2    60   BiDi ~ 0
GPIO3_LS
Text GLabel 4100 1300 0    60   BiDi ~ 0
GPIO4_LS
Text GLabel 4950 1300 2    60   BiDi ~ 0
GPIO5_LS
Text GLabel 3600 1400 0    60   BiDi ~ 0
GPIO6_LS
Text GLabel 5450 1400 2    60   BiDi ~ 0
GPIO7_LS
$Comp
L GND #PWR?
U 1 1 5C7E4F59
P 4350 2050
F 0 "#PWR?" H 4350 1800 50  0001 C CNN
F 1 "GND" H 4350 1900 50  0000 C CNN
F 2 "" H 4350 2050 50  0001 C CNN
F 3 "" H 4350 2050 50  0001 C CNN
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L VDDA #PWR?
U 1 1 5C7E4F5A
P 4800 850
F 0 "#PWR?" H 4800 700 50  0001 C CNN
F 1 "VDDA" H 4800 1000 50  0000 C CNN
F 2 "" H 4800 850 50  0001 C CNN
F 3 "" H 4800 850 50  0001 C CNN
	1    4800 850 
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F5B
P 4800 1750
F 0 "C?" H 4825 1850 50  0000 L CNN
F 1 "1uF 16V 0402" H 4825 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4838 1600 50  0001 C CNN
F 3 "" H 4800 1750 50  0001 C CNN
	1    4800 1750
	1    0    0    -1  
$EndComp
Text Notes 5000 950  0    60   ~ 0
5v5 input max
$Comp
L VDDA #PWR?
U 1 1 5C7E4F5C
P 8000 800
F 0 "#PWR?" H 8000 650 50  0001 C CNN
F 1 "VDDA" H 8000 950 50  0000 C CNN
F 2 "" H 8000 800 50  0001 C CNN
F 3 "" H 8000 800 50  0001 C CNN
	1    8000 800 
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5C7E4F5D
P 7600 800
F 0 "#PWR?" H 7600 650 50  0001 C CNN
F 1 "+3V3" H 7600 940 50  0000 C CNN
F 2 "" H 7600 800 50  0001 C CNN
F 3 "" H 7600 800 50  0001 C CNN
	1    7600 800 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J?
U 1 1 5C7E4F5E
P 7800 1300
F 0 "J?" H 7800 1450 50  0000 C CNN
F 1 "CONN_01X02" V 7900 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7800 1300 50  0001 C CNN
F 3 "" H 7800 1300 50  0001 C CNN
	1    7800 1300
	0    1    1    0   
$EndComp
$Comp
L D_TVS_x2_AAC D?
U 1 1 5C7E4F5F
P 2600 1850
F 0 "D?" H 2600 2025 50  0000 C CNN
F 1 "GS0T03C_SOT23" H 2600 1950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2450 1850 50  0001 C CNN
F 3 "" H 2450 1850 50  0001 C CNN
	1    2600 1850
	1    0    0    -1  
$EndComp
Text Notes 2050 2250 0    60   ~ 0
TVS to clamp in case of VDDA\n= 3V3 from the lime SDR board
Text Notes 8050 1000 0    60   ~ 0
Jumper connected VDDA=3v3\nDONOT Connect when VDDA <> 3v3\n(For use in relay only mode)
$Comp
L VCOM #PWR?
U 1 1 5C7E4F60
P 10400 1700
F 0 "#PWR?" H 10400 1550 50  0001 C CNN
F 1 "VCOM" H 10400 1850 50  0000 C CNN
F 2 "" H 10400 1700 50  0001 C CNN
F 3 "" H 10400 1700 50  0001 C CNN
	1    10400 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C7E4F61
P 10400 2100
F 0 "#PWR?" H 10400 1850 50  0001 C CNN
F 1 "GND" H 10400 1950 50  0000 C CNN
F 2 "" H 10400 2100 50  0001 C CNN
F 3 "" H 10400 2100 50  0001 C CNN
	1    10400 2100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F62
P 9950 1900
F 0 "C?" H 9975 2000 50  0000 L CNN
F 1 "100nF 1206 50V" H 9975 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 9988 1750 50  0001 C CNN
F 3 "" H 9950 1900 50  0001 C CNN
	1    9950 1900
	1    0    0    -1  
$EndComp
Text GLabel 8500 2850 0    60   BiDi ~ 0
RELAY_0
Text GLabel 8500 3250 0    60   BiDi ~ 0
RELAY_1
Text GLabel 8500 3650 0    60   BiDi ~ 0
RELAY_2
Text GLabel 8500 4050 0    60   BiDi ~ 0
RELAY_3
Text GLabel 10000 2850 0    60   BiDi ~ 0
RELAY_4
Text GLabel 10000 3250 0    60   BiDi ~ 0
RELAY_5
Text GLabel 10000 3650 0    60   BiDi ~ 0
RELAY_6
Text GLabel 10000 4050 0    60   BiDi ~ 0
RELAY_7
$Sheet
S 850  5200 1200 1000
U 5C7E4F63
F0 "LED_Indication" 60
F1 "file5C7E4F63.sch" 60
$EndSheet
$Comp
L VCOM #PWR?
U 1 1 5C7E4F64
P 10100 2400
F 0 "#PWR?" H 10100 2250 50  0001 C CNN
F 1 "VCOM" H 10100 2550 50  0000 C CNN
F 2 "" H 10100 2400 50  0001 C CNN
F 3 "" H 10100 2400 50  0001 C CNN
	1    10100 2400
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J?
U 1 1 5C7E4F65
P 8900 3350
F 0 "J?" H 8900 4200 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 8750 3350 50  0000 C TNN
F 2 "KiCad:RS_189_6060_R" H 8900 2525 50  0001 C CNN
F 3 "" H 8875 3950 50  0001 C CNN
	1    8900 3350
	-1   0    0    -1  
$EndComp
$Comp
L VCOM #PWR?
U 1 1 5C7E4F66
P 8600 2400
F 0 "#PWR?" H 8600 2250 50  0001 C CNN
F 1 "VCOM" H 8600 2550 50  0000 C CNN
F 2 "" H 8600 2400 50  0001 C CNN
F 3 "" H 8600 2400 50  0001 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
$Comp
L VCOM #PWR?
U 1 1 5C7E4F67
P 3900 2850
F 0 "#PWR?" H 3900 2700 50  0001 C CNN
F 1 "VCOM" H 3900 3000 50  0000 C CNN
F 2 "" H 3900 2850 50  0001 C CNN
F 3 "" H 3900 2850 50  0001 C CNN
	1    3900 2850
	1    0    0    -1  
$EndComp
$Comp
L VDDA #PWR?
U 1 1 5C7E4F68
P 3900 3900
F 0 "#PWR?" H 3900 3750 50  0001 C CNN
F 1 "VDDA" H 3900 4050 50  0000 C CNN
F 2 "" H 3900 3900 50  0001 C CNN
F 3 "" H 3900 3900 50  0001 C CNN
	1    3900 3900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5C7E4F69
P 3900 4750
F 0 "#PWR?" H 3900 4600 50  0001 C CNN
F 1 "+3V3" H 3900 4890 50  0000 C CNN
F 2 "" H 3900 4750 50  0001 C CNN
F 3 "" H 3900 4750 50  0001 C CNN
	1    3900 4750
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 5C7E4F6A
P 4300 3350
F 0 "C?" H 4325 3450 50  0000 L CNN
F 1 "CP" H 4325 3250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 4338 3200 50  0001 C CNN
F 3 "" H 4300 3350 50  0001 C CNN
	1    4300 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F6B
P 5000 3350
F 0 "C?" H 5025 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 5000 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5038 3200 50  0001 C CNN
F 3 "" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F6C
P 5300 3350
F 0 "C?" H 5325 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 5250 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5338 3200 50  0001 C CNN
F 3 "" H 5300 3350 50  0001 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F6D
P 5600 3350
F 0 "C?" H 5625 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 5700 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5638 3200 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F6E
P 6250 3350
F 0 "C?" H 6275 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 6150 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6288 3200 50  0001 C CNN
F 3 "" H 6250 3350 50  0001 C CNN
	1    6250 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F6F
P 5950 3350
F 0 "C?" H 5975 3450 50  0000 L CNN
F 1 "DNI" H 5800 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5988 3200 50  0001 C CNN
F 3 "" H 5950 3350 50  0001 C CNN
	1    5950 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F70
P 6550 3350
F 0 "C?" H 6575 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 6500 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6588 3200 50  0001 C CNN
F 3 "" H 6550 3350 50  0001 C CNN
	1    6550 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F71
P 6850 3350
F 0 "C?" H 6875 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 6850 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6888 3200 50  0001 C CNN
F 3 "" H 6850 3350 50  0001 C CNN
	1    6850 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F72
P 7150 3350
F 0 "C?" H 7175 3450 50  0000 L CNN
F 1 "100nF 1206 50V" H 7175 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7188 3200 50  0001 C CNN
F 3 "" H 7150 3350 50  0001 C CNN
	1    7150 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F73
P 4300 4250
F 0 "C?" H 4325 4350 50  0000 L CNN
F 1 "1uF 16V 0402" H 4325 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4338 4100 50  0001 C CNN
F 3 "" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F74
P 4950 4250
F 0 "C?" H 4975 4350 50  0000 L CNN
F 1 "1uF 16V 0402" H 4975 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4988 4100 50  0001 C CNN
F 3 "" H 4950 4250 50  0001 C CNN
	1    4950 4250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F75
P 5550 4250
F 0 "C?" H 5575 4350 50  0000 L CNN
F 1 "1uF 16V 0402" H 5575 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5588 4100 50  0001 C CNN
F 3 "" H 5550 4250 50  0001 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F76
P 6150 4250
F 0 "C?" H 6175 4350 50  0000 L CNN
F 1 "1uF 16V 0402" H 6175 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6188 4100 50  0001 C CNN
F 3 "" H 6150 4250 50  0001 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F77
P 4300 5100
F 0 "C?" H 4325 5200 50  0000 L CNN
F 1 "1uF 16V 0402" H 4325 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4338 4950 50  0001 C CNN
F 3 "" H 4300 5100 50  0001 C CNN
	1    4300 5100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F78
P 4950 5100
F 0 "C?" H 4975 5200 50  0000 L CNN
F 1 "1uF 16V 0402" H 4975 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4988 4950 50  0001 C CNN
F 3 "" H 4950 5100 50  0001 C CNN
	1    4950 5100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F79
P 5550 5100
F 0 "C?" H 5575 5200 50  0000 L CNN
F 1 "1uF 16V 0402" H 5575 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5588 4950 50  0001 C CNN
F 3 "" H 5550 5100 50  0001 C CNN
	1    5550 5100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5C7E4F7A
P 6150 5100
F 0 "C?" H 6175 5200 50  0000 L CNN
F 1 "1uF 16V 0402" H 6175 5000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6188 4950 50  0001 C CNN
F 3 "" H 6150 5100 50  0001 C CNN
	1    6150 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1450 800  1450
Wire Wire Line
	800  1450 800  2100
Wire Wire Line
	2300 1450 2300 850 
Wire Wire Line
	1600 1450 2300 1450
Wire Wire Line
	800  2050 2600 2050
Connection ~ 800  2050
Wire Wire Line
	1700 1600 1700 1450
Connection ~ 1700 1450
Wire Wire Line
	1050 1050 1100 1050
Wire Wire Line
	1050 1150 1100 1150
Wire Wire Line
	1050 1250 1100 1250
Wire Wire Line
	1050 1350 1100 1350
Wire Wire Line
	1600 1050 1650 1050
Wire Wire Line
	1600 1150 1650 1150
Wire Wire Line
	1600 1250 1650 1250
Wire Wire Line
	1600 1350 1650 1350
Wire Wire Line
	10700 5200 10750 5200
Wire Wire Line
	10750 5200 10750 6250
Wire Wire Line
	10700 5300 10750 5300
Connection ~ 10750 5300
Wire Wire Line
	10700 5400 10750 5400
Connection ~ 10750 5400
Wire Wire Line
	10700 5500 10750 5500
Connection ~ 10750 5500
Wire Wire Line
	10700 5600 10750 5600
Connection ~ 10750 5600
Wire Wire Line
	10700 5700 10750 5700
Connection ~ 10750 5700
Wire Wire Line
	10700 5800 10750 5800
Connection ~ 10750 5800
Wire Wire Line
	10700 5900 10750 5900
Connection ~ 10750 5900
Wire Wire Line
	9250 5200 9700 5200
Wire Wire Line
	8300 5300 9700 5300
Wire Wire Line
	9400 5400 9700 5400
Wire Wire Line
	8400 5500 9700 5500
Wire Wire Line
	9500 5600 9700 5600
Wire Wire Line
	8400 5700 9700 5700
Wire Wire Line
	9600 5800 9700 5800
Wire Wire Line
	8450 5900 9700 5900
Wire Wire Line
	9350 5000 9350 5200
Connection ~ 9350 5200
Wire Wire Line
	9450 5000 9450 5400
Connection ~ 9450 5400
Wire Wire Line
	9550 5000 9550 5600
Connection ~ 9550 5600
Wire Wire Line
	9650 5000 9650 5800
Connection ~ 9650 5800
Wire Wire Line
	8650 5000 8650 5900
Connection ~ 8650 5900
Wire Wire Line
	8550 5000 8550 5700
Connection ~ 8550 5700
Wire Wire Line
	8450 5000 8450 5500
Connection ~ 8450 5500
Wire Wire Line
	8350 5000 8350 5300
Connection ~ 8350 5300
Wire Wire Line
	9650 4500 9650 4600
Wire Wire Line
	8350 4500 9650 4500
Wire Wire Line
	8350 4500 8350 4600
Wire Wire Line
	9000 4400 9000 4500
Connection ~ 9000 4500
Wire Wire Line
	8450 4600 8450 4500
Connection ~ 8450 4500
Wire Wire Line
	8550 4600 8550 4500
Connection ~ 8550 4500
Wire Wire Line
	8650 4600 8650 4500
Connection ~ 8650 4500
Wire Wire Line
	9350 4600 9350 4500
Connection ~ 9350 4500
Wire Wire Line
	9450 4600 9450 4500
Connection ~ 9450 4500
Wire Wire Line
	9550 4600 9550 4500
Connection ~ 9550 4500
Wire Wire Line
	4100 1100 4200 1100
Wire Wire Line
	4200 1200 3600 1200
Wire Wire Line
	4100 1300 4200 1300
Wire Wire Line
	4200 1400 3600 1400
Wire Wire Line
	4700 1100 4950 1100
Wire Wire Line
	5450 1200 4700 1200
Wire Wire Line
	4700 1300 4950 1300
Wire Wire Line
	5450 1400 4700 1400
Wire Wire Line
	4700 1500 4800 1500
Wire Wire Line
	4800 850  4800 1600
Wire Wire Line
	4200 1500 4000 1500
Wire Wire Line
	4000 1500 4000 1950
Wire Wire Line
	4800 1950 4800 1900
Wire Wire Line
	4000 1950 4800 1950
Connection ~ 4800 1500
Wire Wire Line
	8000 1100 7850 1100
Wire Wire Line
	8000 800  8000 1100
Wire Wire Line
	7750 1100 7600 1100
Wire Wire Line
	7600 1100 7600 800 
Wire Wire Line
	2200 1850 2250 1850
Wire Wire Line
	2200 1450 2200 1850
Connection ~ 2200 1450
Wire Wire Line
	2950 1850 3000 1850
Wire Wire Line
	3000 1850 3000 1650
Wire Wire Line
	3000 1650 2200 1650
Connection ~ 2200 1650
Wire Wire Line
	2600 2050 2600 2000
Wire Wire Line
	4350 2050 4350 1950
Connection ~ 4350 1950
Wire Wire Line
	10100 2400 10100 3850
Wire Wire Line
	10100 2650 10250 2650
Wire Wire Line
	10100 3050 10250 3050
Connection ~ 10100 2650
Wire Wire Line
	10100 3450 10250 3450
Connection ~ 10100 3050
Wire Wire Line
	10100 3850 10250 3850
Connection ~ 10100 3450
Wire Wire Line
	10000 2850 10250 2850
Wire Wire Line
	10250 3250 10000 3250
Wire Wire Line
	10000 3650 10250 3650
Wire Wire Line
	10250 4050 10000 4050
Wire Wire Line
	8600 2400 8600 3850
Wire Wire Line
	8600 2650 8700 2650
Wire Wire Line
	8600 3050 8700 3050
Connection ~ 8600 2650
Wire Wire Line
	8600 3450 8700 3450
Connection ~ 8600 3050
Wire Wire Line
	8600 3850 8700 3850
Connection ~ 8600 3450
Wire Wire Line
	8500 4050 8700 4050
Wire Wire Line
	8700 3650 8500 3650
Wire Wire Line
	8500 3250 8700 3250
Wire Wire Line
	8700 2850 8500 2850
Wire Wire Line
	10400 2000 10400 2100
Wire Wire Line
	10400 2000 10450 2000
Wire Wire Line
	10400 1800 10450 1800
Wire Wire Line
	10400 1700 10400 1800
Wire Wire Line
	9950 1750 9950 1700
Wire Wire Line
	9950 1700 10300 1700
Wire Wire Line
	10300 1700 10300 1750
Wire Wire Line
	10300 1750 10400 1750
Connection ~ 10400 1750
Wire Wire Line
	10400 2050 10300 2050
Wire Wire Line
	10300 2050 10300 2100
Wire Wire Line
	10300 2100 9950 2100
Wire Wire Line
	9950 2100 9950 2050
Connection ~ 10400 2050
Wire Wire Line
	3900 2850 3900 3050
Wire Wire Line
	3900 3050 7150 3050
Wire Wire Line
	7150 3050 7150 3200
Wire Wire Line
	6850 3200 6850 3050
Connection ~ 6850 3050
Wire Wire Line
	6550 3200 6550 3050
Connection ~ 6550 3050
Wire Wire Line
	6250 3200 6250 3050
Connection ~ 6250 3050
Wire Wire Line
	5950 3200 5950 3050
Connection ~ 5950 3050
Wire Wire Line
	5600 3050 5600 3200
Connection ~ 5600 3050
Wire Wire Line
	5300 3200 5300 3050
Connection ~ 5300 3050
Wire Wire Line
	5000 3200 5000 3050
Connection ~ 5000 3050
Wire Wire Line
	4300 3200 4300 3050
Connection ~ 4300 3050
Wire Wire Line
	4300 3500 4300 3750
Wire Wire Line
	4300 3750 7150 3750
Wire Wire Line
	7150 3500 7150 4000
Wire Wire Line
	6850 3500 6850 3750
Connection ~ 6850 3750
Wire Wire Line
	6550 3500 6550 3750
Connection ~ 6550 3750
Wire Wire Line
	6250 3500 6250 3750
Connection ~ 6250 3750
Wire Wire Line
	5950 3500 5950 3750
Connection ~ 5950 3750
Wire Wire Line
	5600 3500 5600 3750
Connection ~ 5600 3750
Wire Wire Line
	5300 3500 5300 3750
Connection ~ 5300 3750
Wire Wire Line
	5000 3500 5000 3750
Connection ~ 5000 3750
Wire Wire Line
	4300 4100 4300 4000
Wire Wire Line
	3900 4000 6150 4000
Wire Wire Line
	6150 4000 6150 4100
Wire Wire Line
	5550 4000 5550 4100
Connection ~ 5550 4000
Wire Wire Line
	4950 4100 4950 4000
Connection ~ 4950 4000
Wire Wire Line
	6150 4400 6150 4600
Wire Wire Line
	4300 4550 6150 4550
Wire Wire Line
	4300 4550 4300 4400
Wire Wire Line
	4950 4400 4950 4550
Connection ~ 4950 4550
Wire Wire Line
	5550 4400 5550 4550
Connection ~ 5550 4550
Wire Wire Line
	4300 4950 4300 4800
Wire Wire Line
	3900 4800 6150 4800
Wire Wire Line
	6150 4800 6150 4950
Wire Wire Line
	5550 4950 5550 4800
Connection ~ 5550 4800
Wire Wire Line
	4950 4950 4950 4800
Connection ~ 4950 4800
Wire Wire Line
	4300 5250 4300 5350
Wire Wire Line
	4300 5350 6150 5350
Wire Wire Line
	6150 5250 6150 5400
Wire Wire Line
	5550 5250 5550 5350
Connection ~ 5550 5350
Wire Wire Line
	4950 5250 4950 5350
Connection ~ 4950 5350
Wire Wire Line
	3900 4800 3900 4750
Connection ~ 4300 4800
Wire Wire Line
	3900 4000 3900 3900
Connection ~ 4300 4000
$Comp
L GND #PWR?
U 1 1 5C7E4F7B
P 7150 4000
F 0 "#PWR?" H 7150 3750 50  0001 C CNN
F 1 "GND" H 7150 3850 50  0000 C CNN
F 2 "" H 7150 4000 50  0001 C CNN
F 3 "" H 7150 4000 50  0001 C CNN
	1    7150 4000
	1    0    0    -1  
$EndComp
Connection ~ 7150 3750
$Comp
L GND #PWR?
U 1 1 5C7E4F7C
P 6150 4600
F 0 "#PWR?" H 6150 4350 50  0001 C CNN
F 1 "GND" H 6150 4450 50  0000 C CNN
F 2 "" H 6150 4600 50  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5C7E4F7D
P 6150 5400
F 0 "#PWR?" H 6150 5150 50  0001 C CNN
F 1 "GND" H 6150 5250 50  0000 C CNN
F 2 "" H 6150 5400 50  0001 C CNN
F 3 "" H 6150 5400 50  0001 C CNN
	1    6150 5400
	1    0    0    -1  
$EndComp
Connection ~ 6150 5350
Connection ~ 6150 4550
Wire Wire Line
	1700 1900 1700 2050
Connection ~ 1700 2050
$Comp
L CONN_02X05 J?
U 1 1 5C7E4F7E
P 3100 5800
F 0 "J?" H 3100 6100 50  0000 C CNN
F 1 "CONN_02X05" H 3100 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch1.27mm_SMD" H 3100 4600 50  0001 C CNN
F 3 "" H 3100 4600 50  0001 C CNN
	1    3100 5800
	1    0    0    -1  
$EndComp
Text GLabel 2800 5600 0    60   BiDi ~ 0
GPIO0
Text GLabel 3400 5600 2    60   BiDi ~ 0
GPIO1
Text GLabel 2800 5700 0    60   BiDi ~ 0
GPIO2
Text GLabel 3400 5700 2    60   BiDi ~ 0
GPIO3
Text GLabel 2800 5800 0    60   BiDi ~ 0
GPIO4
Text GLabel 3400 5800 2    60   BiDi ~ 0
GPIO5
Text GLabel 2800 5900 0    60   BiDi ~ 0
GPIO6
Text GLabel 3400 5900 2    60   BiDi ~ 0
GPIO7
Wire Wire Line
	2800 5600 2850 5600
Wire Wire Line
	2800 5700 2850 5700
Wire Wire Line
	2800 5800 2850 5800
Wire Wire Line
	2800 5900 2850 5900
Wire Wire Line
	3350 5600 3400 5600
Wire Wire Line
	3350 5700 3400 5700
Wire Wire Line
	3350 5800 3400 5800
Wire Wire Line
	3350 5900 3400 5900
$Comp
L GND #PWR?
U 1 1 5C7E4F7F
P 2750 6100
F 0 "#PWR?" H 2750 5850 50  0001 C CNN
F 1 "GND" H 2750 5950 50  0000 C CNN
F 2 "" H 2750 6100 50  0001 C CNN
F 3 "" H 2750 6100 50  0001 C CNN
	1    2750 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5C7E4F80
P 3950 5900
F 0 "#PWR?" H 3950 5750 50  0001 C CNN
F 1 "+3V3" H 3950 6040 50  0000 C CNN
F 2 "" H 3950 5900 50  0001 C CNN
F 3 "" H 3950 5900 50  0001 C CNN
	1    3950 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6000 3950 6000
Wire Wire Line
	3950 6000 3950 5900
Wire Wire Line
	2850 6000 2750 6000
Wire Wire Line
	2750 6000 2750 6100
Text Notes 3000 6350 0    60   ~ 0
Connector for rear
$EndSCHEMATC
