EESchema Schematic File Version 4
LIBS:CoolerVacunas_RevD5-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Cooler de Vacunas - Controlador RevD.5"
Date "2026-10-09"
Rev "D.3"
Comp "Universidad del Desarrollo"
Comment1 "Correccion ERC: conexiones en grilla + NC en GPIO sin uso + potencia reconocida"
Comment2 "ESP32 DevKit V1 30P + 2x DS18B20 + OLED/LED remotos + modulo MOSFET externo"
Comment3 "PCB solo baja potencia 5V/3V3/control; AGM/buck/MOSFET/Peltier externos"
Comment4 ""
$EndDescr
$Comp
L CoolerVacunas_RevD5:ESP32_DEVKIT_V1_30P U1
U 1 1 69000001
P 5500 3500
F 0 "U1" H 5550 3600 50  0000 C CNN
F 1 "ESP32_DEVKIT_V1_30P" H 5550 3400 50  0000 C CNN
F 2 "CoolerVacunas:ESP32_DevKit_V1_30P_Carrier" H 5500 3500 50  0001 C CNN
F 3 "" H 5500 3500 50  0001 C CNN
	1    5500 3500
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:CONN2_PWRIN J1
U 1 1 69000002
P 1700 1800
F 0 "J1" H 1750 1900 50  0000 C CNN
F 1 "5V_FROM_BUCK" H 1750 1700 50  0000 C CNN
F 2 "CoolerVacunas:WIRE_2P_P5.08" H 1700 1800 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:CONN3 J2
U 1 1 69000003
P 9000 2400
F 0 "J2" H 9050 2500 50  0000 C CNN
F 1 "CABLE_DS18B20_1" H 9050 2300 50  0000 C CNN
F 2 "CoolerVacunas:WIRE_3P_P5.08" H 9000 2400 50  0001 C CNN
F 3 "" H 9000 2400 50  0001 C CNN
	1    9000 2400
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:CONN3 J3
U 1 1 69000004
P 9000 3200
F 0 "J3" H 9050 3300 50  0000 C CNN
F 1 "CABLE_DS18B20_2" H 9050 3100 50  0000 C CNN
F 2 "CoolerVacunas:WIRE_3P_P5.08" H 9000 3200 50  0001 C CNN
F 3 "" H 9000 3200 50  0001 C CNN
	1    9000 3200
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:CONN4 J4
U 1 1 69000005
P 9000 4100
F 0 "J4" H 9050 4200 50  0000 C CNN
F 1 "CABLE_OLED" H 9050 4000 50  0000 C CNN
F 2 "CoolerVacunas:WIRE_4P_P5.08" H 9000 4100 50  0001 C CNN
F 3 "" H 9000 4100 50  0001 C CNN
	1    9000 4100
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:CONN2 J5
U 1 1 69000006
P 9000 5000
F 0 "J5" H 9050 5100 50  0000 C CNN
F 1 "CABLE_LED" H 9050 4900 50  0000 C CNN
F 2 "CoolerVacunas:WIRE_2P_P5.08" H 9000 5000 50  0001 C CNN
F 3 "" H 9000 5000 50  0001 C CNN
	1    9000 5000
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:CONN3 J6
U 1 1 69000007
P 2600 5000
F 0 "J6" H 2650 5100 50  0000 C CNN
F 1 "MOSFET_MODULE_CTRL" H 2650 4900 50  0000 C CNN
F 2 "CoolerVacunas:WIRE_3P_P5.08" H 2600 5000 50  0001 C CNN
F 3 "" H 2600 5000 50  0001 C CNN
	1    2600 5000
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:R_SIMPLE R1
U 1 1 69000008
P 7900 2100
F 0 "R1" H 7950 2200 50  0000 C CNN
F 1 "4.7k" H 7950 2000 50  0000 C CNN
F 2 "CoolerVacunas:R_THT_P7.62mm" H 7900 2100 50  0001 C CNN
F 3 "" H 7900 2100 50  0001 C CNN
	1    7900 2100
	1 0 0 -1
$EndComp
$Comp
L CoolerVacunas_RevD5:R_SIMPLE R2
U 1 1 69000009
P 7900 4900
F 0 "R2" H 7950 5000 50  0000 C CNN
F 1 "330R" H 7950 4800 50  0000 C CNN
F 2 "CoolerVacunas:R_THT_P7.62mm" H 7900 4900 50  0001 C CNN
F 3 "" H 7900 4900 50  0001 C CNN
	1    7900 4900
	1 0 0 -1
$EndComp
Wire Wire Line
	1400 1700 1200 1700
Text Label 1200 1700 0    40   ~ 0
5V
Wire Wire Line
	1400 1900 1200 1900
Text Label 1200 1900 0    40   ~ 0
GND
Wire Wire Line
	4800 2600 4500 2600
Text Label 4500 2600 0    40   ~ 0
5V
Wire Wire Line
	4800 2700 4500 2700
Text Label 4500 2700 0    40   ~ 0
GND
Wire Wire Line
	4800 3100 4500 3100
Text Label 4500 3100 0    40   ~ 0
PELTIER_CTRL
Wire Wire Line
	4800 3300 4500 3300
Text Label 4500 3300 0    40   ~ 0
LED_CTRL
Wire Wire Line
	6200 4000 6500 4000
Text Label 6500 4000 0    40   ~ 0
3V3
Wire Wire Line
	6200 3900 6500 3900
Text Label 6500 3900 0    40   ~ 0
GND
Wire Wire Line
	6200 3600 6500 3600
Text Label 6500 3600 0    40   ~ 0
TEMP_DATA
Wire Wire Line
	6200 3000 6500 3000
Text Label 6500 3000 0    40   ~ 0
OLED_SDA
Wire Wire Line
	6200 2700 6500 2700
Text Label 6500 2700 0    40   ~ 0
OLED_SCL
NoConn ~ 4800 2800
NoConn ~ 4800 2900
NoConn ~ 4800 3000
NoConn ~ 4800 3200
NoConn ~ 4800 3400
NoConn ~ 4800 3500
NoConn ~ 4800 3600
NoConn ~ 4800 3700
NoConn ~ 4800 3800
NoConn ~ 4800 3900
NoConn ~ 4800 4000
NoConn ~ 6200 2600
NoConn ~ 6200 2800
NoConn ~ 6200 2900
NoConn ~ 6200 3100
NoConn ~ 6200 3200
NoConn ~ 6200 3300
NoConn ~ 6200 3400
NoConn ~ 6200 3500
NoConn ~ 6200 3700
NoConn ~ 6200 3800
Wire Wire Line
	7700 2100 7500 2100
Text Label 7500 2100 0    40   ~ 0
3V3
Wire Wire Line
	8100 2100 8300 2100
Text Label 8300 2100 0    40   ~ 0
TEMP_DATA
Wire Wire Line
	8700 2200 8400 2200
Text Label 8400 2200 0    40   ~ 0
3V3
Wire Wire Line
	8700 2400 8400 2400
Text Label 8400 2400 0    40   ~ 0
TEMP_DATA
Wire Wire Line
	8700 2600 8400 2600
Text Label 8400 2600 0    40   ~ 0
GND
Wire Wire Line
	8700 3000 8400 3000
Text Label 8400 3000 0    40   ~ 0
3V3
Wire Wire Line
	8700 3200 8400 3200
Text Label 8400 3200 0    40   ~ 0
TEMP_DATA
Wire Wire Line
	8700 3400 8400 3400
Text Label 8400 3400 0    40   ~ 0
GND
Wire Wire Line
	8700 3800 8400 3800
Text Label 8400 3800 0    40   ~ 0
GND
Wire Wire Line
	8700 4000 8400 4000
Text Label 8400 4000 0    40   ~ 0
3V3
Wire Wire Line
	8700 4200 8400 4200
Text Label 8400 4200 0    40   ~ 0
OLED_SCL
Wire Wire Line
	8700 4400 8400 4400
Text Label 8400 4400 0    40   ~ 0
OLED_SDA
Wire Wire Line
	7700 4900 7500 4900
Text Label 7500 4900 0    40   ~ 0
LED_CTRL
Wire Wire Line
	8100 4900 8700 4900
Wire Wire Line
	8700 5100 8400 5100
Text Label 8400 5100 0    40   ~ 0
GND
Wire Wire Line
	2300 4800 2000 4800
Text Label 2000 4800 0    40   ~ 0
5V
Wire Wire Line
	2300 5000 2000 5000
Text Label 2000 5000 0    40   ~ 0
GND
Wire Wire Line
	2300 5200 2000 5200
Text Label 2000 5200 0    40   ~ 0
PELTIER_CTRL
Text Notes 900 850 0    80   ~ 12
REV D.2 - CORRECCION ERC
Text Notes 900 950 0    50   ~ 0
Conexiones reconstruidas sobre grilla de 100 mil. Los GPIO no usados del ESP32 llevan marca No Connect.
Text Notes 900 1050 0    50   ~ 0
J1 se define como entrada de potencia 5V/GND desde el buck; el pin 3V3 del DevKit se define como salida de potencia.
Text Notes 900 1150 0    50   ~ 0
2x DS18B20 comparten TEMP_DATA y una sola R1=4.7k. OLED y LED siguen remotos.
Text Notes 900 1250 0    50   ~ 0
AGM 12V, interruptor, buck, modulo MOSFET y TEC1-12706 permanecen externos.
Text Notes 7600 2800 0    50   ~ 0
J2/J3: 1=3V3  2=DATA  3=GND
Text Notes 7600 4600 0    50   ~ 0
J4 OLED: 1=GND  2=3V3  3=SCL  4=SDA
Text Notes 7600 5300 0    50   ~ 0
J5 LED: 1=LED+ despues de R2  2=GND
Text Notes 1800 5500 0    50   ~ 0
J6 modulo MOSFET: 1=5V  2=GND  3=SIGNAL
$EndSCHEMATC
