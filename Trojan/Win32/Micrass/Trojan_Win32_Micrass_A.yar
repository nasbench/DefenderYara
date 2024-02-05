
rule Trojan_Win32_Micrass_A{
	meta:
		description = "Trojan:Win32/Micrass.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {80 b4 01 00 f0 00 00 ec 41 81 f9 00 14 00 00 72 ef } //01 00 
		$a_01_1 = {0f 8c 84 00 00 00 8b 45 08 c1 e8 03 89 45 ec 6b c0 f8 89 4d f4 29 55 f4 01 45 08 57 } //01 00 
		$a_01_2 = {8b c7 8d 48 02 66 8b 10 83 c0 02 66 3b d3 75 f5 2b c1 d1 f8 48 8b c8 3b cb 76 0f 66 } //01 00 
		$a_01_3 = {81 bd cc 3f ff ff 39 12 54 68 75 13 } //01 00 
		$a_01_4 = {75 55 81 bd cc 3f ff ff 98 36 42 87 75 13 } //01 00 
		$a_01_5 = {49 00 50 00 3a 00 25 00 73 00 20 00 50 00 6f 00 72 00 74 00 3a 00 25 00 64 00 } //01 00 
		$a_01_6 = {4c 00 53 00 4d 00 41 00 53 00 53 00 00 00 } //01 00 
		$a_01_7 = {25 00 2e 00 34 00 58 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_8 = {6c 00 6f 00 61 00 64 00 2e 00 64 00 61 00 74 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}