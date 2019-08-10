EESchema Schematic File Version 4
LIBS:Thermostat_Remote-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L dk_Embedded-Microcontrollers:ATMEGA328P-AU U2
U 1 1 5D4925A1
P 5600 3350
F 0 "U2" H 5928 3453 60  0000 L CNN
F 1 "ATMEGA328P-AU" H 5928 3347 60  0000 L CNN
F 2 "digikey-footprints:TQFP-32_7x7mm" H 5800 3550 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en608326" H 5800 3650 60  0001 L CNN
F 4 "ATMEGA328P-AU-ND" H 5800 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "ATMEGA328P-AU" H 5800 3850 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5800 3950 60  0001 L CNN "Category"
F 7 "Embedded - Microcontrollers" H 5800 4050 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en608326" H 5800 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/ATMEGA328P-AU/ATMEGA328P-AU-ND/1832260" H 5800 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "IC MCU 8BIT 32KB FLASH 32TQFP" H 5800 4350 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 5800 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 4550 60  0001 L CNN "Status"
	1    5600 3350
	1    0    0    -1  
$EndComp
$Comp
L FM25V10:FM25V10 U3
U 1 1 5D493B84
P 10100 1600
F 0 "U3" H 10100 2231 50  0000 C CNN
F 1 "FM25V10" H 10100 2140 50  0000 C CNN
F 2 "FM25V10:SOIC127P601X172-8N" H 10100 2300 50  0001 C CNN
F 3 "" H 10100 1600 50  0001 C CNN
	1    10100 1600
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Switches:JOYSTICK_MINI S1
U 1 1 5D494A36
P 9900 3150
F 0 "S1" H 9900 3610 45  0000 C CNN
F 1 "JOYSTICK_MINI" H 9900 3526 45  0000 C CNN
F 2 "JOYSTICK_MINI" H 9900 3450 20  0001 C CNN
F 3 "" H 9900 3150 50  0001 C CNN
F 4 "SWCH-09905" H 9900 3431 60  0000 C CNN "Field4"
	1    9900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1750 5700 1750
Wire Wire Line
	5800 1750 5700 1750
Connection ~ 5700 1750
Wire Wire Line
	5600 4850 5700 4850
Wire Wire Line
	5700 4850 5800 4850
Connection ~ 5700 4850
$Comp
L SparkFun-PowerSymbols:GND #GND0101
U 1 1 5D496417
P 5700 4850
F 0 "#GND0101" H 5750 4800 45  0001 L BNN
F 1 "GND" H 5700 4680 45  0000 C CNN
F 2 "" H 5700 4750 60  0001 C CNN
F 3 "" H 5700 4750 60  0001 C CNN
	1    5700 4850
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0102
U 1 1 5D4969B9
P 9400 3250
F 0 "#GND0102" H 9450 3200 45  0001 L BNN
F 1 "GND" H 9400 3080 45  0000 C CNN
F 2 "" H 9400 3150 60  0001 C CNN
F 3 "" H 9400 3150 60  0001 C CNN
	1    9400 3250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0101
U 1 1 5D497264
P 5700 1700
F 0 "#SUPPLY0101" H 5750 1700 45  0001 L BNN
F 1 "3.3V" H 5700 1976 45  0000 C CNN
F 2 "XXX-00000" H 5700 1881 60  0000 C CNN
F 3 "" H 5700 1700 60  0001 C CNN
	1    5700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1700 5700 1750
$Comp
L SparkFun-PowerSymbols:GND #GND0103
U 1 1 5D497918
P 10100 2150
F 0 "#GND0103" H 10150 2100 45  0001 L BNN
F 1 "GND" H 10100 1980 45  0000 C CNN
F 2 "" H 10100 2050 60  0001 C CNN
F 3 "" H 10100 2050 60  0001 C CNN
	1    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0102
U 1 1 5D497E3F
P 10100 850
F 0 "#SUPPLY0102" H 10150 850 45  0001 L BNN
F 1 "3.3V" H 10100 1126 45  0000 C CNN
F 2 "XXX-00000" H 10100 1031 60  0000 C CNN
F 3 "" H 10100 850 60  0001 C CNN
	1    10100 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 850  10100 1100
Wire Wire Line
	10100 1100 10600 1100
Wire Wire Line
	10600 1100 10600 1450
Connection ~ 10100 1100
Wire Wire Line
	10100 1100 10100 1150
Wire Wire Line
	10600 1450 10600 1750
Connection ~ 10600 1450
Wire Wire Line
	5100 3250 4600 3250
Wire Wire Line
	5100 3150 4600 3150
Wire Wire Line
	5100 3050 4600 3050
Text GLabel 4600 3050 0    50   Output ~ 0
MOSI
Text GLabel 4600 3150 0    50   Input ~ 0
MISO
Text GLabel 4600 3250 0    50   Output ~ 0
SCK
Wire Wire Line
	9600 1900 9050 1900
Wire Wire Line
	9600 1750 9050 1750
Wire Wire Line
	9600 1600 9050 1600
Wire Wire Line
	9600 1450 9050 1450
Text GLabel 9050 1450 0    50   Input ~ 0
MEM_CS
Text GLabel 9050 1600 0    50   Output ~ 0
MISO
Text GLabel 9050 1750 0    50   Input ~ 0
MOSI
Text GLabel 9050 1900 0    50   Input ~ 0
SCK
Wire Wire Line
	9400 3050 9000 3050
Wire Wire Line
	9400 3150 9000 3150
Wire Wire Line
	10400 3050 10800 3050
Wire Wire Line
	10400 3150 10800 3150
Wire Wire Line
	10400 3250 10800 3250
Text Label 9000 3050 0    50   ~ 0
UP_BTN
Text Label 9000 3150 0    50   ~ 0
DWN_BTN
Text Label 10450 3050 0    50   ~ 0
LEFT_BTN
Text Label 10450 3150 0    50   ~ 0
RIGHT_BTN
Text Label 10450 3250 0    50   ~ 0
CENTER_BTN
Wire Wire Line
	5100 4250 4450 4250
Wire Wire Line
	5100 4150 4450 4150
Wire Wire Line
	5100 4050 4450 4050
Text Label 4450 4250 0    50   ~ 0
CENTER_BTN
Text Label 4450 4150 0    50   ~ 0
UC_TX
Text Label 4450 4050 0    50   ~ 0
UC_RX
Wire Wire Line
	5100 2050 4450 2050
Wire Wire Line
	5100 2150 4450 2150
Wire Wire Line
	5100 2450 4450 2450
Wire Wire Line
	5100 2550 4450 2550
Text Label 4450 2050 0    50   ~ 0
UP_BTN
Text Label 4450 2150 0    50   ~ 0
DWN_BTN
Text Label 4450 2450 0    50   ~ 0
LEFT_BTN
Text Label 4450 2550 0    50   ~ 0
RIGHT_BTN
$Comp
L Device:Crystal Y1
U 1 1 5D4C02C2
P 2500 3650
F 0 "Y1" H 2500 3918 50  0000 C CNN
F 1 "16MHz" H 2500 3827 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MC405-2Pin_9.6x4.1mm" H 2500 3650 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D4C149E
P 2250 3900
F 0 "C1" H 2365 3946 50  0000 L CNN
F 1 "22pF" H 2365 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2288 3750 50  0001 C CNN
F 3 "~" H 2250 3900 50  0001 C CNN
	1    2250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D4C1DAE
P 2750 3900
F 0 "C2" H 2865 3946 50  0000 L CNN
F 1 "22pF" H 2865 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2788 3750 50  0001 C CNN
F 3 "~" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3650 2750 3650
Wire Wire Line
	2750 3650 2750 3750
Wire Wire Line
	2350 3650 2250 3650
Wire Wire Line
	2250 3650 2250 3750
Wire Wire Line
	2250 4050 2250 4150
Wire Wire Line
	2250 4150 2500 4150
Wire Wire Line
	2750 4150 2750 4050
Wire Wire Line
	2250 3650 2250 3150
Connection ~ 2250 3650
Wire Wire Line
	2750 3650 2750 3150
Connection ~ 2750 3650
$Comp
L SparkFun-PowerSymbols:GND #GND0104
U 1 1 5D4C6CFF
P 2500 4150
F 0 "#GND0104" H 2550 4100 45  0001 L BNN
F 1 "GND" H 2500 3980 45  0000 C CNN
F 2 "" H 2500 4050 60  0001 C CNN
F 3 "" H 2500 4050 60  0001 C CNN
	1    2500 4150
	1    0    0    -1  
$EndComp
Connection ~ 2500 4150
Wire Wire Line
	2500 4150 2750 4150
Text Label 2250 3150 1    50   ~ 0
XTAL1
Text Label 2750 3150 1    50   ~ 0
XTAL2
Wire Wire Line
	5100 3750 4450 3750
Wire Wire Line
	5100 3850 4450 3850
Text Label 4450 3750 0    50   ~ 0
SDA
Text Label 4450 3850 0    50   ~ 0
SCL
Wire Wire Line
	5100 3350 4450 3350
Text Label 4450 3350 0    50   ~ 0
ANA_TEMP
$Comp
L Device:R_US R1
U 1 1 5D4CC832
P 2600 5650
F 0 "R1" H 2668 5696 50  0000 L CNN
F 1 "4.7kΩ" H 2668 5605 50  0000 L CNN
F 2 "Resistors:0402" V 2640 5640 50  0001 C CNN
F 3 "~" H 2600 5650 50  0001 C CNN
	1    2600 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5D4CC905
P 3100 5650
F 0 "R2" H 3168 5696 50  0000 L CNN
F 1 "4.7kΩ" H 3168 5605 50  0000 L CNN
F 2 "Resistors:0402" V 3140 5640 50  0001 C CNN
F 3 "~" H 3100 5650 50  0001 C CNN
	1    3100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5500 2850 5500
Wire Wire Line
	2600 5800 2600 5900
Wire Wire Line
	2600 5900 2250 5900
Wire Wire Line
	3100 6100 2250 6100
Wire Wire Line
	3100 5800 3100 6100
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0103
U 1 1 5D4D0E4F
P 2850 5500
F 0 "#SUPPLY0103" H 2900 5500 45  0001 L BNN
F 1 "3.3V" H 2850 5776 45  0000 C CNN
F 2 "XXX-00000" H 2850 5681 60  0000 C CNN
F 3 "" H 2850 5500 60  0001 C CNN
	1    2850 5500
	1    0    0    -1  
$EndComp
Connection ~ 2850 5500
Wire Wire Line
	2850 5500 3100 5500
Text Label 2250 5900 0    50   ~ 0
SCL
Text Label 2250 6100 0    50   ~ 0
SDA
Wire Wire Line
	5100 3950 4450 3950
Text Label 4450 3950 0    50   ~ 0
UC_RST
$Comp
L Device:C C3
U 1 1 5D4D2F3E
P 4750 4600
F 0 "C3" H 4865 4646 50  0000 L CNN
F 1 "100nF" H 4865 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4788 4450 50  0001 C CNN
F 3 "~" H 4750 4600 50  0001 C CNN
	1    4750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4450 4750 4450
Wire Wire Line
	4750 4750 4750 5000
$Comp
L SparkFun-PowerSymbols:GND #GND0105
U 1 1 5D4D6537
P 4750 5000
F 0 "#GND0105" H 4800 4950 45  0001 L BNN
F 1 "GND" H 4750 4830 45  0000 C CNN
F 2 "" H 4750 4900 60  0001 C CNN
F 3 "" H 4750 4900 60  0001 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5D4D99C4
P 4650 6400
F 0 "SW1" H 4650 6685 50  0000 C CNN
F 1 "SW_Push" H 4650 6594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 4650 6600 50  0001 C CNN
F 3 "~" H 4650 6600 50  0001 C CNN
	1    4650 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5D4DAD01
P 4150 6250
F 0 "R3" H 4218 6296 50  0000 L CNN
F 1 "10kΩ" H 4218 6205 50  0000 L CNN
F 2 "Resistors:0402" V 4190 6240 50  0001 C CNN
F 3 "~" H 4150 6250 50  0001 C CNN
	1    4150 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6400 4150 6400
Wire Wire Line
	4150 6400 3750 6400
Connection ~ 4150 6400
Wire Wire Line
	4850 6400 5000 6400
$Comp
L SparkFun-PowerSymbols:GND #GND0106
U 1 1 5D4DF608
P 5000 6400
F 0 "#GND0106" H 5050 6350 45  0001 L BNN
F 1 "GND" H 5000 6230 45  0000 C CNN
F 2 "" H 5000 6300 60  0001 C CNN
F 3 "" H 5000 6300 60  0001 C CNN
	1    5000 6400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0104
U 1 1 5D4DFBFB
P 4150 6100
F 0 "#SUPPLY0104" H 4200 6100 45  0001 L BNN
F 1 "3.3V" H 4150 6376 45  0000 C CNN
F 2 "XXX-00000" H 4150 6281 60  0000 C CNN
F 3 "" H 4150 6100 60  0001 C CNN
	1    4150 6100
	1    0    0    -1  
$EndComp
Text Label 3750 6400 0    50   ~ 0
UC_RST
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0105
U 1 1 5D4AA7A4
P 1200 1200
F 0 "#SUPPLY0105" H 1250 1200 45  0001 L BNN
F 1 "3.3V" H 1200 1476 45  0000 C CNN
F 2 "XXX-00000" H 1200 1381 60  0000 C CNN
F 3 "" H 1200 1200 60  0001 C CNN
	1    1200 1200
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0107
U 1 1 5D4A9E90
P 1200 1400
F 0 "#GND0107" H 1250 1350 45  0001 L BNN
F 1 "GND" H 1200 1230 45  0000 C CNN
F 2 "" H 1200 1300 60  0001 C CNN
F 3 "" H 1200 1300 60  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
Text Label 2850 1200 2    50   ~ 0
ANA_TEMP
Wire Wire Line
	2600 1200 2850 1200
$Comp
L LM50CIM3:LM50CIM3 U1
U 1 1 5D498B24
P 1900 1200
F 0 "U1" H 1900 1565 50  0000 C CNN
F 1 "LM50CIM3" H 1900 1474 50  0000 C CNN
F 2 "SOT95P260X110-3N" H 1900 1200 50  0001 L BNN
F 3 "" H 1900 1200 50  0001 L BNN
F 4 "LM50CIM3/NOPBCT-ND" H 1900 1200 50  0001 L BNN "Field4"
F 5 "Texas Instruments" H 1900 1200 50  0001 L BNN "Field5"
F 6 "https://www.digikey.com/product-detail/en/texas-instruments/LM50CIM3-NOPB/LM50CIM3-NOPBCT-ND/120169?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 1900 1200 50  0001 L BNN "Field6"
F 7 "LM50CIM3/NOPB" H 1900 1200 50  0001 L BNN "Field7"
F 8 "SOT-23 Texas Instruments" H 1900 1200 50  0001 L BNN "Field8"
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5D4F885B
P 9200 4000
F 0 "J1" H 9280 4042 50  0000 L CNN
F 1 "Conn_01x03" H 9280 3951 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S3B-PH-SM4-TB_1x03-1MP_P2.00mm_Horizontal" H 9200 4000 50  0001 C CNN
F 3 "~" H 9200 4000 50  0001 C CNN
	1    9200 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5D4F98BE
P 9200 4800
F 0 "J2" H 9280 4792 50  0000 L CNN
F 1 "Conn_01x04" H 9280 4701 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B4B-PH-SM4-TB_1x04-1MP_P2.00mm_Vertical" H 9200 4800 50  0001 C CNN
F 3 "~" H 9200 4800 50  0001 C CNN
	1    9200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D4FA6D7
P 8600 3900
F 0 "R4" V 8395 3900 50  0000 C CNN
F 1 "100" V 8486 3900 50  0000 C CNN
F 2 "Resistors:0402" V 8640 3890 50  0001 C CNN
F 3 "~" H 8600 3900 50  0001 C CNN
	1    8600 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5D4FB54C
P 8600 4100
F 0 "R5" V 8395 4100 50  0000 C CNN
F 1 "100" V 8486 4100 50  0000 C CNN
F 2 "Resistors:0402" V 8640 4090 50  0001 C CNN
F 3 "~" H 8600 4100 50  0001 C CNN
	1    8600 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 4100 9000 4100
Wire Wire Line
	8750 3900 9000 3900
Wire Wire Line
	8450 3900 8200 3900
Wire Wire Line
	8450 4100 8200 4100
$Comp
L SparkFun-PowerSymbols:GND #GND0108
U 1 1 5D50352E
P 8900 4200
F 0 "#GND0108" H 8950 4150 45  0001 L BNN
F 1 "GND" H 8900 4030 45  0000 C CNN
F 2 "" H 8900 4100 60  0001 C CNN
F 3 "" H 8900 4100 60  0001 C CNN
	1    8900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4200 8900 4000
Wire Wire Line
	8900 4000 9000 4000
Text Label 8200 3900 0    50   ~ 0
UC_TX
Text Label 8200 4100 0    50   ~ 0
UC_RX
$Comp
L SparkFun-PowerSymbols:3.3V #SUPPLY0106
U 1 1 5D50DE9E
P 8400 4700
F 0 "#SUPPLY0106" H 8450 4700 45  0001 L BNN
F 1 "3.3V" H 8400 4976 45  0000 C CNN
F 2 "XXX-00000" H 8400 4881 60  0000 C CNN
F 3 "" H 8400 4700 60  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:GND #GND0109
U 1 1 5D50E8B6
P 8400 4800
F 0 "#GND0109" H 8450 4750 45  0001 L BNN
F 1 "GND" H 8400 4630 45  0000 C CNN
F 2 "" H 8400 4700 60  0001 C CNN
F 3 "" H 8400 4700 60  0001 C CNN
	1    8400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4700 9000 4700
Wire Wire Line
	8400 4800 9000 4800
Wire Wire Line
	9000 4900 8600 4900
Wire Wire Line
	9000 5000 8600 5000
Text Label 8600 4900 0    50   ~ 0
SCL
Text Label 8600 5000 0    50   ~ 0
SDA
Wire Wire Line
	5100 3450 4250 3450
Text GLabel 4250 3450 0    50   Input ~ 0
BATT_MON
Wire Wire Line
	5100 2250 4450 2250
Wire Wire Line
	5100 2350 4450 2350
Text Label 4450 2250 0    50   ~ 0
XTAL1
Text Label 4450 2350 0    50   ~ 0
XTAL2
Wire Wire Line
	5100 2750 4250 2750
Wire Wire Line
	5100 2850 4250 2850
Wire Wire Line
	5100 2950 4250 2950
Text GLabel 4250 2750 0    50   Output ~ 0
MEM_CS
Text GLabel 4250 2850 0    50   Output ~ 0
RF_CS
Text GLabel 4250 2950 0    50   Output ~ 0
RF_CE
$EndSCHEMATC
