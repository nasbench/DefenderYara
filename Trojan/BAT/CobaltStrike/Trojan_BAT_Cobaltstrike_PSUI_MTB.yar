
rule Trojan_BAT_Cobaltstrike_PSUI_MTB{
	meta:
		description = "Trojan:BAT/Cobaltstrike.PSUI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {06 72 59 02 00 70 28 90 01 01 00 00 0a 0a 06 72 ab 02 00 70 28 90 01 01 00 00 0a 0a 06 72 ab 02 00 70 72 3f 02 00 70 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}