
rule Trojan_BAT_CrimsonRat_AFFT_MTB{
	meta:
		description = "Trojan:BAT/CrimsonRat.AFFT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 03 04 05 28 90 01 03 06 0b 07 2c 04 17 0c 2b 14 00 06 17 58 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}