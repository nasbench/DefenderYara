
rule Trojan_BAT_Taskun_ARAQ_MTB{
	meta:
		description = "Trojan:BAT/Taskun.ARAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 09 07 8e 69 5d 07 09 07 8e 69 5d 91 08 09 08 6f 90 01 03 0a 5d 6f 90 01 03 0a 61 28 90 01 03 0a 07 09 17 58 07 8e 69 5d 91 28 90 01 03 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d 28 90 01 03 0a d2 9c 09 15 58 0d 09 16 fe 04 16 fe 01 13 07 11 07 2d ac 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}