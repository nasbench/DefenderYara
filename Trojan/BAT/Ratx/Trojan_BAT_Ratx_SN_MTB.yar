
rule Trojan_BAT_Ratx_SN_MTB{
	meta:
		description = "Trojan:BAT/Ratx.SN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 06 08 06 18 5a 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a d2 9c 06 17 58 0a 06 07 8e 69 fe 04 13 05 11 05 2d db 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}