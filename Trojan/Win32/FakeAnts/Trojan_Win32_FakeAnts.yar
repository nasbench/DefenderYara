
rule Trojan_Win32_FakeAnts{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 74 24 0e 8a f1 28 36 81 7c 24 0a a5 26 00 00 } //01 00 
		$a_01_1 = {8b 74 24 0e 00 36 ff 44 24 0e d1 e9 d1 e9 d1 e9 } //01 00 
		$a_01_2 = {72 b2 ff 44 24 0a 81 7c 24 0a 75 27 00 00 76 8f } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_2{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {8a c8 80 c1 51 30 88 90 01 02 00 10 83 c0 01 3d 90 00 } //02 00 
		$a_03_1 = {75 31 83 c6 04 81 fe 90 01 04 72 e4 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 90 00 } //01 00 
		$a_01_2 = {64 6f 5f 64 6c 6c 2e 64 6c 6c 00 49 } //01 00 
		$a_01_3 = {77 69 6e 6c 6f 67 6f 6e 2e 73 79 73 00 } //03 00 
		$a_03_4 = {8b 7c 24 10 b9 06 00 00 00 be 38 20 40 00 f3 a5 90 09 17 00 30 20 40 00 90 01 05 10 30 40 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_3{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 8b dc 83 ec 20 c7 44 24 90 01 01 00 00 00 00 b8 90 01 04 c7 44 24 90 01 05 c7 44 24 90 01 01 00 00 00 00 8b 7c 24 90 01 01 28 07 81 7c 24 04 90 01 01 27 00 00 74 06 8b 7c 24 90 01 01 00 07 ff 44 24 90 01 01 c1 e8 08 ff 44 24 90 01 01 83 7c 24 90 01 01 04 75 0d b8 90 01 04 c7 44 24 90 01 01 00 00 00 00 81 7c 24 90 01 05 72 c1 ff 44 24 90 01 01 81 7c 24 90 01 03 00 00 76 9e 8b e3 5b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_4{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {27 00 00 74 06 90 09 2b 00 83 ec 90 01 01 c7 44 24 90 01 03 00 00 90 01 05 c7 44 24 90 01 05 c7 44 24 90 01 01 00 00 00 00 8b 90 01 01 24 90 01 01 28 90 01 01 81 7c 24 90 00 } //01 00 
		$a_03_1 = {27 00 00 74 06 8b 7c 24 90 01 01 00 90 01 01 ff 44 24 90 01 01 c1 90 01 01 08 ff 44 24 90 01 01 83 7c 24 90 01 01 04 75 0d 90 01 05 c7 44 24 90 01 01 00 00 00 00 81 7c 24 90 01 05 72 c1 ff 44 24 90 01 01 81 7c 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_5{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 63 6f 6f 6b 69 65 73 2e 74 78 74 00 00 00 00 50 61 74 68 00 00 00 00 50 72 6f 66 69 6c 65 00 47 65 6e 65 72 61 6c 00 53 74 61 72 74 57 69 74 68 4c 61 73 74 50 72 6f 66 69 6c 65 00 00 00 00 70 72 6f 66 69 6c 65 73 2e 69 6e 69 00 00 00 00 } //02 00 
		$a_01_1 = {3f 70 63 5f 69 64 3d 25 64 26 61 63 74 69 6f 6e 3d 25 64 26 74 79 70 65 3d 25 73 26 61 62 62 72 3d 25 73 00 } //01 00 
		$a_01_2 = {41 72 65 20 79 6f 75 20 61 62 73 6f 6c 75 74 65 6c 79 20 73 75 72 65 20 79 6f 75 20 64 6f 20 4e 4f 54 20 77 61 6e 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 3f 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_6{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0b 00 "
		
	strings :
		$a_03_0 = {57 8b fc 83 ec 0c c7 44 24 17 00 00 00 00 b9 90 01 04 c7 44 24 1c 90 01 04 c7 44 24 26 00 00 00 00 8b 74 24 1c 28 0e 81 7c 24 17 90 01 04 74 06 8b 74 24 1c 00 0e ff 44 24 1c c1 e9 08 ff 44 24 26 83 7c 24 26 04 75 0d b9 90 01 04 c7 44 24 26 00 00 00 00 81 7c 24 1c 90 01 04 72 c1 ff 44 24 17 81 7c 24 17 90 01 04 76 9e 8b e7 5f 90 00 } //0b 00 
		$a_03_1 = {8b 04 24 66 31 c0 8b 10 81 f2 90 01 02 00 00 66 81 fa 90 01 02 74 16 2d 00 08 00 00 2d 00 08 00 00 eb e5 ad 35 90 01 04 ab e2 f7 c3 89 c5 b8 90 01 04 6a 00 ff 54 05 00 69 d2 00 10 00 00 c1 e2 04 83 c4 04 29 c0 8d 88 2c 03 00 00 89 cb c3 90 00 } //0b 00 
		$a_03_2 = {5e 8b 3e be 90 01 04 01 fe b9 90 01 04 31 d2 f9 8a 16 83 fa 00 74 0b 80 f2 90 01 01 83 fa 00 74 03 88 16 f8 f9 46 e2 e9 f8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_7{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 69 54 65 43 5f 52 6f 75 74 69 6e 65 73 } //01 00 
		$a_01_1 = {43 6f 6d 6d 6f 6e 41 6c 74 53 74 61 72 74 55 70 3d } //02 00 
		$a_01_2 = {6e 65 77 20 41 72 72 61 79 28 22 44 6f 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 63 6f 6e 74 69 6e 75 65 20 62 72 6f 77 73 69 6e 67 20 75 6e 70 72 6f 74 65 63 74 65 64 3f 22 } //02 00 
		$a_01_3 = {54 68 72 65 61 74 20 6f 66 20 76 69 72 75 73 20 61 74 74 61 63 6b 3c 2f 64 69 76 3e } //02 00 
		$a_01_4 = {64 69 73 61 62 6c 65 64 3a 20 68 69 67 68 20 70 72 6f 62 61 62 69 6c 69 74 79 20 6f 66 20 76 69 72 75 73 } //02 00 
		$a_01_5 = {79 6f 75 72 20 70 72 69 76 61 74 65 20 69 6e 66 6f 72 72 6d 61 74 69 6f 6e } //06 00 
		$a_01_6 = {5a 2b be 9c 91 be be be b7 7b 44 b8 75 37 b9 77 39 b8 74 36 b6 71 31 b3 6c 2a b0 67 22 ae 62 1c ac 5f 16 ab 5d 14 aa 5a 11 a8 59 0e a7 58 0d a7 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_8{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 00 00 74 06 8b 90 09 2b 00 83 ec 90 01 01 c7 44 24 90 01 03 00 00 90 01 05 c7 44 24 90 01 05 c7 44 24 90 01 01 00 00 00 00 8b 90 01 01 24 90 01 01 28 90 01 01 81 7c 24 90 00 } //01 00 
		$a_03_1 = {27 00 00 74 06 8b 90 09 2b 00 83 ec 90 01 01 c7 44 24 90 01 03 00 00 90 01 05 c7 44 24 90 01 05 c7 44 24 90 01 01 00 00 00 00 8b 90 01 01 24 90 01 01 28 90 01 01 81 7c 24 90 00 } //01 00 
		$a_03_2 = {26 00 00 74 06 8b 90 01 01 24 90 01 01 00 90 01 01 ff 44 24 90 01 01 c1 90 02 05 ff 44 24 90 01 01 83 7c 24 90 01 01 04 75 0d 90 01 05 c7 44 24 90 01 01 00 00 00 00 81 7c 24 90 01 05 72 90 01 01 ff 44 24 90 01 01 81 7c 24 90 01 02 27 00 00 90 00 } //01 00 
		$a_03_3 = {27 00 00 74 06 8b 90 01 01 24 90 01 01 00 90 01 01 ff 44 24 90 01 01 c1 90 02 05 ff 44 24 90 01 01 83 7c 24 90 01 01 04 75 0d 90 01 05 c7 44 24 90 01 01 00 00 00 00 81 7c 24 90 01 05 72 90 01 01 ff 44 24 90 01 01 81 7c 24 90 01 02 27 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_9{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 05 00 "
		
	strings :
		$a_00_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 63 00 74 00 6f 00 72 00 2d 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 72 00 65 00 73 00 61 00 6c 00 65 00 70 00 61 00 67 00 65 00 2f 00 } //05 00 
		$a_02_1 = {45 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 90 02 08 44 00 6f 00 63 00 74 00 6f 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 32 00 30 00 30 00 38 90 00 } //01 00 
		$a_00_2 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 50 00 43 00 20 00 66 00 72 00 6f 00 6d 00 20 00 76 00 69 00 6f 00 6c 00 65 00 6e 00 74 00 20 00 76 00 69 00 72 00 75 00 73 00 20 00 61 00 74 00 74 00 61 00 63 00 6b 00 21 00 } //01 00 
		$a_00_3 = {54 00 68 00 69 00 73 00 20 00 66 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 73 00 20 00 73 00 65 00 63 00 75 00 72 00 65 00 20 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 61 00 67 00 61 00 69 00 6e 00 73 00 74 00 20 00 73 00 65 00 6c 00 66 00 2d 00 72 00 65 00 73 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //01 00 
		$a_00_4 = {61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_FakeAnts_10{
	meta:
		description = "Trojan:Win32/FakeAnts,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0c 00 00 0f 00 "
		
	strings :
		$a_03_0 = {80 3e 00 75 ed 31 90 01 01 74 17 90 02 15 5a 90 02 03 42 90 02 03 52 90 02 05 90 03 05 02 ba 00 00 00 00 31 d2 eb d2 90 09 30 00 90 02 0a 02 16 90 02 0a 90 03 02 02 c1 ca c1 c2 90 02 06 81 90 00 } //0f 00 
		$a_03_1 = {80 3f 00 75 ed 31 90 01 01 74 17 90 02 15 5a 90 02 03 42 90 02 03 52 90 02 05 90 03 05 02 ba 00 00 00 00 31 d2 eb d2 90 09 30 00 90 02 0a 02 17 90 02 0a 90 03 02 02 c1 ca c1 c2 90 02 06 81 90 00 } //0f 00 
		$a_03_2 = {80 3f 00 75 ef 31 90 01 01 83 f9 00 74 11 90 02 10 59 41 51 90 02 05 90 03 05 02 b9 00 00 00 00 31 c9 eb d7 90 09 2a 00 90 02 0a 02 0f 90 02 05 c1 90 03 01 01 c9 c1 90 02 06 81 90 00 } //0f 00 
		$a_03_3 = {80 3e 00 75 ef 31 90 01 01 83 f9 00 74 11 90 02 10 59 41 51 90 02 05 90 03 05 02 b9 00 00 00 00 31 c9 eb d7 90 09 2a 00 90 02 0a 02 0e 90 02 05 c1 90 03 01 01 c9 c1 90 02 06 81 90 00 } //0f 00 
		$a_03_4 = {80 3f 00 75 ef 31 90 01 01 83 f8 00 74 17 90 02 10 58 90 02 03 40 90 02 03 50 90 02 10 90 03 05 02 b8 00 00 00 00 31 c0 eb 90 09 33 00 90 02 0a 02 07 90 02 05 c1 90 03 01 01 c0 c8 90 02 06 81 90 00 } //0f 00 
		$a_03_5 = {80 3e 00 75 ef 31 90 01 01 83 f8 00 74 17 90 02 10 58 90 02 03 40 90 02 03 50 90 02 10 90 03 05 02 b8 00 00 00 00 31 c0 eb 90 09 33 00 90 02 0a 02 06 90 02 05 c1 90 03 01 01 c0 c8 90 02 06 81 90 00 } //05 00 
		$a_00_6 = {68 74 74 70 3a 2f 2f 64 6f 63 74 6f 72 2d 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d 2f } //02 00 
		$a_00_7 = {50 72 6f 74 65 63 74 20 6d 79 20 50 43 20 6e 6f 77 } //02 00 
		$a_00_8 = {47 65 74 20 66 75 6c 6c 20 72 65 61 6c 2d 74 69 6d 65 20 70 72 6f 74 65 63 74 69 6f 6e } //02 00 
		$a_00_9 = {53 68 65 6c 6c 45 78 65 63 75 74 65 57 } //02 00 
		$a_00_10 = {68 74 74 70 3a 2f 2f 64 6f 63 74 6f 72 61 6e 74 69 76 69 72 75 73 32 30 30 38 61 2e 63 6f 6d 2f 73 75 70 70 6f 72 74 2e 70 68 70 } //02 00 
		$a_00_11 = {42 61 63 6b 64 6f 6f 72 2e 41 67 6f 62 6f 74 2e 67 65 6e } //00 00 
	condition:
		any of ($a_*)
 
}