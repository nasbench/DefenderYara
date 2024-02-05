
rule Trojan_Win32_Tocofob_A{
	meta:
		description = "Trojan:Win32/Tocofob.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 74 00 61 00 74 00 75 00 73 00 3a 00 20 00 5b 00 49 00 43 00 4d 00 50 00 20 00 2d 00 20 00 41 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 5d 00 } //01 00 
		$a_00_1 = {53 00 74 00 61 00 74 00 75 00 73 00 3a 00 20 00 5b 00 20 00 48 00 54 00 54 00 50 00 20 00 2d 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 5d 00 } //01 00 
		$a_00_2 = {53 00 74 00 61 00 74 00 75 00 73 00 3a 00 20 00 5b 00 20 00 55 00 44 00 50 00 20 00 2d 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 20 00 5d 00 } //01 00 
		$a_01_3 = {49 43 4d 50 20 44 44 6f 53 20 53 74 61 74 75 73 } //00 00 
	condition:
		any of ($a_*)
 
}