EESchema Schematic File Version 4
LIBS:hermeslite-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 7
Title "Hermes-Lite"
Date "2019-02-23"
Rev "2.0-build8"
Comp "SofterHardware"
Comment1 "KF7O Steve Haynal"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1025 1125 2700 1700
U 56C9CAA0
F0 "Power and FPGA" 60
F1 "Power.sch" 60
$EndSheet
$Sheet
S 4125 1125 2700 1700
U 569C3E05
F0 "Ethernet" 60
F1 "Ethernet.sch" 60
$EndSheet
$Sheet
S 7225 1125 2700 1700
U 56B04D05
F0 "Clock" 60
F1 "Clock.sch" 60
$EndSheet
$Sheet
S 1025 3575 2700 1700
U 56AAFEF4
F0 "RF Frontend" 60
F1 "RFFrontend.sch" 60
$EndSheet
$Sheet
S 4125 3575 2700 1700
U 56C6CB95
F0 "Input Output" 60
F1 "InputOutput.sch" 60
$EndSheet
$Sheet
S 7225 3600 2700 1700
U 577F7295
F0 "PA" 60
F1 "PA.sch" 60
$EndSheet
$Comp
L hermeslite:JNO PB1
U 1 1 57AC2594
P 4450 6100
F 0 "PB1" V 4530 6100 39  0000 C CNN
F 1 "PCB" V 4450 6100 39  0000 C CNN
F 2 "" V 4380 6100 50  0001 C CNN
F 3 "" H 4450 6100 50  0000 C CNN
F 4 "PCB" V 4450 6100 60  0001 C CNN "Key"
F 5 "DNI" V 4450 6100 60  0001 C CNN "Option"
F 6 "NOBOM" V 4450 6100 60  0001 C CNN "Key"
	1    4450 6100
	0    1    1    0   
$EndComp
$Comp
L hermeslite:JNO EN1
U 1 1 57AC2611
P 4450 6350
F 0 "EN1" V 4530 6350 39  0000 C CNN
F 1 "CASE" V 4450 6350 39  0000 C CNN
F 2 "" V 4380 6350 50  0001 C CNN
F 3 "" H 4450 6350 50  0000 C CNN
F 4 "CASE" V 4450 6350 60  0001 C CNN "Key"
F 5 "DNI" V 4450 6350 60  0001 C CNN "Option"
F 6 "NOBOM" V 4450 6350 60  0001 C CNN "Key"
	1    4450 6350
	0    1    1    0   
$EndComp
$Comp
L hermeslite:JNO PG1
U 1 1 57AC2656
P 4450 6600
F 0 "PG1" V 4530 6600 39  0000 C CNN
F 1 "PROG" V 4450 6600 39  0000 C CNN
F 2 "" V 4380 6600 50  0001 C CNN
F 3 "" H 4450 6600 50  0000 C CNN
F 4 "PROG" V 4450 6600 60  0001 C CNN "Key"
F 5 "DNI" V 4450 6600 60  0001 C CNN "Option"
F 6 "NOBOM" V 4450 6600 60  0001 C CNN "Key"
	1    4450 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58181BD6
P 3550 7375
F 0 "#PWR01" H 3550 7125 50  0001 C CNN
F 1 "GND" H 3550 7225 50  0000 C CNN
F 2 "" H 3550 7375 50  0000 C CNN
F 3 "" H 3550 7375 50  0000 C CNN
	1    3550 7375
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT4
U 1 1 58181E1D
P 4150 7325
F 0 "GT4" H 4150 7525 39  0000 C CNN
F 1 "DNI" H 4150 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 4350 7325 50  0001 C CNN
F 3 "" H 4350 7325 50  0000 C CNN
F 4 "DNI" H 4150 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 4150 7325 60  0001 C CNN "Key"
	1    4150 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT3
U 1 1 58181E61
P 3950 7325
F 0 "GT3" H 3950 7525 39  0000 C CNN
F 1 "DNI" H 3950 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 4150 7325 50  0001 C CNN
F 3 "" H 4150 7325 50  0000 C CNN
F 4 "DNI" H 3950 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 3950 7325 60  0001 C CNN "Key"
	1    3950 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT2
U 1 1 58181E8F
P 3750 7325
F 0 "GT2" H 3750 7525 39  0000 C CNN
F 1 "DNI" H 3750 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 3950 7325 50  0001 C CNN
F 3 "" H 3950 7325 50  0000 C CNN
F 4 "DNI" H 3750 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 3750 7325 60  0001 C CNN "Key"
	1    3750 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT1
U 1 1 58181EC0
P 3550 7325
F 0 "GT1" H 3550 7525 39  0000 C CNN
F 1 "DNI" H 3550 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 3750 7325 50  0001 C CNN
F 3 "" H 3750 7325 50  0000 C CNN
F 4 "DNI" H 3550 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 3550 7325 60  0001 C CNN "Key"
	1    3550 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7325 3550 7350
Wire Wire Line
	3750 7325 3750 7350
Connection ~ 3750 7350
Wire Wire Line
	3950 7325 3950 7350
Connection ~ 3950 7350
Wire Wire Line
	4150 7325 4150 7350
Connection ~ 4150 7350
Connection ~ 3550 7350
Wire Wire Line
	3550 7350 3750 7350
$Comp
L hermeslite:TEST_1P MH1
U 1 1 581A34C3
P 1350 7325
F 0 "MH1" H 1350 7525 39  0000 C CNN
F 1 "DNI" H 1350 7525 50  0001 C CNN
F 2 "HERMESLITE:m3" H 1550 7325 50  0001 C CNN
F 3 "" H 1550 7325 50  0000 C CNN
F 4 "DNI" H 1350 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 1350 7325 60  0001 C CNN "Key"
	1    1350 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P MH2
U 1 1 581A39EB
P 1550 7325
F 0 "MH2" H 1550 7525 39  0000 C CNN
F 1 "DNI" H 1550 7525 50  0001 C CNN
F 2 "HERMESLITE:m3" H 1750 7325 50  0001 C CNN
F 3 "" H 1750 7325 50  0000 C CNN
F 4 "DNI" H 1550 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 1550 7325 60  0001 C CNN "Key"
	1    1550 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P MH3
U 1 1 581A3A22
P 1750 7325
F 0 "MH3" H 1750 7525 39  0000 C CNN
F 1 "DNI" H 1750 7525 50  0001 C CNN
F 2 "HERMESLITE:m3" H 1950 7325 50  0001 C CNN
F 3 "" H 1950 7325 50  0000 C CNN
F 4 "DNI" H 1750 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 1750 7325 60  0001 C CNN "Key"
	1    1750 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P MH4
U 1 1 581A3A5C
P 1950 7325
F 0 "MH4" H 1950 7525 39  0000 C CNN
F 1 "DNI" H 1950 7525 50  0001 C CNN
F 2 "HERMESLITE:m3" H 2150 7325 50  0001 C CNN
F 3 "" H 2150 7325 50  0000 C CNN
F 4 "DNI" H 1950 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 1950 7325 60  0001 C CNN "Key"
	1    1950 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P MH5
U 1 1 581A3A99
P 2150 7325
F 0 "MH5" H 2150 7525 39  0000 C CNN
F 1 "DNI" H 2150 7525 50  0001 C CNN
F 2 "HERMESLITE:m3" H 2350 7325 50  0001 C CNN
F 3 "" H 2350 7325 50  0000 C CNN
F 4 "DNI" H 2150 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 2150 7325 60  0001 C CNN "Key"
	1    2150 7325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 581A3AD9
P 1350 7375
F 0 "#PWR02" H 1350 7125 50  0001 C CNN
F 1 "GND" H 1350 7225 50  0000 C CNN
F 2 "" H 1350 7375 50  0000 C CNN
F 3 "" H 1350 7375 50  0000 C CNN
	1    1350 7375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7325 1350 7350
Wire Wire Line
	1350 7350 1550 7350
Wire Wire Line
	2150 7350 2150 7325
Wire Wire Line
	1950 7325 1950 7350
Connection ~ 1950 7350
Wire Wire Line
	1750 7325 1750 7350
Connection ~ 1750 7350
Wire Wire Line
	1550 7325 1550 7350
Connection ~ 1550 7350
Connection ~ 1350 7350
NoConn ~ 4300 6100
NoConn ~ 4300 6350
NoConn ~ 4300 6600
NoConn ~ 4600 6600
NoConn ~ 4600 6350
NoConn ~ 4600 6100
$Comp
L hermeslite:TEST_1P MH6
U 1 1 593E2E67
P 2350 7325
F 0 "MH6" H 2350 7525 39  0000 C CNN
F 1 "DNI" H 2350 7525 50  0001 C CNN
F 2 "HERMESLITE:m1d1" H 2550 7325 50  0001 C CNN
F 3 "" H 2550 7325 50  0000 C CNN
F 4 "DNI" H 2350 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 2350 7325 60  0001 C CNN "Key"
	1    2350 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7350 2350 7325
Connection ~ 2150 7350
$Comp
L hermeslite:TEST_1P GT5
U 1 1 59F10932
P 2550 7325
F 0 "GT5" H 2550 7525 39  0000 C CNN
F 1 "DNI" H 2550 7525 50  0001 C CNN
F 2 "HERMESLITE:m1d1" H 2750 7325 50  0001 C CNN
F 3 "" H 2750 7325 50  0000 C CNN
F 4 "DNI" H 2550 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 2550 7325 60  0001 C CNN "Key"
	1    2550 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 7350 2550 7325
Connection ~ 2350 7350
$Comp
L hermeslite:TEST_1P GT6
U 1 1 5A008CF0
P 2750 7325
F 0 "GT6" H 2750 7525 39  0000 C CNN
F 1 "DNI" H 2750 7525 50  0001 C CNN
F 2 "HERMESLITE:m1d1" H 2950 7325 50  0001 C CNN
F 3 "" H 2950 7325 50  0000 C CNN
F 4 "DNI" H 2750 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 2750 7325 60  0001 C CNN "Key"
	1    2750 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT7
U 1 1 5A008D3D
P 2950 7325
F 0 "GT7" H 2950 7525 39  0000 C CNN
F 1 "DNI" H 2950 7525 50  0001 C CNN
F 2 "HERMESLITE:m1d1" H 3150 7325 50  0001 C CNN
F 3 "" H 3150 7325 50  0000 C CNN
F 4 "DNI" H 2950 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 2950 7325 60  0001 C CNN "Key"
	1    2950 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT8
U 1 1 5A008ECF
P 3150 7325
F 0 "GT8" H 3150 7525 39  0000 C CNN
F 1 "DNI" H 3150 7525 50  0001 C CNN
F 2 "HERMESLITE:m1d1" H 3350 7325 50  0001 C CNN
F 3 "" H 3350 7325 50  0000 C CNN
F 4 "DNI" H 3150 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 3150 7325 60  0001 C CNN "Key"
	1    3150 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 7350 3150 7325
Connection ~ 2550 7350
Wire Wire Line
	2950 7325 2950 7350
Connection ~ 2950 7350
Wire Wire Line
	2750 7325 2750 7350
Connection ~ 2750 7350
$Comp
L hermeslite:TEST_1P GT9
U 1 1 5A009A75
P 3350 7325
F 0 "GT9" H 3350 7525 39  0000 C CNN
F 1 "DNI" H 3350 7525 50  0001 C CNN
F 2 "HERMESLITE:m1d1" H 3550 7325 50  0001 C CNN
F 3 "" H 3550 7325 50  0000 C CNN
F 4 "DNI" H 3350 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 3350 7325 60  0001 C CNN "Key"
F 6 "NOBOM" H 3350 7325 60  0001 C CNN "Key"
	1    3350 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7350 3350 7325
Connection ~ 3150 7350
$Comp
L hermeslite:TEST_1P GT10
U 1 1 59FFF2C1
P 4350 7325
F 0 "GT10" H 4350 7525 39  0000 C CNN
F 1 "DNI" H 4350 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 4550 7325 50  0001 C CNN
F 3 "" H 4550 7325 50  0000 C CNN
F 4 "DNI" H 4350 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 4350 7325 60  0001 C CNN "Key"
	1    4350 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT11
U 1 1 59FFF31A
P 4550 7325
F 0 "GT11" H 4550 7525 39  0000 C CNN
F 1 "DNI" H 4550 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 4750 7325 50  0001 C CNN
F 3 "" H 4750 7325 50  0000 C CNN
F 4 "DNI" H 4550 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 4550 7325 60  0001 C CNN "Key"
	1    4550 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT12
U 1 1 59FFF376
P 4750 7325
F 0 "GT12" H 4750 7525 39  0000 C CNN
F 1 "DNI" H 4750 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 4950 7325 50  0001 C CNN
F 3 "" H 4950 7325 50  0000 C CNN
F 4 "DNI" H 4750 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 4750 7325 60  0001 C CNN "Key"
	1    4750 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7350 4750 7325
Wire Wire Line
	4550 7350 4550 7325
Connection ~ 4550 7350
Wire Wire Line
	4350 7350 4350 7325
Connection ~ 4350 7350
$Comp
L hermeslite:TEST_1P GT13
U 1 1 59FFFA27
P 4950 7325
F 0 "GT13" H 4950 7525 39  0000 C CNN
F 1 "DNI" H 4950 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 5150 7325 50  0001 C CNN
F 3 "" H 5150 7325 50  0000 C CNN
F 4 "DNI" H 4950 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 4950 7325 60  0001 C CNN "Key"
	1    4950 7325
	1    0    0    -1  
$EndComp
$Comp
L hermeslite:TEST_1P GT14
U 1 1 59FFFA89
P 5150 7325
F 0 "GT14" H 5150 7525 39  0000 C CNN
F 1 "DNI" H 5150 7525 50  0001 C CNN
F 2 "HERMESLITE:GNDTAP" H 5350 7325 50  0001 C CNN
F 3 "" H 5350 7325 50  0000 C CNN
F 4 "DNI" H 5150 7325 60  0001 C CNN "Option"
F 5 "NOBOM" H 5150 7325 60  0001 C CNN "Key"
	1    5150 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7350 5150 7325
Connection ~ 4750 7350
Wire Wire Line
	4950 7350 4950 7325
Connection ~ 4950 7350
Text Notes 1750 6475 0    60   ~ 0
Do Not Include (DNI) any components\non this page fo assembly
Wire Wire Line
	3750 7350 3950 7350
Wire Wire Line
	3950 7350 4150 7350
Wire Wire Line
	4150 7350 4350 7350
Wire Wire Line
	3550 7350 3550 7375
Wire Wire Line
	1950 7350 2150 7350
Wire Wire Line
	1750 7350 1950 7350
Wire Wire Line
	1550 7350 1750 7350
Wire Wire Line
	1350 7350 1350 7375
Wire Wire Line
	2150 7350 2350 7350
Wire Wire Line
	2350 7350 2550 7350
Wire Wire Line
	2550 7350 2750 7350
Wire Wire Line
	2950 7350 3150 7350
Wire Wire Line
	2750 7350 2950 7350
Wire Wire Line
	3150 7350 3350 7350
Wire Wire Line
	4550 7350 4750 7350
Wire Wire Line
	4350 7350 4550 7350
Wire Wire Line
	4750 7350 4950 7350
Wire Wire Line
	4950 7350 5150 7350
$EndSCHEMATC
