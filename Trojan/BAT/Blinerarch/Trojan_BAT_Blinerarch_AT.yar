
rule Trojan_BAT_Blinerarch_AT{
	meta:
		description = "Trojan:BAT/Blinerarch.AT,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 73 6d 73 5f 70 61 74 74 65 72 6e 00 } //01 00 
		$a_01_1 = {00 53 65 6e 64 53 4d 53 00 } //01 00 
		$a_01_2 = {35 00 35 00 31 00 32 00 32 00 } //01 00  55122
		$a_01_3 = {7a 00 61 00 5f 00 6e 00 75 00 6d 00 62 00 65 00 72 00 } //01 00  za_number
		$a_01_4 = {37 00 37 00 2e 00 32 00 32 00 31 00 2e 00 31 00 34 00 39 00 2e 00 32 00 31 00 39 00 } //00 00  77.221.149.219
	condition:
		any of ($a_*)
 
}