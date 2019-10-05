EESchema Schematic File Version 4
LIBS:Thermostat_Layout-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L SparkFun-Connectors:CONN_16 J3
U 1 1 5D426017
P 4900 4250
F 0 "J3" H 4833 6060 45  0000 C CNN
F 1 "LCD_HEADER" H 4833 5976 45  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 4900 5950 20  0001 C CNN
F 3 "" H 4900 4250 50  0001 C CNN
F 4 "XXX-00000" H 4833 5881 60  0000 C CNN "Field4"
	1    4900 4250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0110
U 1 1 5D429987
P 5100 4250
F 0 "#GND0110" H 5150 4200 45  0001 L BNN
F 1 "GND" H 5100 4080 45  0000 C CNN
F 2 "" H 5100 4150 60  0001 C CNN
F 3 "" H 5100 4150 60  0001 C CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4250 5100 4250
Wire Wire Line
	5000 3850 5100 3850
Wire Wire Line
	5100 3850 5100 4250
Connection ~ 5100 4250
Wire Wire Line
	5000 4050 5500 4050
Wire Wire Line
	5000 3950 5500 3950
Wire Wire Line
	5000 3750 5500 3750
Wire Wire Line
	5000 3650 5500 3650
Wire Wire Line
	5000 3550 5500 3550
Wire Wire Line
	5000 3450 5500 3450
Wire Wire Line
	5000 3350 5500 3350
Wire Wire Line
	5000 3250 5500 3250
Wire Wire Line
	5000 3150 5500 3150
Wire Wire Line
	5000 3050 5500 3050
Wire Wire Line
	5000 2950 5500 2950
Text GLabel 5500 4050 2    50   Input ~ 0
LCD_CONT
Text GLabel 5500 3950 2    50   Input ~ 0
LCD_RS
Text GLabel 5500 3750 2    50   Input ~ 0
LCD_EN
Text GLabel 5500 3650 2    50   Input ~ 0
LCD_D0
Text GLabel 5500 3550 2    50   Input ~ 0
LCD_D1
Text GLabel 5500 3450 2    50   Input ~ 0
LCD_D2
Text GLabel 5500 3350 2    50   Input ~ 0
LCD_D3
Text GLabel 5500 3250 2    50   Input ~ 0
LCD_D4
Text GLabel 5500 3150 2    50   Input ~ 0
LCD_D5
Text GLabel 5500 3050 2    50   Input ~ 0
LCD_D6
Text GLabel 5500 2950 2    50   Input ~ 0
LCD_D7
Wire Wire Line
	5000 2750 5500 2750
Text GLabel 5500 2750 2    50   Input ~ 0
LCD_LED
$Comp
L Device:R_US R7
U 1 1 5D42C1C9
P 6250 3000
F 0 "R7" H 6318 3046 50  0000 L CNN
F 1 "220" H 6318 2955 50  0000 L CNN
F 2 "Resistors:0402" V 6290 2990 50  0001 C CNN
F 3 "~" H 6250 3000 50  0001 C CNN
	1    6250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2850 6250 2850
Wire Wire Line
	5000 4150 6250 4150
Wire Wire Line
	6250 4150 6250 3150
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0107
U 1 1 5D42E053
P 6450 4150
F 0 "#SUPPLY0107" H 6500 4150 45  0001 L BNN
F 1 "3.3V" H 6450 4426 45  0000 C CNN
F 2 "XXX-00000" H 6450 4331 60  0000 C CNN
F 3 "" H 6450 4150 60  0001 C CNN
	1    6450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4150 6450 4150
Connection ~ 6250 4150
$Comp
L Device:R_POT_US RV1
U 1 1 5D42E9DC
P 7900 3200
F 0 "RV1" H 7833 3246 50  0000 R CNN
F 1 "R_POT_US" H 7833 3155 50  0000 R CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_TC33X_Vertical" H 7900 3200 50  0001 C CNN
F 3 "~" H 7900 3200 50  0001 C CNN
	1    7900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3050 7900 2800
Wire Wire Line
	7900 3350 7900 3650
Wire Wire Line
	8050 3200 8400 3200
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0108
U 1 1 5D4305D6
P 7900 2800
F 0 "#SUPPLY0108" H 7950 2800 45  0001 L BNN
F 1 "3.3V" H 7900 3076 45  0000 C CNN
F 2 "XXX-00000" H 7900 2981 60  0000 C CNN
F 3 "" H 7900 2800 60  0001 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0111
U 1 1 5D430FB1
P 7900 3650
F 0 "#GND0111" H 7950 3600 45  0001 L BNN
F 1 "GND" H 7900 3480 45  0000 C CNN
F 2 "" H 7900 3550 60  0001 C CNN
F 3 "" H 7900 3550 60  0001 C CNN
	1    7900 3650
	1    0    0    -1  
$EndComp
Text GLabel 8400 3200 2    50   Input ~ 0
LCD_CONT
$EndSCHEMATC