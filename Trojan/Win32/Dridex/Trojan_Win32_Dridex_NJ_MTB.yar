
rule Trojan_Win32_Dridex_NJ_MTB{
	meta:
		description = "Trojan:Win32/Dridex.NJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b d2 33 0d 90 02 04 c7 05 90 02 08 8b d1 01 15 90 02 04 a1 90 02 04 8b 0d 90 02 04 89 08 5d c3 90 00 } //01 00 
		$a_02_1 = {6a 00 ff 15 90 02 04 8b 90 02 04 8d 90 02 06 8b 90 02 04 03 90 02 04 8b 90 02 04 89 90 02 04 8b 90 02 04 8b 90 02 04 81 90 02 05 8b 90 02 04 89 90 02 05 a1 90 02 04 8b 90 02 05 8d 90 02 03 89 15 90 02 04 a1 90 02 04 a3 90 02 04 8b 90 02 05 89 90 02 05 8b 90 02 05 83 90 02 04 89 90 02 05 eb 00 e8 90 02 04 8b e5 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}