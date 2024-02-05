
rule VirTool_Win32_CeeInject_CT{
	meta:
		description = "VirTool:Win32/CeeInject.CT,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {66 81 3b 4d 5a 0f 85 90 01 02 00 00 8b 73 3c 8b 04 1e 03 f3 3d 50 45 00 00 0f 85 90 00 } //01 00 
		$a_02_1 = {8d a4 24 00 00 00 00 8a 96 90 01 02 40 00 8b 0d f8 9a 40 00 30 14 01 8b 35 90 01 02 40 00 8a 86 90 01 02 40 00 46 84 c0 90 00 } //01 00 
		$a_03_2 = {8b 54 24 08 8b 4c 24 10 6a 40 68 00 30 00 00 52 8b 54 24 20 51 52 a3 90 01 02 40 00 ff d0 8b 46 54 8b 4e 34 8b 15 90 01 02 40 00 6a 00 50 53 51 52 ff 54 24 20 33 ff 66 39 7e 06 76 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}