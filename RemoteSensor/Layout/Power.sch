EESchema Schematic File Version 4
EELAYER 30 0
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
L RemoteSensor-rescue:V_BATT-SparkFun-PowerSymbols #SUPPLY0101
U 1 1 5EEB1246
P 8000 4000
F 0 "#SUPPLY0101" H 8050 4000 45  0001 L BNN
F 1 "V_BATT" H 8000 4276 45  0000 C CNN
F 2 "XXX-00000" H 8000 4181 60  0000 C CNN
F 3 "" H 8000 4000 60  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EEB1255
P 8000 4300
F 0 "C7" H 8115 4346 50  0000 L CNN
F 1 "4.7u" H 8115 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8038 4150 50  0001 C CNN
F 3 "~" H 8000 4300 50  0001 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4000 8000 4150
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND0101
U 1 1 5EEB1274
P 9650 5200
F 0 "#GND0101" H 9700 5150 45  0001 L BNN
F 1 "GND" H 9650 5030 45  0000 C CNN
F 2 "" H 9650 5100 60  0001 C CNN
F 3 "" H 9650 5100 60  0001 C CNN
	1    9650 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5EEB1282
P 8950 4300
F 0 "R6" H 9018 4346 50  0000 L CNN
F 1 "10k" H 9018 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8990 4290 50  0001 C CNN
F 3 "~" H 8950 4300 50  0001 C CNN
	1    8950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4450 9350 4450
Wire Wire Line
	9350 4450 9350 4250
Wire Wire Line
	8950 4150 9350 4150
$Comp
L Device:R_US R5
U 1 1 5EEB12A2
P 8650 5000
F 0 "R5" H 8718 5046 50  0000 L CNN
F 1 "10k" H 8718 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8690 4990 50  0001 C CNN
F 3 "~" H 8650 5000 50  0001 C CNN
	1    8650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4150 8000 4150
Connection ~ 8950 4150
Connection ~ 8000 4150
$Comp
L RemoteSensor-rescue:V_USB-SparkFun-PowerSymbols #SUPPLY0102
U 1 1 5EEB12BC
P 8650 4000
F 0 "#SUPPLY0102" H 8700 4000 45  0001 L BNN
F 1 "V_USB" H 8650 4276 45  0000 C CNN
F 2 "XXX-00000" H 8650 4181 60  0000 C CNN
F 3 "" H 8650 4000 60  0001 C CNN
	1    8650 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5EEC20C4
P 1550 2000
AR Path="/5EEC20C4" Ref="J?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20C4" Ref="J1"  Part="1" 
F 0 "J1" H 1607 2467 50  0000 C CNN
F 1 "USB_B_Micro" H 1607 2376 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 1700 1950 50  0001 C CNN
F 3 "~" H 1700 1950 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:V_USB-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC20CA
P 2650 1600
AR Path="/5EEC20CA" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20CA" Ref="#SUPPLY0103"  Part="1" 
F 0 "#SUPPLY0103" H 2700 1600 45  0001 L BNN
F 1 "V_USB" H 2650 1876 45  0000 C CNN
F 2 "XXX-00000" H 2650 1781 60  0000 C CNN
F 3 "" H 2650 1600 60  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND?
U 1 1 5EEC20D0
P 1550 2650
AR Path="/5EEC20D0" Ref="#GND?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20D0" Ref="#GND0102"  Part="1" 
F 0 "#GND0102" H 1600 2600 45  0001 L BNN
F 1 "GND" H 1550 2480 45  0000 C CNN
F 2 "" H 1550 2550 60  0001 C CNN
F 3 "" H 1550 2550 60  0001 C CNN
	1    1550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EEC20D6
P 2200 2000
AR Path="/5EEC20D6" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20D6" Ref="C1"  Part="1" 
F 0 "C1" H 2315 2046 50  0000 L CNN
F 1 "1u" H 2315 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 1850 50  0001 C CNN
F 3 "~" H 2200 2000 50  0001 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EEC20DC
P 2650 2000
AR Path="/5EEC20DC" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20DC" Ref="C2"  Part="1" 
F 0 "C2" H 2765 2046 50  0000 L CNN
F 1 "0.1u" H 2765 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 1850 50  0001 C CNN
F 3 "~" H 2650 2000 50  0001 C CNN
	1    2650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1800 2200 1800
Wire Wire Line
	2650 1800 2650 1850
Wire Wire Line
	2200 1850 2200 1800
Connection ~ 2200 1800
Wire Wire Line
	2200 1800 2650 1800
Wire Wire Line
	1550 2400 1550 2500
Wire Wire Line
	1550 2500 2200 2500
Wire Wire Line
	2200 2500 2200 2150
Connection ~ 1550 2500
Wire Wire Line
	1550 2500 1550 2650
Wire Wire Line
	2200 2500 2650 2500
Wire Wire Line
	2650 2500 2650 2150
Connection ~ 2200 2500
Wire Wire Line
	2650 1600 2650 1800
Connection ~ 2650 1800
$Comp
L Battery_Management:MCP73831-2-OT U?
U 1 1 5EEC20F1
P 2050 4300
AR Path="/5EEC20F1" Ref="U?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20F1" Ref="U1"  Part="1" 
F 0 "U1" H 2050 4781 50  0000 C CNN
F 1 "MCP73831-2-OT" H 2050 4690 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2100 4050 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 1900 4250 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:V_USB-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC20F7
P 2050 3700
AR Path="/5EEC20F7" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20F7" Ref="#SUPPLY0104"  Part="1" 
F 0 "#SUPPLY0104" H 2100 3700 45  0001 L BNN
F 1 "V_USB" H 2050 3976 45  0000 C CNN
F 2 "XXX-00000" H 2050 3881 60  0000 C CNN
F 3 "" H 2050 3700 60  0001 C CNN
	1    2050 3700
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:V_BATT-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC20FD
P 2750 3700
AR Path="/5EEC20FD" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC20FD" Ref="#SUPPLY0105"  Part="1" 
F 0 "#SUPPLY0105" H 2800 3700 45  0001 L BNN
F 1 "V_BATT" H 2750 3976 45  0000 C CNN
F 2 "XXX-00000" H 2750 3881 60  0000 C CNN
F 3 "" H 2750 3700 60  0001 C CNN
	1    2750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4200 2750 4200
Wire Wire Line
	2750 4200 2750 3700
Wire Wire Line
	2050 3700 2050 4000
$Comp
L Device:R_US R?
U 1 1 5EEC2106
P 1450 4750
AR Path="/5EEC2106" Ref="R?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2106" Ref="R1"  Part="1" 
F 0 "R1" H 1518 4796 50  0000 L CNN
F 1 "2k" H 1518 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1490 4740 50  0001 C CNN
F 3 "~" H 1450 4750 50  0001 C CNN
	1    1450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4600 1450 4400
Wire Wire Line
	1450 4400 1650 4400
Wire Wire Line
	2050 4600 2050 5100
Wire Wire Line
	2050 5100 1450 5100
Wire Wire Line
	1450 5100 1450 4900
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND?
U 1 1 5EEC2111
P 2050 5100
AR Path="/5EEC2111" Ref="#GND?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2111" Ref="#GND0103"  Part="1" 
F 0 "#GND0103" H 2100 5050 45  0001 L BNN
F 1 "GND" H 2050 4930 45  0000 C CNN
F 2 "" H 2050 5000 60  0001 C CNN
F 3 "" H 2050 5000 60  0001 C CNN
	1    2050 5100
	1    0    0    -1  
$EndComp
Connection ~ 2050 5100
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5EEC2118
P 4450 4400
AR Path="/5EEC2118" Ref="J?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2118" Ref="J2"  Part="1" 
F 0 "J2" H 4558 4581 50  0000 C CNN
F 1 "BATT_CONN" H 4558 4490 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 4450 4400 50  0001 C CNN
F 3 "~" H 4450 4400 50  0001 C CNN
	1    4450 4400
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND?
U 1 1 5EEC211E
P 4900 4650
AR Path="/5EEC211E" Ref="#GND?"  Part="1" 
AR Path="/5EE9FD3C/5EEC211E" Ref="#GND0104"  Part="1" 
F 0 "#GND0104" H 4950 4600 45  0001 L BNN
F 1 "GND" H 4900 4480 45  0000 C CNN
F 2 "" H 4900 4550 60  0001 C CNN
F 3 "" H 4900 4550 60  0001 C CNN
	1    4900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5EEC2124
P 2950 4150
AR Path="/5EEC2124" Ref="R?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2124" Ref="R2"  Part="1" 
F 0 "R2" H 3018 4196 50  0000 L CNN
F 1 "10k" H 3018 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2990 4140 50  0001 C CNN
F 3 "~" H 2950 4150 50  0001 C CNN
	1    2950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4400 2950 4400
Wire Wire Line
	2950 4400 2950 4300
$Comp
L RemoteSensor-rescue:3.3V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC212C
P 2950 4000
AR Path="/5EEC212C" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC212C" Ref="#SUPPLY0106"  Part="1" 
F 0 "#SUPPLY0106" H 3000 4000 45  0001 L BNN
F 1 "3.3V" H 2950 4276 45  0000 C CNN
F 2 "XXX-00000" H 2950 4181 60  0000 C CNN
F 3 "" H 2950 4000 60  0001 C CNN
	1    2950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2400 1450 2500
Wire Wire Line
	1450 2500 1550 2500
$Comp
L RemoteSensor-rescue:V_BATT-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC2137
P 4900 4200
AR Path="/5EEC2137" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2137" Ref="#SUPPLY0107"  Part="1" 
F 0 "#SUPPLY0107" H 4950 4200 45  0001 L BNN
F 1 "V_BATT" H 4900 4476 45  0000 C CNN
F 2 "XXX-00000" H 4900 4381 60  0000 C CNN
F 3 "" H 4900 4200 60  0001 C CNN
	1    4900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4400 4900 4400
Wire Wire Line
	4900 4400 4900 4200
Wire Wire Line
	4650 4500 4900 4500
Wire Wire Line
	4900 4500 4900 4650
$Comp
L Device:L L?
U 1 1 5EEC2148
P 2500 6300
AR Path="/5EEC2148" Ref="L?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2148" Ref="L1"  Part="1" 
F 0 "L1" V 2690 6300 50  0000 C CNN
F 1 "2.2u" V 2599 6300 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-24xx_HandSoldering" H 2500 6300 50  0001 C CNN
F 3 "~" H 2500 6300 50  0001 C CNN
	1    2500 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 6300 2650 6500
Wire Wire Line
	2650 6500 2200 6500
$Comp
L Device:C C?
U 1 1 5EEC2151
P 3900 2250
AR Path="/5EEC2151" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2151" Ref="C4"  Part="1" 
F 0 "C4" H 4015 2296 50  0000 L CNN
F 1 "4.7u" H 4015 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 2100 50  0001 C CNN
F 3 "~" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EEC215C
P 3450 6450
AR Path="/5EEC215C" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5EEC215C" Ref="C3"  Part="1" 
F 0 "C3" H 3565 6496 50  0000 L CNN
F 1 "10u" H 3565 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 6300 50  0001 C CNN
F 3 "~" H 3450 6450 50  0001 C CNN
	1    3450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EEC2162
P 3900 6450
AR Path="/5EEC2162" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2162" Ref="C5"  Part="1" 
F 0 "C5" H 4015 6496 50  0000 L CNN
F 1 "1u" H 4015 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 6300 50  0001 C CNN
F 3 "~" H 3900 6450 50  0001 C CNN
	1    3900 6450
	1    0    0    -1  
$EndComp
Connection ~ 2650 6300
Wire Wire Line
	3450 6300 3900 6300
Wire Wire Line
	3450 6700 3450 6600
Wire Wire Line
	3450 6700 3900 6700
Wire Wire Line
	3900 6700 3900 6600
$Comp
L RemoteSensor-rescue:3.3V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC2172
P 4350 6150
AR Path="/5EEC2172" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2172" Ref="#SUPPLY0108"  Part="1" 
F 0 "#SUPPLY0108" H 4400 6150 45  0001 L BNN
F 1 "3.3V" H 4350 6426 45  0000 C CNN
F 2 "XXX-00000" H 4350 6331 60  0000 C CNN
F 3 "" H 4350 6150 60  0001 C CNN
	1    4350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6150 4350 6300
Connection ~ 3900 6300
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND?
U 1 1 5EEC217B
P 4500 2550
AR Path="/5EEC217B" Ref="#GND?"  Part="1" 
AR Path="/5EE9FD3C/5EEC217B" Ref="#GND0105"  Part="1" 
F 0 "#GND0105" H 4550 2500 45  0001 L BNN
F 1 "GND" H 4500 2380 45  0000 C CNN
F 2 "" H 4500 2450 60  0001 C CNN
F 3 "" H 4500 2450 60  0001 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2550 4500 2400
$Comp
L Device:C C?
U 1 1 5EEC2182
P 4350 6450
AR Path="/5EEC2182" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5EEC2182" Ref="C6"  Part="1" 
F 0 "C6" H 4465 6496 50  0000 L CNN
F 1 "0.1u" H 4465 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 6300 50  0001 C CNN
F 3 "~" H 4350 6450 50  0001 C CNN
	1    4350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6300 4350 6300
Wire Wire Line
	4350 6600 4350 6700
Wire Wire Line
	4350 6700 3900 6700
Connection ~ 3900 6700
Connection ~ 4350 6300
$Comp
L RemoteSensor-rescue:V_USB-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EEC218D
P 3900 1850
AR Path="/5EEC218D" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EEC218D" Ref="#SUPPLY0109"  Part="1" 
F 0 "#SUPPLY0109" H 3950 1850 45  0001 L BNN
F 1 "V_USB" H 3900 2126 45  0000 C CNN
F 2 "XXX-00000" H 3900 2031 60  0000 C CNN
F 3 "" H 3900 1850 60  0001 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
$Comp
L Power_Management:BD48ExxG U?
U 1 1 5EF05E46
P 6050 4400
AR Path="/5EF05E46" Ref="U?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E46" Ref="U3"  Part="1" 
F 0 "U3" H 5871 4446 50  0000 R CNN
F 1 "BD48ExxG" H 5871 4355 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6050 3900 50  0001 C CNN
F 3 "https://www.rohm.de/datasheet/BD4830FVE/bd48xxg-e" H 6050 3800 50  0001 C CNN
	1    6050 4400
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND?
U 1 1 5EF05E4C
P 6050 4850
AR Path="/5EF05E4C" Ref="#GND?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E4C" Ref="#GND0106"  Part="1" 
F 0 "#GND0106" H 6100 4800 45  0001 L BNN
F 1 "GND" H 6050 4680 45  0000 C CNN
F 2 "" H 6050 4750 60  0001 C CNN
F 3 "" H 6050 4750 60  0001 C CNN
	1    6050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4850 6050 4700
$Comp
L Device:R_US R?
U 1 1 5EF05E53
P 6700 4250
AR Path="/5EF05E53" Ref="R?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E53" Ref="R3"  Part="1" 
F 0 "R3" H 6768 4296 50  0000 L CNN
F 1 "10k" H 6768 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6740 4240 50  0001 C CNN
F 3 "~" H 6700 4250 50  0001 C CNN
	1    6700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4000 6700 4100
Wire Wire Line
	6700 4400 6450 4400
$Comp
L Power_Management:BD48ExxG U?
U 1 1 5EF05E5E
P 6500 2100
AR Path="/5EF05E5E" Ref="U?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E5E" Ref="U4"  Part="1" 
F 0 "U4" H 6321 2146 50  0000 R CNN
F 1 "BD48ExxG" H 6321 2055 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6500 1600 50  0001 C CNN
F 3 "https://www.rohm.de/datasheet/BD4830FVE/bd48xxg-e" H 6500 1500 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND?
U 1 1 5EF05E64
P 6500 2550
AR Path="/5EF05E64" Ref="#GND?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E64" Ref="#GND0107"  Part="1" 
F 0 "#GND0107" H 6550 2500 45  0001 L BNN
F 1 "GND" H 6500 2380 45  0000 C CNN
F 2 "" H 6500 2450 60  0001 C CNN
F 3 "" H 6500 2450 60  0001 C CNN
	1    6500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2550 6500 2400
$Comp
L Device:R_US R?
U 1 1 5EF05E6B
P 7150 1950
AR Path="/5EF05E6B" Ref="R?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E6B" Ref="R4"  Part="1" 
F 0 "R4" H 7218 1996 50  0000 L CNN
F 1 "10k" H 7218 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7190 1940 50  0001 C CNN
F 3 "~" H 7150 1950 50  0001 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1700 7150 1800
Wire Wire Line
	7150 2100 6900 2100
$Comp
L RemoteSensor-rescue:3.3V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EF05E76
P 7150 1700
AR Path="/5EF05E76" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E76" Ref="#SUPPLY0110"  Part="1" 
F 0 "#SUPPLY0110" H 7200 1700 45  0001 L BNN
F 1 "3.3V" H 7150 1976 45  0000 C CNN
F 2 "XXX-00000" H 7150 1881 60  0000 C CNN
F 3 "" H 7150 1700 60  0001 C CNN
	1    7150 1700
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:3.3V-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EF05E7C
P 6700 4000
AR Path="/5EF05E7C" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E7C" Ref="#SUPPLY0111"  Part="1" 
F 0 "#SUPPLY0111" H 6750 4000 45  0001 L BNN
F 1 "3.3V" H 6700 4276 45  0000 C CNN
F 2 "XXX-00000" H 6700 4181 60  0000 C CNN
F 3 "" H 6700 4000 60  0001 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:V_USB-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EF05E82
P 6500 1600
AR Path="/5EF05E82" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E82" Ref="#SUPPLY0112"  Part="1" 
F 0 "#SUPPLY0112" H 6550 1600 45  0001 L BNN
F 1 "V_USB" H 6500 1876 45  0000 C CNN
F 2 "XXX-00000" H 6500 1781 60  0000 C CNN
F 3 "" H 6500 1600 60  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
$Comp
L RemoteSensor-rescue:V_BATT-SparkFun-PowerSymbols #SUPPLY?
U 1 1 5EF05E88
P 6050 3900
AR Path="/5EF05E88" Ref="#SUPPLY?"  Part="1" 
AR Path="/5EE9FD3C/5EF05E88" Ref="#SUPPLY0113"  Part="1" 
F 0 "#SUPPLY0113" H 6100 3900 45  0001 L BNN
F 1 "V_BATT" H 6050 4176 45  0000 C CNN
F 2 "XXX-00000" H 6050 4081 60  0000 C CNN
F 3 "" H 6050 3900 60  0001 C CNN
	1    6050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3900 6050 4100
Wire Wire Line
	6500 1600 6500 1800
$Comp
L RemoteSensor-rescue:GND-SparkFun-PowerSymbols #GND0108
U 1 1 5EF27A6F
P 3900 6700
F 0 "#GND0108" H 3950 6650 45  0001 L BNN
F 1 "GND" H 3900 6530 45  0000 C CNN
F 2 "" H 3900 6600 60  0001 C CNN
F 3 "" H 3900 6600 60  0001 C CNN
	1    3900 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4150 10400 4150
Wire Wire Line
	9950 4350 10400 4350
Text Label 10400 4150 2    50   ~ 0
SW
Text Label 10400 4350 2    50   ~ 0
FB
Wire Wire Line
	2350 6300 2200 6300
Text Label 2200 6300 0    50   ~ 0
SW
Text Label 2200 6500 0    50   ~ 0
FB
Text GLabel 3200 4400 2    50   Input ~ 0
CHARGE_STS
Text GLabel 7050 4400 2    50   Input ~ 0
BATT_STS
Text GLabel 7500 2100 2    50   Input ~ 0
CHARGER_STS
Wire Wire Line
	6700 4400 7050 4400
Connection ~ 6700 4400
Wire Wire Line
	2950 4400 3200 4400
Connection ~ 2950 4400
Wire Wire Line
	7150 2100 7500 2100
Connection ~ 7150 2100
$Comp
L RemoteSensor-rescue:2N7002-dk_Transistors-FETs-MOSFETs-Single Q1
U 1 1 5EEB1294
P 8950 4700
F 0 "Q1" H 9058 4753 60  0000 L CNN
F 1 "2N7002" H 9058 4647 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9150 4900 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 9150 5000 60  0001 L CNN
F 4 "2N7002NCT-ND" H 9150 5100 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7002" H 9150 5200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9150 5300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9150 5400 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 9150 5500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7002/2N7002NCT-ND/244664" H 9150 5600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 115MA SOT-23" H 9150 5700 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9150 5800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9150 5900 60  0001 L CNN "Status"
	1    8950 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4500 8950 4450
Connection ~ 8950 4450
Wire Wire Line
	8650 4800 8650 4850
Wire Wire Line
	8650 5150 8650 5200
Wire Wire Line
	8650 5200 8950 5200
Wire Wire Line
	8950 5200 8950 4900
Wire Wire Line
	8000 4450 8000 5200
Wire Wire Line
	8000 5200 8650 5200
Connection ~ 8650 5200
Wire Wire Line
	8950 5200 9650 5200
Connection ~ 8950 5200
Wire Wire Line
	9650 5200 9650 4550
Connection ~ 9650 5200
Wire Wire Line
	8650 4000 8650 4800
Connection ~ 8650 4800
$Comp
L Regulator_Switching:LM3670MF U5
U 1 1 5EEB129A
P 9650 4250
F 0 "U5" H 9650 4575 50  0000 C CNN
F 1 "LM3671MF" H 9650 4484 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 9700 4000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm3671.pdf" H 9400 3900 50  0001 C CNN
	1    9650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2000 2050 2000
Wire Wire Line
	2050 2000 2050 2750
Wire Wire Line
	1850 2100 1950 2100
Wire Wire Line
	1950 2100 1950 2750
Text GLabel 2050 2750 3    50   Input ~ 0
USBDP
Text GLabel 1950 2750 3    50   Input ~ 0
USBDM
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LD1117S33CTR U2
U 1 1 5F145B16
P 4500 2100
F 0 "U2" H 4550 2387 60  0000 C CNN
F 1 "LD1117S33CTR" H 4550 2281 60  0000 C CNN
F 2 "digikey-footprints:SOT-223" H 4700 2300 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 4700 2400 60  0001 L CNN
F 4 "497-1241-1-ND" H 4700 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "LD1117S33CTR" H 4700 2600 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 4700 2700 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 4700 2800 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/99/3b/7d/91/91/51/4b/be/CD00000544.pdf/files/CD00000544.pdf/jcr:content/translations/en.CD00000544.pdf" H 4700 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/LD1117S33CTR/497-1241-1-ND/586241" H 4700 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 800MA SOT223" H 4700 3100 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 4700 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4700 3300 60  0001 L CNN "Status"
	1    4500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1850 3900 2100
Wire Wire Line
	3900 2100 4200 2100
Connection ~ 3900 2100
Wire Wire Line
	3900 2400 3900 2550
Wire Wire Line
	3900 2550 4500 2550
Connection ~ 4500 2550
Wire Wire Line
	4900 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2200
Wire Wire Line
	5000 2200 4900 2200
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0123
U 1 1 5F2F9BC4
P 5000 1850
F 0 "#SUPPLY0123" H 5050 1850 45  0001 L BNN
F 1 "3.3V" H 5000 2126 45  0000 C CNN
F 2 "XXX-00000" H 5000 2031 60  0000 C CNN
F 3 "" H 5000 1850 60  0001 C CNN
	1    5000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1850 5000 2100
Connection ~ 5000 2100
$Comp
L Device:C C?
U 1 1 5F2FE4BE
P 3050 6450
AR Path="/5F2FE4BE" Ref="C?"  Part="1" 
AR Path="/5EE9FD3C/5F2FE4BE" Ref="C11"  Part="1" 
F 0 "C11" H 3165 6496 50  0000 L CNN
F 1 "10u" H 3165 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3088 6300 50  0001 C CNN
F 3 "~" H 3050 6450 50  0001 C CNN
	1    3050 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6300 3050 6300
Wire Wire Line
	3050 6300 3450 6300
Connection ~ 3050 6300
Connection ~ 3450 6300
Wire Wire Line
	3050 6600 3050 6700
Wire Wire Line
	3050 6700 3450 6700
Connection ~ 3450 6700
$EndSCHEMATC
