EESchema Schematic File Version 2
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
LIBS:LimeMicroBGD_Library
LIBS:FilterLib
LIBS:HAM_BOARD-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 35 46
Title ""
Date "7 feb 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3225 3650 1500 900 
U 59CBAA17
F0 "PREDRIVER" 50
F1 "PREDRIVER.sch" 50
F2 "PREDRIVER_EN" I L 3225 3800 60 
F3 "PREDRIVER_VDD" I L 3225 3950 60 
F4 "RF_IN" I L 3225 4200 60 
F5 "RF_OUT" O R 4725 4200 60 
$EndSheet
Wire Wire Line
	2775 3800 3225 3800
Text Notes 3450 4475 0    120  ~ 24
PREDRIVER
$Comp
L +5V #PWR046
U 1 1 5C665A57
P 2975 3950
AR Path="/5CADFEBF/5C665A57" Ref="#PWR046"  Part="1" 
AR Path="/5CB67063/5C665A57" Ref="#PWR046"  Part="1" 
AR Path="/5CD77B9E/5C665A57" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 2975 4040 20  0001 C CNN
F 1 "+5V" H 2975 4040 30  0000 C CNN
F 2 "" H 2975 3950 60  0001 C CNN
F 3 "" H 2975 3950 60  0001 C CNN
	1    2975 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2975 3950 3225 3950
$Sheet
S 8700 4050 900  325 
U 5C9F9477
F0 "30MHz_LPF" 60
F1 "30MHz_LPF.sch" 60
F2 "OUT" O R 9600 4200 60 
F3 "IN" I L 8700 4200 60 
$EndSheet
Text HLabel 10000 4200 2    60   Output ~ 0
RF_L_OUT
$Sheet
S 6200 3925 1725 400 
U 5CA380D8
F0 "PA_30MHz" 50
F1 "PREDRIVER.sch" 50
F2 "PREDRIVER_EN" I L 6200 4075 60 
F3 "PREDRIVER_VDD" I R 7925 4075 60 
F4 "RF_IN" I L 6200 4200 60 
F5 "RF_OUT" O R 7925 4200 60 
$EndSheet
Text Notes 6975 3900 0    120  ~ 24
PA_30MHz
$Comp
L +5V #PWR?
U 1 1 5CA380E1
P 8000 4075
AR Path="/5CADFEBF/5CA380E1" Ref="#PWR?"  Part="1" 
AR Path="/5CB67063/5CA380E1" Ref="#PWR?"  Part="1" 
AR Path="/5CD77B9E/5CA380E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8000 4165 20  0001 C CNN
F 1 "+5V" H 8000 4165 30  0000 C CNN
F 2 "" H 8000 4075 60  0001 C CNN
F 3 "" H 8000 4075 60  0001 C CNN
	1    8000 4075
	0    1    -1   0   
$EndComp
Wire Wire Line
	7925 4200 8700 4200
Wire Wire Line
	7925 4075 8000 4075
Wire Wire Line
	6200 4200 4725 4200
Text HLabel 2775 3800 0    60   Input ~ 0
BRANCH_EN
Wire Wire Line
	10000 4200 9600 4200
Text HLabel 1675 4200 0    60   Input ~ 0
RF_L_IN
Wire Wire Line
	1675 4200 3225 4200
Text Notes 2000 4150 0    120  ~ 24
1-30MHz
Wire Wire Line
	5750 4075 6200 4075
Text HLabel 5750 4075 0    60   Input ~ 0
BRANCH_EN
Wire Wire Line
	3575 2200 3975 2200
Text HLabel 3975 2200 2    60   Input ~ 0
DATA_RESET
$Comp
L +5V #PWR?
U 1 1 5CDD9524
P 3675 1700
F 0 "#PWR?" H 3675 1790 20  0001 C CNN
F 1 "+5V" H 3675 1790 30  0000 C CNN
F 2 "" H 3675 1700 60  0001 C CNN
F 3 "" H 3675 1700 60  0001 C CNN
	1    3675 1700
	0    1    -1   0   
$EndComp
Wire Wire Line
	3675 1700 3575 1700
Text Label 1925 1900 0    39   ~ 0
PA_EN
Wire Wire Line
	2325 1900 1925 1900
$Comp
L MC74HC164ADG U?
U 1 1 5CDD9537
P 2975 2050
F 0 "U?" H 2975 2650 60  0000 C CNN
F 1 "MC74HC164ADG" H 2975 2550 60  0000 C CNN
F 2 "MC74HC164ADG" H 2975 2875 60  0001 C CNN
F 3 "" H 2775 2100 60  0000 C CNN
F 4 "Mouser" H 2975 3275 60  0001 C CNN "Vendor"
F 5 "863-MC74HC164ADG" H 2975 3175 60  0001 C CNN "Vendor Part Number"
F 6 "ON Semiconductor" H 2975 3075 60  0001 C CNN "Manufacturer"
F 7 "MC74HC164ADG" H 2975 2975 60  0001 C CNN "Manufacturer Part Number"
F 8 "IC SHIFT REGSTR 8BIT" H 2975 2775 60  0001 C CNN "Description"
	1    2975 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5CDD953E
P 2225 1800
F 0 "#PWR?" H 2225 1890 20  0001 C CNN
F 1 "+5V" H 2225 1890 30  0000 C CNN
F 2 "" H 2225 1800 60  0001 C CNN
F 3 "" H 2225 1800 60  0001 C CNN
	1    2225 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2225 1800 2325 1800
$Comp
L GND #PWR?
U 1 1 5CDD9545
P 2325 2300
F 0 "#PWR?" H 2325 2300 30  0001 C CNN
F 1 "GND" H 2325 2230 30  0001 C CNN
F 2 "" H 2325 2300 60  0000 C CNN
F 3 "" H 2325 2300 60  0000 C CNN
	1    2325 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	2325 1700 1925 1700
Text HLabel 1925 1700 0    60   Input ~ 0
DATA_IN
Wire Wire Line
	3575 2300 3975 2300
Text HLabel 3975 2300 2    60   Input ~ 0
DATA_CLK
Text HLabel 3975 2100 2    60   Output ~ 0
DATA_OUT
Wire Wire Line
	3575 2100 3975 2100
NoConn ~ 3575 1800
NoConn ~ 3575 1900
NoConn ~ 3575 2000
NoConn ~ 2325 2000
NoConn ~ 2325 2100
NoConn ~ 2325 2200
$EndSCHEMATC
