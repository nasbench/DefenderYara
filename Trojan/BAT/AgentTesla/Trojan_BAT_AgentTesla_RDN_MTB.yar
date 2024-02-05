
rule Trojan_BAT_AgentTesla_RDN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RDN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 37 37 30 36 36 39 30 2d 35 32 39 32 2d 34 61 39 61 2d 62 63 35 61 2d 34 39 33 31 63 37 34 32 31 33 38 30 } //01 00 
		$a_01_1 = {4e 48 47 47 46 75 49 } //01 00 
		$a_01_2 = {41 2e 63 66 63 62 61 35 34 31 61 33 63 65 65 33 64 38 65 31 32 32 38 30 61 31 31 30 65 38 32 63 64 64 61 } //01 00 
		$a_01_3 = {63 63 36 38 61 31 34 31 62 31 34 37 38 36 39 30 38 33 61 66 63 32 36 39 31 37 37 61 31 32 30 39 63 } //00 00 
	condition:
		any of ($a_*)
 
}