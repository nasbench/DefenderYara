
rule TrojanSpy_Win32_Bancos_ACT{
	meta:
		description = "TrojanSpy:Win32/Bancos.ACT,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4a 00 61 00 76 00 61 00 20 00 44 00 65 00 76 00 65 00 6c 00 6f 00 70 00 65 00 72 00 5c 00 53 00 69 00 73 00 74 00 65 00 6d 00 61 00 73 00 5c 00 2d 00 20 00 46 00 45 00 56 00 45 00 52 00 45 00 49 00 52 00 4f 00 20 00 2d 00 20 00 41 00 52 00 52 00 4f 00 43 00 48 00 41 00 4e 00 44 00 4f 00 } //01 00 
		$a_01_1 = {5c 00 53 00 63 00 70 00 61 00 64 00 5c 00 73 00 63 00 70 00 73 00 73 00 73 00 68 00 32 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_2 = {5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 61 00 62 00 6e 00 2e 00 67 00 70 00 63 00 } //01 00 
		$a_01_3 = {43 00 3a 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 5c 00 66 00 69 00 6c 00 65 00 73 00 5c 00 6b 00 6c 00 6f 00 67 00 2e 00 6c 00 6f 00 67 00 } //01 00 
		$a_01_4 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 4f 00 66 00 66 00 69 00 63 00 65 00 5c 00 6f 00 66 00 66 00 69 00 63 00 65 00 31 00 34 00 5c 00 57 00 69 00 6e 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_5 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4d 00 65 00 64 00 69 00 61 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 5c 00 77 00 6d 00 70 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_6 = {5c 00 4a 00 61 00 76 00 61 00 20 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 5c 00 5f 00 20 00 50 00 72 00 6f 00 6a 00 65 00 74 00 6f 00 73 00 5c 00 2d 00 2d 00 20 00 46 00 45 00 44 00 45 00 4c 00 48 00 4f 00 53 00 5c 00 41 00 67 00 6e 00 61 00 6c 00 64 00 6f 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}