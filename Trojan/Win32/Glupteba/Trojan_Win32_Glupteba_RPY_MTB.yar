
rule Trojan_Win32_Glupteba_RPY_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {4f 57 8b 34 24 83 c4 04 31 0b 43 81 ee 90 01 04 01 f6 39 d3 75 df 56 5f 47 c3 8d 0c 01 81 c7 01 00 00 00 8b 09 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Glupteba_RPY_MTB_2{
	meta:
		description = "Trojan:Win32/Glupteba.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 c7 33 c1 2b f0 89 44 24 10 8b c6 c1 e0 04 } //01 00 
		$a_01_1 = {89 44 24 10 8b 44 24 24 01 44 24 10 03 de 31 5c 24 0c 8b 44 24 10 31 44 24 0c 8b 44 24 0c 29 44 24 14 } //00 00 
	condition:
		any of ($a_*)
 
}