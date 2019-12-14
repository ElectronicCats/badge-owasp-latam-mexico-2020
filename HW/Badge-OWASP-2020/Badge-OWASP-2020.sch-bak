EESchema Schematic File Version 4
LIBS:Badge-OWASP-2020-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-12-11"
Rev ""
Comp ""
Comment1 "Montserrat Figueroa"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB2:CH340C U?
U 1 1 5DF1A7B6
P 10200 5450
F 0 "U?" H 10200 4761 50  0000 C CNN
F 1 "CH340C" H 10200 4670 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10250 4900 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 9850 6250 50  0001 C CNN
	1    10200 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J?
U 1 1 5DF2C252
P 8850 5350
F 0 "J?" H 8907 5817 50  0000 C CNN
F 1 "USB_B" H 8907 5726 50  0000 C CNN
F 2 "" H 9000 5300 50  0001 C CNN
F 3 " ~" H 9000 5300 50  0001 C CNN
	1    8850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5450 9800 5450
Wire Wire Line
	9800 5350 9150 5350
Text Label 10600 5050 0    50   ~ 0
TXD
Text Label 10600 5150 0    50   ~ 0
RXD
Text Label 10600 5850 0    50   ~ 0
RTS
Text Label 10600 5750 0    50   ~ 0
DTR
NoConn ~ 10600 5350
NoConn ~ 10600 5450
NoConn ~ 10600 5650
Wire Wire Line
	10200 6050 9500 6050
Wire Wire Line
	8750 6050 8750 5900
Wire Wire Line
	8850 5750 8850 5900
Wire Wire Line
	8850 5900 8750 5900
Connection ~ 8750 5900
Wire Wire Line
	8750 5900 8750 5750
$Comp
L power:GND #PWR?
U 1 1 5DF2E418
P 9500 6050
F 0 "#PWR?" H 9500 5800 50  0001 C CNN
F 1 "GND" H 9505 5877 50  0000 C CNN
F 2 "" H 9500 6050 50  0001 C CNN
F 3 "" H 9500 6050 50  0001 C CNN
	1    9500 6050
	1    0    0    -1  
$EndComp
Connection ~ 9500 6050
Wire Wire Line
	9500 6050 8750 6050
NoConn ~ 9800 5150
$Comp
L power:+3.3V #PWR?
U 1 1 5DF2EFBC
P 10150 4700
F 0 "#PWR?" H 10150 4550 50  0001 C CNN
F 1 "+3.3V" H 10165 4873 50  0000 C CNN
F 2 "" H 10150 4700 50  0001 C CNN
F 3 "" H 10150 4700 50  0001 C CNN
	1    10150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4850 10200 4750
Wire Wire Line
	10200 4750 10150 4750
Wire Wire Line
	10100 4750 10100 4850
Wire Wire Line
	10150 4700 10150 4750
Connection ~ 10150 4750
Wire Wire Line
	10150 4750 10100 4750
$Comp
L Device:Fuse F?
U 1 1 5DF30928
P 9400 5150
F 0 "F?" V 9203 5150 50  0000 C CNN
F 1 "Fuse" V 9294 5150 50  0000 C CNN
F 2 "" V 9330 5150 50  0001 C CNN
F 3 "~" H 9400 5150 50  0001 C CNN
	1    9400 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 5150 9250 5150
Wire Wire Line
	9550 5150 9650 5150
Wire Wire Line
	9650 5150 9650 4850
$Comp
L power:VCC #PWR?
U 1 1 5DF31841
P 9650 4850
F 0 "#PWR?" H 9650 4700 50  0001 C CNN
F 1 "VCC" H 9667 5023 50  0000 C CNN
F 2 "" H 9650 4850 50  0001 C CNN
F 3 "" H 9650 4850 50  0001 C CNN
	1    9650 4850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP1117-15 U?
U 1 1 5DF31D5F
P 1500 6800
F 0 "U?" H 1500 7042 50  0000 C CNN
F 1 "AP111733" H 1500 6951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1500 7000 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 1600 6550 50  0001 C CNN
	1    1500 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF328B3
P 1950 7100
F 0 "C?" H 2065 7146 50  0000 L CNN
F 1 "4.7uF" H 2065 7055 50  0000 L CNN
F 2 "" H 1988 6950 50  0001 C CNN
F 3 "~" H 1950 7100 50  0001 C CNN
	1    1950 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF32E3C
P 1100 7150
F 0 "C?" H 1215 7196 50  0000 L CNN
F 1 "4.7uF" H 1215 7105 50  0000 L CNN
F 2 "" H 1138 7000 50  0001 C CNN
F 3 "~" H 1100 7150 50  0001 C CNN
	1    1100 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF33418
P 1500 7350
F 0 "#PWR?" H 1500 7100 50  0001 C CNN
F 1 "GND" H 1505 7177 50  0000 C CNN
F 2 "" H 1500 7350 50  0001 C CNN
F 3 "" H 1500 7350 50  0001 C CNN
	1    1500 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7100 1500 7300
Wire Wire Line
	1950 6950 1950 6800
Wire Wire Line
	1950 6800 1800 6800
$Comp
L power:+3.3V #PWR?
U 1 1 5DF34528
P 1950 6600
F 0 "#PWR?" H 1950 6450 50  0001 C CNN
F 1 "+3.3V" H 1965 6773 50  0000 C CNN
F 2 "" H 1950 6600 50  0001 C CNN
F 3 "" H 1950 6600 50  0001 C CNN
	1    1950 6600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DF34B3B
P 750 6500
F 0 "#PWR?" H 750 6350 50  0001 C CNN
F 1 "VCC" H 767 6673 50  0000 C CNN
F 2 "" H 750 6500 50  0001 C CNN
F 3 "" H 750 6500 50  0001 C CNN
	1    750  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6600 1950 6800
Connection ~ 1950 6800
$Comp
L Device:D D?
U 1 1 5DF35559
P 900 6800
F 0 "D?" H 900 6584 50  0000 C CNN
F 1 "MBR120" H 900 6675 50  0000 C CNN
F 2 "" H 900 6800 50  0001 C CNN
F 3 "~" H 900 6800 50  0001 C CNN
	1    900  6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 6800 1100 6800
Wire Wire Line
	750  6800 750  6500
Wire Wire Line
	1950 7250 1950 7300
Wire Wire Line
	1950 7300 1500 7300
Connection ~ 1500 7300
Wire Wire Line
	1500 7300 1500 7350
Wire Wire Line
	1100 7000 1100 6800
Connection ~ 1100 6800
Wire Wire Line
	1100 6800 1050 6800
Wire Wire Line
	1100 7300 1500 7300
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5DF429DE
P 5850 6200
F 0 "Q?" H 6041 6246 50  0000 L CNN
F 1 "MMBT3904" H 6041 6155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6050 6125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5850 6200 50  0001 L CNN
	1    5850 6200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5DF42F4A
P 5850 6800
F 0 "Q?" H 6041 6846 50  0000 L CNN
F 1 "MMBT3904" H 6041 6755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6050 6725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5850 6800 50  0001 L CNN
	1    5850 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF43EDC
P 5250 6200
F 0 "R?" V 5043 6200 50  0000 C CNN
F 1 "10K" V 5134 6200 50  0000 C CNN
F 2 "" V 5180 6200 50  0001 C CNN
F 3 "~" H 5250 6200 50  0001 C CNN
	1    5250 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF44157
P 5250 6800
F 0 "R?" V 5043 6800 50  0000 C CNN
F 1 "10K" V 5134 6800 50  0000 C CNN
F 2 "" V 5180 6800 50  0001 C CNN
F 3 "~" H 5250 6800 50  0001 C CNN
	1    5250 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 6200 5400 6200
Wire Wire Line
	5650 6800 5400 6800
Text Label 4800 5900 0    50   ~ 0
EN
Text Label 4800 6800 0    50   ~ 0
RTS
Wire Wire Line
	5100 6800 5000 6800
Wire Wire Line
	5950 6000 5950 5900
Wire Wire Line
	5950 5900 4800 5900
Text Label 4800 6200 0    50   ~ 0
DTR
Wire Wire Line
	5100 6200 5050 6200
Text Label 4800 7050 0    50   ~ 0
GPIO0
Wire Wire Line
	5950 7000 5950 7050
Wire Wire Line
	5950 7050 4800 7050
Wire Wire Line
	5950 6600 5950 6550
Wire Wire Line
	5950 6550 5050 6550
Wire Wire Line
	5050 6550 5050 6200
Connection ~ 5050 6200
Wire Wire Line
	5050 6200 4800 6200
Wire Wire Line
	5950 6400 5000 6400
Wire Wire Line
	5000 6400 5000 6800
Connection ~ 5000 6800
Wire Wire Line
	5000 6800 4800 6800
$Comp
L LED:WS2812B D?
U 1 1 5DF4AD3B
P 6000 1700
F 0 "D?" H 6344 1746 50  0000 L CNN
F 1 "WS2812B" H 6344 1655 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6050 1400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6100 1325 50  0001 L TNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 5DF4C388
P 6050 2700
F 0 "D?" H 6394 2746 50  0000 L CNN
F 1 "WS2812B" H 6394 2655 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 6100 2400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 6150 2325 50  0001 L TNN
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF4D0A0
P 5150 1750
F 0 "C?" H 5265 1796 50  0000 L CNN
F 1 "0.1uF" H 5265 1705 50  0000 L CNN
F 2 "" H 5188 1600 50  0001 C CNN
F 3 "~" H 5150 1750 50  0001 C CNN
	1    5150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF4D5CB
P 5350 2750
F 0 "C?" H 5465 2796 50  0000 L CNN
F 1 "0.1uF" H 5465 2705 50  0000 L CNN
F 2 "" H 5388 2600 50  0001 C CNN
F 3 "~" H 5350 2750 50  0001 C CNN
	1    5350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1400 6000 1300
Wire Wire Line
	6000 1300 5150 1300
Wire Wire Line
	5150 1300 5150 1600
Wire Wire Line
	6050 2400 6050 2300
Wire Wire Line
	6050 2300 5350 2300
Wire Wire Line
	5350 2300 5350 2600
Wire Wire Line
	5350 2900 5350 3000
Wire Wire Line
	5150 3000 5350 3000
Wire Wire Line
	5150 1900 5150 3000
Connection ~ 5350 3000
Wire Wire Line
	5350 3000 5350 3050
$Comp
L power:GND #PWR?
U 1 1 5DF54417
P 5350 3050
F 0 "#PWR?" H 5350 2800 50  0001 C CNN
F 1 "GND" H 5355 2877 50  0000 C CNN
F 2 "" H 5350 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0001 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1700 6300 2250
Wire Wire Line
	6300 2250 5700 2250
Wire Wire Line
	5700 2250 5700 2700
Wire Wire Line
	5700 2700 5750 2700
Wire Wire Line
	6000 2000 6000 2200
Wire Wire Line
	6000 2200 6500 2200
Wire Wire Line
	6500 2200 6500 3000
Wire Wire Line
	5350 3000 6050 3000
Connection ~ 6050 3000
Wire Wire Line
	6050 3000 6500 3000
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5DF60FAB
P 3900 3800
F 0 "J?" H 3980 3792 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 3980 3701 50  0000 L CNN
F 2 "" H 3900 3800 50  0001 C CNN
F 3 "~" H 3900 3800 50  0001 C CNN
	1    3900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF5B194
P 2950 3700
F 0 "R?" V 2743 3700 50  0000 C CNN
F 1 "10K" V 2834 3700 50  0000 C CNN
F 2 "" V 2880 3700 50  0001 C CNN
F 3 "~" H 2950 3700 50  0001 C CNN
	1    2950 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 3500 3150 3500
$Comp
L Device:R R?
U 1 1 5DF5B633
P 3350 3650
F 0 "R?" V 3143 3650 50  0000 C CNN
F 1 "10K" V 3234 3650 50  0000 C CNN
F 2 "" V 3280 3650 50  0001 C CNN
F 3 "~" H 3350 3650 50  0001 C CNN
	1    3350 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 3800 3500 3800
Wire Wire Line
	3500 3800 3500 3350
Wire Wire Line
	3500 3350 3150 3350
Wire Wire Line
	3150 3350 3150 3500
Connection ~ 3150 3500
Wire Wire Line
	3150 3500 3350 3500
$Comp
L power:+3.3V #PWR?
U 1 1 5DF7108A
P 3150 3350
F 0 "#PWR?" H 3150 3200 50  0001 C CNN
F 1 "+3.3V" H 3165 3523 50  0000 C CNN
F 2 "" H 3150 3350 50  0001 C CNN
F 3 "" H 3150 3350 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
Connection ~ 3150 3350
Text Label 2750 4000 0    50   ~ 0
SDA
Text Label 2750 3900 0    50   ~ 0
SCL
Wire Wire Line
	3700 4000 3350 4000
Wire Wire Line
	3350 3800 3350 4000
Connection ~ 3350 4000
Wire Wire Line
	3350 4000 2750 4000
Wire Wire Line
	2950 3500 2950 3550
Wire Wire Line
	2750 3900 2950 3900
Wire Wire Line
	2950 3850 2950 3900
Connection ~ 2950 3900
Wire Wire Line
	2950 3900 3700 3900
Wire Wire Line
	3700 3700 3550 3700
Wire Wire Line
	3550 3700 3550 4200
$Comp
L power:GND #PWR?
U 1 1 5DF7CD80
P 3550 4200
F 0 "#PWR?" H 3550 3950 50  0001 C CNN
F 1 "GND" H 3555 4027 50  0000 C CNN
F 2 "" H 3550 4200 50  0001 C CNN
F 3 "" H 3550 4200 50  0001 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
