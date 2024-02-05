
rule VirTool_Win64_Mortar_A{
	meta:
		description = "VirTool:Win64/Mortar.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 95 8c fe ff ff 48 03 95 e0 fd ff ff 44 8b 8d 90 01 01 fe ff ff 48 8b 8d 68 fe ff ff e8 90 01 04 48 8d 90 01 05 48 89 44 24 20 48 8b 86 88 00 00 00 48 8d 90 01 02 4c 8d 90 01 05 48 8b 8d 68 fe ff ff 41 b9 08 00 00 00 e8 90 01 04 45 39 ec 90 00 } //01 00 
		$a_03_1 = {c7 44 24 20 40 00 00 00 44 8b 85 f8 fe ff ff 48 8b 95 d8 fe ff ff 48 8b 8d 68 fe ff ff 41 b9 00 30 00 00 e8 90 01 04 48 89 85 e0 fd ff ff 90 00 } //01 00 
		$a_03_2 = {8b 85 d0 fe ff ff 48 03 85 e0 fd ff ff 48 89 90 01 01 80 00 00 00 90 02 03 48 8b 8d 70 fe ff ff e8 90 01 04 48 8b 8d 70 fe ff ff e8 90 01 04 b3 01 90 00 } //01 00 
		$a_03_3 = {48 89 c6 c7 46 30 90 01 04 48 89 f2 48 8b 8d 70 fe ff ff e8 90 01 04 85 c0 90 00 } //01 00 
		$a_03_4 = {48 89 44 24 20 48 8b 86 88 00 00 00 48 8d 90 01 05 4c 8d 90 01 05 48 8b 8d 68 fe ff ff 41 b9 02 00 00 00 e8 90 00 } //01 00 
		$a_03_5 = {48 8b 85 d8 fe ff ff 48 3b 85 d0 fd ff ff 0f 90 01 05 48 8b 95 d8 fe ff ff 48 8b 8d 68 fe ff ff e8 90 01 04 85 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}