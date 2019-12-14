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
P 9850 5550
F 0 "U?" H 9450 5050 50  0000 C CNN
F 1 "CH340C" H 9550 4900 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 9900 5000 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 9500 6350 50  0001 C CNN
	1    9850 5550
	1    0    0    -1  
$EndComp
Text Label 10250 5150 0    50   ~ 0
TXD
Text Label 10250 5250 0    50   ~ 0
RXD
Text Label 10250 5950 0    50   ~ 0
RTS
Text Label 10250 5850 0    50   ~ 0
DTR
NoConn ~ 10250 5450
NoConn ~ 10250 5550
NoConn ~ 10250 5750
NoConn ~ 9450 5250
$Comp
L power:+3.3V #PWR?
U 1 1 5DF2EFBC
P 9800 4800
F 0 "#PWR?" H 9800 4650 50  0001 C CNN
F 1 "+3.3V" H 9815 4973 50  0000 C CNN
F 2 "" H 9800 4800 50  0001 C CNN
F 3 "" H 9800 4800 50  0001 C CNN
	1    9800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4950 9850 4850
Wire Wire Line
	9850 4850 9800 4850
Wire Wire Line
	9750 4850 9750 4950
Wire Wire Line
	9800 4800 9800 4850
Connection ~ 9800 4850
Wire Wire Line
	9800 4850 9750 4850
$Comp
L Regulator_Linear:AP1117-15 U?
U 1 1 5DF31D5F
P 1950 6600
F 0 "U?" H 1950 6842 50  0000 C CNN
F 1 "AP111733" H 1950 6751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1950 6800 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 2050 6350 50  0001 C CNN
	1    1950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF328B3
P 2400 6900
F 0 "C?" H 2515 6946 50  0000 L CNN
F 1 "4.7uF" H 2515 6855 50  0000 L CNN
F 2 "" H 2438 6750 50  0001 C CNN
F 3 "~" H 2400 6900 50  0001 C CNN
	1    2400 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF32E3C
P 1550 6950
F 0 "C?" H 1665 6996 50  0000 L CNN
F 1 "4.7uF" H 1665 6905 50  0000 L CNN
F 2 "" H 1588 6800 50  0001 C CNN
F 3 "~" H 1550 6950 50  0001 C CNN
	1    1550 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF33418
P 1950 7150
F 0 "#PWR?" H 1950 6900 50  0001 C CNN
F 1 "GND" H 1955 6977 50  0000 C CNN
F 2 "" H 1950 7150 50  0001 C CNN
F 3 "" H 1950 7150 50  0001 C CNN
	1    1950 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6900 1950 7100
Wire Wire Line
	2400 6750 2400 6600
Wire Wire Line
	2400 6600 2250 6600
$Comp
L power:+3.3V #PWR?
U 1 1 5DF34528
P 2400 6400
F 0 "#PWR?" H 2400 6250 50  0001 C CNN
F 1 "+3.3V" H 2415 6573 50  0000 C CNN
F 2 "" H 2400 6400 50  0001 C CNN
F 3 "" H 2400 6400 50  0001 C CNN
	1    2400 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DF34B3B
P 1200 6300
F 0 "#PWR?" H 1200 6150 50  0001 C CNN
F 1 "VCC" H 1217 6473 50  0000 C CNN
F 2 "" H 1200 6300 50  0001 C CNN
F 3 "" H 1200 6300 50  0001 C CNN
	1    1200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6400 2400 6600
Connection ~ 2400 6600
$Comp
L Device:D D?
U 1 1 5DF35559
P 1350 6600
F 0 "D?" H 1350 6384 50  0000 C CNN
F 1 "MBR120" H 1350 6475 50  0000 C CNN
F 2 "" H 1350 6600 50  0001 C CNN
F 3 "~" H 1350 6600 50  0001 C CNN
	1    1350 6600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 6600 1550 6600
Wire Wire Line
	1200 6600 1200 6300
Wire Wire Line
	2400 7050 2400 7100
Wire Wire Line
	2400 7100 1950 7100
Connection ~ 1950 7100
Wire Wire Line
	1950 7100 1950 7150
Wire Wire Line
	1550 6800 1550 6600
Connection ~ 1550 6600
Wire Wire Line
	1550 6600 1500 6600
Wire Wire Line
	1550 7100 1950 7100
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5DF429DE
P 5600 6450
F 0 "Q?" H 5791 6496 50  0000 L CNN
F 1 "MMBT3904" H 5791 6405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5800 6375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5600 6450 50  0001 L CNN
	1    5600 6450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q?
U 1 1 5DF42F4A
P 5600 7050
F 0 "Q?" H 5791 7096 50  0000 L CNN
F 1 "MMBT3904" H 5791 7005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5800 6975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 5600 7050 50  0001 L CNN
	1    5600 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF43EDC
P 5000 6450
F 0 "R?" V 4793 6450 50  0000 C CNN
F 1 "10K" V 4884 6450 50  0000 C CNN
F 2 "" V 4930 6450 50  0001 C CNN
F 3 "~" H 5000 6450 50  0001 C CNN
	1    5000 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF44157
P 5000 7050
F 0 "R?" V 4793 7050 50  0000 C CNN
F 1 "10K" V 4884 7050 50  0000 C CNN
F 2 "" V 4930 7050 50  0001 C CNN
F 3 "~" H 5000 7050 50  0001 C CNN
	1    5000 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 6450 5150 6450
Wire Wire Line
	5400 7050 5150 7050
Text Label 4550 6150 0    50   ~ 0
EN
Text Label 4550 7050 0    50   ~ 0
RTS
Wire Wire Line
	4850 7050 4750 7050
Wire Wire Line
	5700 6250 5700 6150
Wire Wire Line
	5700 6150 4550 6150
Text Label 4550 6450 0    50   ~ 0
DTR
Wire Wire Line
	4850 6450 4800 6450
Text Label 4550 7300 0    50   ~ 0
GPIO0
Wire Wire Line
	5700 7250 5700 7300
Wire Wire Line
	5700 7300 4550 7300
Wire Wire Line
	5700 6850 5700 6800
Wire Wire Line
	5700 6800 4800 6800
Wire Wire Line
	4800 6800 4800 6450
Connection ~ 4800 6450
Wire Wire Line
	4800 6450 4550 6450
Wire Wire Line
	5700 6650 4750 6650
Wire Wire Line
	4750 6650 4750 7050
Connection ~ 4750 7050
Wire Wire Line
	4750 7050 4550 7050
$Comp
L LED:WS2812B D?
U 1 1 5DF4AD3B
P 1400 2000
F 0 "D?" H 1550 2300 50  0000 L CNN
F 1 "WS2812B" H 1600 2400 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1450 1700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1500 1625 50  0001 L TNN
	1    1400 2000
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D?
U 1 1 5DF4C388
P 2450 2000
F 0 "D?" H 2600 2500 50  0000 L CNN
F 1 "WS2812B" H 2600 2300 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 2500 1700 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2550 1625 50  0001 L TNN
	1    2450 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF4D0A0
P 2800 2850
F 0 "C?" H 2915 2896 50  0000 L CNN
F 1 "0.1uF" H 2915 2805 50  0000 L CNN
F 2 "" H 2838 2700 50  0001 C CNN
F 3 "~" H 2800 2850 50  0001 C CNN
	1    2800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1700 1400 1600
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5DF60FAB
P 2050 5150
F 0 "J?" H 2130 5142 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 2130 5051 50  0000 L CNN
F 2 "" H 2050 5150 50  0001 C CNN
F 3 "~" H 2050 5150 50  0001 C CNN
	1    2050 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DF5B194
P 1100 5050
F 0 "R?" V 893 5050 50  0000 C CNN
F 1 "10K" V 984 5050 50  0000 C CNN
F 2 "" V 1030 5050 50  0001 C CNN
F 3 "~" H 1100 5050 50  0001 C CNN
	1    1100 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 4850 1300 4850
$Comp
L Device:R R?
U 1 1 5DF5B633
P 1500 5000
F 0 "R?" V 1293 5000 50  0000 C CNN
F 1 "10K" V 1384 5000 50  0000 C CNN
F 2 "" V 1430 5000 50  0001 C CNN
F 3 "~" H 1500 5000 50  0001 C CNN
	1    1500 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 5150 1650 5150
Wire Wire Line
	1650 5150 1650 4700
Wire Wire Line
	1650 4700 1300 4700
Wire Wire Line
	1300 4700 1300 4850
Connection ~ 1300 4850
Wire Wire Line
	1300 4850 1500 4850
$Comp
L power:+3.3V #PWR?
U 1 1 5DF7108A
P 1300 4700
F 0 "#PWR?" H 1300 4550 50  0001 C CNN
F 1 "+3.3V" H 1315 4873 50  0000 C CNN
F 2 "" H 1300 4700 50  0001 C CNN
F 3 "" H 1300 4700 50  0001 C CNN
	1    1300 4700
	1    0    0    -1  
$EndComp
Connection ~ 1300 4700
Text Label 900  5350 0    50   ~ 0
SDA
Text Label 900  5250 0    50   ~ 0
SCL
Wire Wire Line
	1850 5350 1500 5350
Wire Wire Line
	1500 5150 1500 5350
Connection ~ 1500 5350
Wire Wire Line
	1500 5350 900  5350
Wire Wire Line
	1100 4850 1100 4900
Wire Wire Line
	900  5250 1100 5250
Wire Wire Line
	1100 5200 1100 5250
Connection ~ 1100 5250
Wire Wire Line
	1100 5250 1850 5250
Wire Wire Line
	1850 5050 1700 5050
Wire Wire Line
	1700 5050 1700 5550
$Comp
L power:GND #PWR?
U 1 1 5DF7CD80
P 1700 5550
F 0 "#PWR?" H 1700 5300 50  0001 C CNN
F 1 "GND" H 1705 5377 50  0000 C CNN
F 2 "" H 1700 5550 50  0001 C CNN
F 3 "" H 1700 5550 50  0001 C CNN
	1    1700 5550
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5DF45865
P 6350 2300
F 0 "U?" H 6850 3950 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 7150 3750 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6350 800 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6050 2350 50  0001 C CNN
	1    6350 2300
	1    0    0    -1  
$EndComp
Wire Notes Line
	6950 5800 450  5800
$Comp
L power:GND #PWR?
U 1 1 5DF5A1AF
P 9850 6250
F 0 "#PWR?" H 9850 6000 50  0001 C CNN
F 1 "GND" H 9850 6100 50  0000 C CNN
F 2 "" H 9850 6250 50  0001 C CNN
F 3 "" H 9850 6250 50  0001 C CNN
	1    9850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 6250 9850 6150
Wire Wire Line
	9450 5550 9300 5550
Text Label 9300 5550 0    50   ~ 0
D-
Text Label 7700 5500 0    50   ~ 0
D-
Wire Wire Line
	9450 5450 9300 5450
Text Label 9300 5450 0    50   ~ 0
D+
Text Label 7700 5400 0    50   ~ 0
D+
$Comp
L power:VCC #PWR?
U 1 1 5DF31841
P 8200 4900
F 0 "#PWR?" H 8200 4750 50  0001 C CNN
F 1 "VCC" H 8217 5073 50  0000 C CNN
F 2 "" H 8200 4900 50  0001 C CNN
F 3 "" H 8200 4900 50  0001 C CNN
	1    8200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5200 8200 4900
Wire Wire Line
	8100 5200 8200 5200
Wire Wire Line
	7700 5200 7800 5200
$Comp
L Device:Fuse F?
U 1 1 5DF30928
P 7950 5200
F 0 "F?" V 7753 5200 50  0000 C CNN
F 1 "Fuse" V 7844 5200 50  0000 C CNN
F 2 "" V 7880 5200 50  0001 C CNN
F 3 "~" H 7950 5200 50  0001 C CNN
	1    7950 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF2E418
P 7300 6100
F 0 "#PWR?" H 7300 5850 50  0001 C CNN
F 1 "GND" H 7305 5927 50  0000 C CNN
F 2 "" H 7300 6100 50  0001 C CNN
F 3 "" H 7300 6100 50  0001 C CNN
	1    7300 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5950 7300 5800
Connection ~ 7300 5950
Wire Wire Line
	7400 5950 7300 5950
Wire Wire Line
	7400 5800 7400 5950
Wire Wire Line
	7300 6100 7300 5950
$Comp
L Connector:USB_B J?
U 1 1 5DF2C252
P 7400 5400
F 0 "J?" H 7457 5867 50  0000 C CNN
F 1 "USB_B" H 7457 5776 50  0000 C CNN
F 2 "" H 7550 5350 50  0001 C CNN
F 3 " ~" H 7550 5350 50  0001 C CNN
	1    7400 5400
	1    0    0    -1  
$EndComp
Wire Notes Line
	6950 6550 6950 4450
Wire Wire Line
	2150 2000 1700 2000
$Comp
L power:+3.3V #PWR?
U 1 1 5DF81907
P 1400 1600
F 0 "#PWR?" H 1400 1450 50  0001 C CNN
F 1 "+3.3V" H 1415 1773 50  0000 C CNN
F 2 "" H 1400 1600 50  0001 C CNN
F 3 "" H 1400 1600 50  0001 C CNN
	1    1400 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DF821B8
P 2450 1600
F 0 "#PWR?" H 2450 1450 50  0001 C CNN
F 1 "+3.3V" H 2465 1773 50  0000 C CNN
F 2 "" H 2450 1600 50  0001 C CNN
F 3 "" H 2450 1600 50  0001 C CNN
	1    2450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3000 1650 3200
Wire Wire Line
	1650 2550 1650 2700
$Comp
L power:+3.3V #PWR?
U 1 1 5DF82693
P 1650 2550
F 0 "#PWR?" H 1650 2400 50  0001 C CNN
F 1 "+3.3V" H 1665 2723 50  0000 C CNN
F 2 "" H 1650 2550 50  0001 C CNN
F 3 "" H 1650 2550 50  0001 C CNN
	1    1650 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF54417
P 1650 3200
F 0 "#PWR?" H 1650 2950 50  0001 C CNN
F 1 "GND" H 1655 3027 50  0000 C CNN
F 2 "" H 1650 3200 50  0001 C CNN
F 3 "" H 1650 3200 50  0001 C CNN
	1    1650 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DF4D5CB
P 1650 2850
F 0 "C?" H 1765 2896 50  0000 L CNN
F 1 "0.1uF" H 1765 2805 50  0000 L CNN
F 2 "" H 1688 2700 50  0001 C CNN
F 3 "~" H 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DF8302E
P 2800 2550
F 0 "#PWR?" H 2800 2400 50  0001 C CNN
F 1 "+3.3V" H 2815 2723 50  0000 C CNN
F 2 "" H 2800 2550 50  0001 C CNN
F 3 "" H 2800 2550 50  0001 C CNN
	1    2800 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF8B044
P 2800 3200
F 0 "#PWR?" H 2800 2950 50  0001 C CNN
F 1 "GND" H 2805 3027 50  0000 C CNN
F 2 "" H 2800 3200 50  0001 C CNN
F 3 "" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3000 2800 3200
Wire Wire Line
	2800 2700 2800 2550
Wire Wire Line
	2450 1700 2450 1600
$Comp
L power:GND #PWR?
U 1 1 5DF956EB
P 2450 2450
F 0 "#PWR?" H 2450 2200 50  0001 C CNN
F 1 "GND" H 2455 2277 50  0000 C CNN
F 2 "" H 2450 2450 50  0001 C CNN
F 3 "" H 2450 2450 50  0001 C CNN
	1    2450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF959AA
P 1400 2450
F 0 "#PWR?" H 1400 2200 50  0001 C CNN
F 1 "GND" H 1405 2277 50  0000 C CNN
F 2 "" H 1400 2450 50  0001 C CNN
F 3 "" H 1400 2450 50  0001 C CNN
	1    1400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2300 2450 2450
Wire Wire Line
	1400 2300 1400 2450
Text Label 950  2000 0    50   ~ 0
np
Wire Wire Line
	1100 2000 950  2000
NoConn ~ 2750 2000
Wire Notes Line
	500  4450 11200 4450
Wire Notes Line
	3750 500  3750 7800
Text Label 7200 2500 0    50   ~ 0
SDA
Text Label 7200 2600 0    50   ~ 0
SCL
Wire Wire Line
	6950 2500 7200 2500
Wire Wire Line
	6950 2600 7200 2600
Text Label 7150 1200 0    50   ~ 0
RX
Text Label 7150 1400 0    50   ~ 0
TX
Wire Wire Line
	6950 1200 7150 1200
Wire Wire Line
	6950 1400 7150 1400
Text Label 5600 1100 0    50   ~ 0
EN
Wire Wire Line
	5750 1100 5600 1100
NoConn ~ 5750 1300
NoConn ~ 5750 1400
Text Label 7650 2000 2    50   ~ 0
np
$Comp
L Device:C C?
U 1 1 5DFBF1D5
P 9000 1800
F 0 "C?" H 9115 1846 50  0000 L CNN
F 1 "0.1uF" H 9115 1755 50  0000 L CNN
F 2 "" H 9038 1650 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFBF1E1
P 9000 2150
F 0 "#PWR?" H 9000 1900 50  0001 C CNN
F 1 "GND" H 9005 1977 50  0000 C CNN
F 2 "" H 9000 2150 50  0001 C CNN
F 3 "" H 9000 2150 50  0001 C CNN
	1    9000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1950 9000 2150
Wire Wire Line
	9000 1650 9000 1500
$Comp
L power:+3.3V #PWR?
U 1 1 5DFC0C8C
P 6350 750
F 0 "#PWR?" H 6350 600 50  0001 C CNN
F 1 "+3.3V" H 6365 923 50  0000 C CNN
F 2 "" H 6350 750 50  0001 C CNN
F 3 "" H 6350 750 50  0001 C CNN
	1    6350 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFC1604
P 6350 3900
F 0 "#PWR?" H 6350 3650 50  0001 C CNN
F 1 "GND" H 6355 3727 50  0000 C CNN
F 2 "" H 6350 3900 50  0001 C CNN
F 3 "" H 6350 3900 50  0001 C CNN
	1    6350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3700 6350 3900
Wire Wire Line
	6350 900  6350 750 
Text Label 7150 1100 0    50   ~ 0
GPIO0
Wire Wire Line
	6950 1100 7150 1100
$Comp
L Device:R R?
U 1 1 5DFD2674
P 7400 2000
F 0 "R?" V 7150 2050 50  0000 R CNN
F 1 "R" V 7250 2000 50  0000 R CNN
F 2 "" V 7330 2000 50  0001 C CNN
F 3 "~" H 7400 2000 50  0001 C CNN
	1    7400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 2000 7650 2000
Wire Wire Line
	7250 2000 6950 2000
Wire Wire Line
	6950 1300 7300 1300
Text Label 7300 1300 2    50   ~ 0
GPIO1
Text Label 7300 1500 2    50   ~ 0
GPIO2
Wire Wire Line
	7300 1500 6950 1500
NoConn ~ 6950 1600
NoConn ~ 6950 1700
NoConn ~ 6950 1800
NoConn ~ 6950 1900
NoConn ~ 6950 2100
NoConn ~ 6950 2250
NoConn ~ 6950 2200
NoConn ~ 6950 2400
NoConn ~ 6950 2300
NoConn ~ 6950 2700
NoConn ~ 6950 2800
NoConn ~ 6950 2900
NoConn ~ 6950 3000
NoConn ~ 6950 3100
NoConn ~ 6950 3200
NoConn ~ 6950 3300
NoConn ~ 6950 3400
NoConn ~ 5750 2800
NoConn ~ 5750 2700
NoConn ~ 5750 2600
NoConn ~ 5750 2500
NoConn ~ 5750 2400
Wire Wire Line
	8500 2650 8500 2500
Wire Wire Line
	8500 3150 8500 3400
Text Label 8500 3400 1    50   ~ 0
GPIO2
Text Label 8500 2500 1    50   ~ 0
GPIO1
Wire Wire Line
	8400 3150 8400 3350
Wire Wire Line
	8400 2500 8400 2650
Text Label 8400 3350 1    50   ~ 0
SCL
Text Label 8400 2500 1    50   ~ 0
SDA
Wire Wire Line
	8300 3300 8300 3150
Wire Wire Line
	8300 2500 8300 2650
$Comp
L power:GND #PWR?
U 1 1 5DFE9B12
P 8300 3300
F 0 "#PWR?" H 8300 3050 50  0001 C CNN
F 1 "GND" H 8305 3127 50  0000 C CNN
F 2 "" H 8300 3300 50  0001 C CNN
F 3 "" H 8300 3300 50  0001 C CNN
	1    8300 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5DFE251B
P 8400 2950
F 0 "J?" V 8496 2762 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" V 8405 2762 50  0000 R CNN
F 2 "" H 8400 2950 50  0001 C CNN
F 3 "~" H 8400 2950 50  0001 C CNN
	1    8400 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DFBF1DB
P 8300 2500
F 0 "#PWR?" H 8300 2350 50  0001 C CNN
F 1 "+3.3V" H 8100 2550 50  0000 C CNN
F 2 "" H 8300 2500 50  0001 C CNN
F 3 "" H 8300 2500 50  0001 C CNN
	1    8300 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E03555F
P 9000 1500
F 0 "#PWR?" H 9000 1350 50  0001 C CNN
F 1 "+3.3V" H 9015 1673 50  0000 C CNN
F 2 "" H 9000 1500 50  0001 C CNN
F 3 "" H 9000 1500 50  0001 C CNN
	1    9000 1500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E035F76
P 4800 1700
F 0 "SW?" H 4800 1985 50  0000 C CNN
F 1 "RST" H 4800 1894 50  0000 C CNN
F 2 "" H 4800 1900 50  0001 C CNN
F 3 "~" H 4800 1900 50  0001 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E03662D
P 4800 3050
F 0 "SW?" H 4800 3335 50  0000 C CNN
F 1 "BOOT" H 4800 3244 50  0000 C CNN
F 2 "" H 4800 3250 50  0001 C CNN
F 3 "~" H 4800 3250 50  0001 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E03E36F
P 4600 3250
F 0 "#PWR?" H 4600 3000 50  0001 C CNN
F 1 "GND" H 4605 3077 50  0000 C CNN
F 2 "" H 4600 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E03E61B
P 4600 1900
F 0 "#PWR?" H 4600 1650 50  0001 C CNN
F 1 "GND" H 4605 1727 50  0000 C CNN
F 2 "" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
Text Label 5200 1700 0    50   ~ 0
EN
Text Label 5150 3050 0    50   ~ 0
GPIO0
Wire Wire Line
	4600 3250 4600 3050
Wire Wire Line
	5000 3050 5150 3050
Wire Wire Line
	5000 1700 5200 1700
Wire Wire Line
	4600 1700 4600 1900
$EndSCHEMATC
