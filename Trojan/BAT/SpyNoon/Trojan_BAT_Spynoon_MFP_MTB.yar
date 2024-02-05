
rule Trojan_BAT_Spynoon_MFP_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 03 00 00 05 00 "
		
	strings :
		$a_02_0 = {19 8d 10 00 00 01 0a 06 16 28 90 01 03 06 a2 06 17 28 90 01 03 06 a2 06 18 72 90 01 03 70 a2 d0 90 01 03 02 28 90 01 03 0a 73 90 01 03 0a 0b 07 72 90 01 03 70 6f 90 01 03 0a 74 90 01 03 01 0c 08 72 90 01 03 70 28 90 01 03 06 0d 09 13 90 01 01 16 13 90 01 01 11 90 01 01 16 fe 90 01 01 13 90 01 01 11 90 00 } //05 00 
		$a_02_1 = {00 72 b7 0f 00 70 0a 02 6f 90 01 03 0a 0b 17 0c 2b 2c 00 02 08 28 90 01 03 0a 03 08 1e 5d 17 d6 28 90 01 03 0a da 0d 06 09 d1 13 04 12 04 28 90 01 03 0a 28 90 01 03 0a 0a 00 08 17 d6 0c 08 07 fe 90 01 01 16 fe 90 01 01 13 90 01 01 11 90 01 01 2d 90 00 } //05 00 
		$a_02_2 = {17 13 25 11 90 01 01 14 72 90 01 03 70 17 8d 90 01 03 01 25 16 72 90 01 03 70 a2 14 14 28 90 01 03 0a 13 26 11 26 14 72 90 01 03 70 17 8d 90 01 03 01 25 16 72 90 01 03 70 a2 14 14 28 90 01 03 0a 13 90 01 01 11 90 01 01 14 72 90 01 03 70 18 8d 90 01 03 01 25 16 16 8c 90 01 03 01 a2 25 17 06 a2 14 14 28 90 01 03 0a 13 90 01 01 72 90 01 03 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}