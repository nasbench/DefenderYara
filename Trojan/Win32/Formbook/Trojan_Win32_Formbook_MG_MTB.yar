
rule Trojan_Win32_Formbook_MG_MTB{
	meta:
		description = "Trojan:Win32/Formbook.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {48 6b 63 6f 65 64 63 6c 78 66 6b 63 6b 64 6c } //02 00 
		$a_03_1 = {83 c1 01 89 90 02 06 8b 90 02 06 3b 90 02 06 0f 83 90 02 05 8b 45 90 01 01 03 90 02 06 8a 08 88 90 02 06 0f b6 90 02 40 f7 d2 88 90 02 06 0f b6 90 00 } //02 00 
		$a_01_2 = {53 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //02 00 
		$a_01_3 = {53 6c 65 65 70 } //02 00 
		$a_01_4 = {47 65 74 54 65 6d 70 50 61 74 68 41 } //00 00 
	condition:
		any of ($a_*)
 
}