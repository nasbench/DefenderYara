
rule VirTool_Win64_DownRefDllz_A_MTB{
	meta:
		description = "VirTool:Win64/DownRefDllz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {c7 85 a4 02 00 00 ff 00 00 00 48 8d 90 01 05 48 89 44 24 30 48 8d 90 01 05 48 89 44 24 28 48 c7 44 24 20 00 00 00 00 41 b9 02 00 00 00 4c 8d 90 01 05 48 8d 90 01 05 48 c7 c1 02 00 00 80 ff 90 00 } //01 00 
		$a_02_1 = {44 8b 45 24 48 8b 55 68 48 8d 90 01 05 e8 90 01 04 48 8d 90 01 05 48 8b f9 48 8b f0 b9 10 00 00 00 f3 a4 90 00 } //01 00 
		$a_02_2 = {c7 44 24 20 00 00 00 00 45 33 c9 45 33 c0 33 d2 48 8d 90 01 05 ff 15 90 01 04 48 89 85 f8 00 00 00 48 83 bd f8 00 00 00 00 74 28 90 00 } //01 00 
		$a_02_3 = {c7 44 24 30 00 00 00 00 48 c7 44 24 28 00 00 00 00 48 c7 44 24 20 00 00 00 00 45 33 c9 4c 8b 85 a8 04 00 00 48 8d 90 01 05 48 8b 8d 18 01 00 00 ff 15 90 01 04 48 89 85 38 01 00 00 eb 14 90 00 } //01 00 
		$a_02_4 = {44 8b 45 74 48 8b 95 b8 00 00 00 48 8b 8d 38 01 00 00 ff 15 90 01 04 85 c0 75 19 90 00 } //01 00 
		$a_00_5 = {48 63 85 04 06 00 00 48 8b 8d 78 05 00 00 0f b7 04 41 48 8b 8d 58 05 00 00 8b 04 81 48 8b 8d 98 03 00 00 48 03 c8 48 8b c1 48 89 85 b8 05 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}