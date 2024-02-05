
rule Trojan_Win32_Neurevt_gen_A{
	meta:
		description = "Trojan:Win32/Neurevt.gen!A,SIGNATURE_TYPE_PEHSTR,33 00 33 00 09 00 00 32 00 "
		
	strings :
		$a_01_0 = {6e 65 75 72 65 76 74 00 } //32 00 
		$a_01_1 = {57 69 6e 37 7a 69 70 00 00 00 00 55 75 69 64 00 } //32 00 
		$a_01_2 = {69 00 6e 00 73 00 00 00 64 00 62 00 67 00 00 00 72 00 6f 00 6e 00 00 00 } //32 00 
		$a_01_3 = {42 00 65 00 74 00 61 00 62 00 6f 00 74 00 20 00 28 00 63 00 29 00 20 00 32 00 30 00 31 00 32 00 2d 00 32 00 30 00 31 00 34 00 2c 00 20 00 63 00 6f 00 64 00 65 00 64 00 20 00 62 00 79 00 20 00 55 00 73 00 65 00 72 00 62 00 61 00 73 00 65 00 } //01 00 
		$a_01_4 = {69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 00 00 00 00 73 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 00 00 73 00 6b 00 79 00 70 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_5 = {2e 00 69 00 6e 00 69 00 00 00 00 00 2e 00 73 00 79 00 73 00 00 00 00 00 25 00 73 00 5c 00 25 00 30 00 38 00 78 00 2e 00 6c 00 6e 00 6b 00 00 00 } //01 00 
		$a_01_6 = {42 00 49 00 54 00 53 00 00 00 00 00 4d 00 70 00 73 00 53 00 76 00 63 00 00 00 00 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 } //01 00 
		$a_01_7 = {44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 00 00 00 00 4d 00 70 00 43 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 } //01 00 
		$a_01_8 = {57 44 53 74 61 74 75 73 00 00 00 00 57 44 45 6e 61 62 6c 65 00 } //00 00 
		$a_01_9 = {00 7e } //15 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Neurevt_gen_A_2{
	meta:
		description = "Trojan:Win32/Neurevt.gen!A!!Neurevt,SIGNATURE_TYPE_ARHSTR_EXT,33 00 33 00 09 00 00 32 00 "
		
	strings :
		$a_00_0 = {6e 65 75 72 65 76 74 00 } //32 00 
		$a_00_1 = {57 69 6e 37 7a 69 70 00 00 00 00 55 75 69 64 00 } //32 00 
		$a_00_2 = {69 00 6e 00 73 00 00 00 64 00 62 00 67 00 00 00 72 00 6f 00 6e 00 00 00 } //32 00 
		$a_00_3 = {42 00 65 00 74 00 61 00 62 00 6f 00 74 00 20 00 28 00 63 00 29 00 20 00 32 00 30 00 31 00 32 00 2d 00 32 00 30 00 31 00 34 00 2c 00 20 00 63 00 6f 00 64 00 65 00 64 00 20 00 62 00 79 00 20 00 55 00 73 00 65 00 72 00 62 00 61 00 73 00 65 00 } //01 00 
		$a_00_4 = {69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 00 00 00 00 73 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 00 00 00 73 00 6b 00 79 00 70 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_5 = {2e 00 69 00 6e 00 69 00 00 00 00 00 2e 00 73 00 79 00 73 00 00 00 00 00 25 00 73 00 5c 00 25 00 30 00 38 00 78 00 2e 00 6c 00 6e 00 6b 00 00 00 } //01 00 
		$a_00_6 = {42 00 49 00 54 00 53 00 00 00 00 00 4d 00 70 00 73 00 53 00 76 00 63 00 00 00 00 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 } //01 00 
		$a_00_7 = {44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 00 00 00 00 4d 00 70 00 43 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 } //01 00 
		$a_00_8 = {57 44 53 74 61 74 75 73 00 00 00 00 57 44 45 6e 61 62 6c 65 00 } //0a 00 
	condition:
		any of ($a_*)
 
}