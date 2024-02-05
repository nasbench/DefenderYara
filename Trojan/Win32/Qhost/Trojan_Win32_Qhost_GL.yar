
rule Trojan_Win32_Qhost_GL{
	meta:
		description = "Trojan:Win32/Qhost.GL,SIGNATURE_TYPE_PEHSTR,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6c 61 79 5f 76 69 64 65 6f 73 2d 69 44 3d } //01 00 
		$a_01_1 = {62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //01 00 
		$a_01_2 = {62 00 61 00 6e 00 63 00 6f 00 72 00 65 00 61 00 6c 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //01 00 
		$a_01_3 = {68 00 73 00 62 00 63 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 } //01 00 
		$a_01_4 = {70 00 61 00 79 00 70 00 61 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_5 = {61 00 6d 00 65 00 72 00 69 00 63 00 61 00 6e 00 65 00 78 00 70 00 72 00 65 00 73 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_6 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //01 00 
		$a_01_7 = {36 00 39 00 2e 00 31 00 36 00 32 00 2e 00 36 00 34 00 2e 00 31 00 34 00 37 00 } //01 00 
		$a_01_8 = {31 00 39 00 38 00 2e 00 31 00 30 00 36 00 2e 00 34 00 39 00 2e 00 37 00 36 00 } //00 00 
	condition:
		any of ($a_*)
 
}