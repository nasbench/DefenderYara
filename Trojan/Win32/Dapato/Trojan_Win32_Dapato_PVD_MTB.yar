
rule Trojan_Win32_Dapato_PVD_MTB{
	meta:
		description = "Trojan:Win32/Dapato.PVD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {69 c9 fd 43 03 00 89 0d 90 01 04 81 05 90 01 04 c3 9e 26 00 81 3d 90 01 04 a5 02 00 00 8b 35 90 01 04 75 90 00 } //01 00 
		$a_02_1 = {30 04 1e 46 3b f7 7c 90 09 05 00 e8 90 00 } //02 00 
		$a_02_2 = {8b 58 04 33 da 89 58 04 a1 90 01 04 8b 0d 90 01 04 8b 78 08 33 f9 89 78 08 90 00 } //02 00 
		$a_00_3 = {8a 03 8a 54 14 18 32 c2 88 03 8b 44 24 10 43 48 89 44 24 10 75 } //00 00 
	condition:
		any of ($a_*)
 
}