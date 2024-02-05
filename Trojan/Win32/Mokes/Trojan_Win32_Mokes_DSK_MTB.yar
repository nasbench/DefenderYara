
rule Trojan_Win32_Mokes_DSK_MTB{
	meta:
		description = "Trojan:Win32/Mokes.DSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {8b cb c1 e9 05 03 4c 24 90 01 01 c7 05 90 01 04 b4 1a 3a df 89 54 24 90 01 01 89 35 90 01 04 89 35 90 01 04 8b 44 24 90 01 01 31 44 24 90 01 01 81 3d 90 01 04 72 07 00 00 75 90 00 } //02 00 
		$a_02_1 = {8b c7 c1 e8 05 03 44 24 90 01 01 03 d7 33 ca 81 3d 90 01 04 72 07 00 00 c7 05 90 01 04 b4 1a 3a df 89 35 90 01 04 89 35 90 01 04 89 4c 24 90 01 01 75 90 00 } //02 00 
		$a_02_2 = {8b f3 03 d3 c1 ee 05 03 74 24 90 01 01 c7 05 90 01 04 b4 1a 3a df 89 4c 24 90 01 01 89 54 24 90 01 01 89 3d 90 01 04 89 3d 90 01 04 8b 44 24 90 01 01 31 44 24 90 01 01 81 3d 90 01 04 72 07 00 00 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}