
rule Trojan_Win32_Killav_CZ{
	meta:
		description = "Trojan:Win32/Killav.CZ,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 30 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 31 2e 34 33 32 32 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 30 2e 33 37 30 35 29 } //01 00 
		$a_01_1 = {73 76 63 68 6f 73 74 2e 64 6c 6c } //01 00 
		$a_01_2 = {4b 69 6c 6c 33 36 30 42 6f 78 } //01 00 
		$a_01_3 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 25 00 73 00 } //01 00 
		$a_01_4 = {53 00 74 00 6f 00 70 00 33 00 36 00 30 00 20 00 45 00 72 00 72 00 6f 00 72 00 21 00 } //01 00 
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 33 00 36 00 30 00 53 00 61 00 66 00 65 00 5c 00 73 00 61 00 66 00 65 00 6d 00 6f 00 6e 00 } //01 00 
		$a_01_6 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 30 00 30 00 33 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 42 00 49 00 54 00 53 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 } //01 00 
		$a_01_7 = {33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_8 = {73 00 61 00 66 00 65 00 62 00 6f 00 78 00 54 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_9 = {5c 00 62 00 69 00 74 00 73 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_10 = {5b 00 54 00 41 00 42 00 5d 00 } //00 00 
	condition:
		any of ($a_*)
 
}