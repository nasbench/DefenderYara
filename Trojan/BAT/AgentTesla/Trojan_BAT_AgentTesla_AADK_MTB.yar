
rule Trojan_BAT_AgentTesla_AADK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AADK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {72 36 05 00 70 72 7e 10 00 70 28 90 01 01 00 00 0a 7d 90 01 01 00 00 04 06 06 7b 90 01 01 00 00 04 72 62 b8 01 70 72 36 05 00 70 6f 90 01 01 00 00 0a 7d 90 01 01 00 00 04 16 06 7b 90 01 01 00 00 04 6f 90 01 01 01 00 0a 28 90 01 01 01 00 0a 7e 90 01 01 00 00 04 25 2d 17 26 7e 90 01 01 00 00 04 fe 90 01 02 01 00 06 73 90 01 01 01 00 0a 25 80 90 01 01 00 00 04 28 90 01 01 00 00 2b 06 fe 90 01 02 01 00 06 73 90 01 01 01 00 0a 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 0c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}