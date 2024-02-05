
rule Trojan_BAT_SnakeKeylogger_C_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {00 00 01 25 16 1f 90 01 01 9d 6f 90 01 01 01 00 0a 90 09 06 00 00 00 06 17 8d 90 00 } //02 00 
		$a_03_1 = {08 11 07 72 90 01 03 70 28 90 01 02 00 0a 72 90 01 03 70 20 00 01 00 00 14 14 18 8d 90 01 01 00 00 01 25 16 07 11 07 9a a2 25 17 1f 10 8c 90 01 01 00 00 01 a2 6f 90 01 02 00 0a a5 90 01 01 00 00 01 9c 11 07 17 58 90 00 } //02 00 
		$a_03_2 = {00 00 01 25 16 1f 90 01 01 9d 6f 90 01 01 01 00 0a 90 09 06 00 00 00 04 17 8d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}