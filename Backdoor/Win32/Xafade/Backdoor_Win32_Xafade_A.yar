
rule Backdoor_Win32_Xafade_A{
	meta:
		description = "Backdoor:Win32/Xafade.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {78 66 73 5f 63 61 73 68 58 50 5c 44 65 62 75 67 5c 78 66 73 5f 63 61 73 68 5f 6e 63 72 2e 70 64 62 00 00 } //01 00 
		$a_02_1 = {5b 21 5d 20 46 41 49 4c 2e 2e 20 64 69 73 70 65 6e 73 61 64 6f 72 65 73 20 6e 6f 20 65 6e 63 6f 6e 74 72 61 64 6f 73 00 90 02 20 5b 2b 5d 20 44 69 73 70 65 6e 73 61 64 6f 72 65 73 20 63 6f 75 6e 74 20 00 90 00 } //01 00 
		$a_00_2 = {78 66 73 2e 6c 6f 67 00 53 74 61 72 74 4b 65 79 62 6f 61 72 64 20 72 65 73 3d 25 69 0a 00 00 00 43 61 6e 63 65 6c 4b 65 79 62 6f 61 72 64 20 72 65 73 3d 25 } //01 00 
		$a_01_3 = {49 44 43 33 30 00 00 00 50 49 4e 33 30 00 00 00 58 00 46 00 53 00 20 00 41 00 44 00 4d 00 00 } //01 00 
		$a_00_4 = {57 6f 72 6b 36 34 5c 41 44 4d 5c 58 46 53 5c 52 65 6c 65 61 73 65 5c 58 46 53 2e 70 64 62 00 } //01 00 
		$a_02_5 = {64 69 73 70 6c 6f 67 2e 74 78 74 00 90 02 10 00 43 6f 6e 67 72 61 74 75 6c 61 74 69 6f 6e 73 21 20 59 6f 75 20 61 72 65 20 76 65 72 79 20 73 6b 69 6c 6c 65 64 90 00 } //01 00 
		$a_01_6 = {55 73 69 6e 67 20 64 65 76 69 63 65 20 25 73 0a 0a 00 4e 56 49 53 4f 53 50 49 54 00 53 72 76 63 56 65 72 73 69 6f 6e 20 52 65 63 6f 72 64 73 3a 20 0a 20 77 56 65 72 73 69 6f 6e 3a } //01 00 
		$a_01_7 = {44 3a 20 25 64 20 0a 00 48 53 65 72 76 69 63 65 20 41 64 64 72 65 73 73 20 3b 20 25 6c 64 20 0a 00 43 6f 6d 6d 61 6e 64 20 43 6f 64 65 20 3b 20 25 64 20 0a 00 45 76 65 6e 74 20 49 44 20 3b 20 25 64 20 0a 00 0a 45 76 65 6e 74 20 52 65 63 65 69 76 65 64 20 66 72 6f 6d 20 58 46 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}