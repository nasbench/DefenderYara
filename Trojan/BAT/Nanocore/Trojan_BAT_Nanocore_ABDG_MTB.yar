
rule Trojan_BAT_Nanocore_ABDG_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABDG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {02 07 02 8e 69 5d 91 06 07 06 8e 69 5d 91 61 28 90 01 03 0a 02 07 17 58 02 8e 69 5d 91 28 90 01 03 0a 59 20 90 01 03 00 58 20 90 01 03 00 5d d2 9c 00 07 15 58 0b 90 00 } //01 00 
		$a_01_1 = {50 00 35 00 33 00 59 00 53 00 43 00 59 00 52 00 42 00 56 00 48 00 48 00 55 00 50 00 38 00 47 00 34 00 37 00 42 00 37 00 35 00 59 00 } //00 00 
	condition:
		any of ($a_*)
 
}