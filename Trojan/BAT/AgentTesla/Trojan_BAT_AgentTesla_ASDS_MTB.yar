
rule Trojan_BAT_AgentTesla_ASDS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASDS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 5a 00 38 00 38 00 5a 00 41 00 44 00 5a 00 43 00 35 00 5a 00 30 00 42 00 5a 00 39 00 41 00 5a 00 43 00 44 00 5a 00 41 00 34 00 5a 00 34 00 37 00 5a 00 34 00 38 00 5a 00 41 00 41 00 5a 00 44 00 32 00 5a 00 39 00 45 00 5a 00 43 00 32 00 } //01 00 
		$a_01_1 = {36 00 5a 00 38 00 30 00 5a 00 39 00 31 00 5a 00 34 00 41 00 5a 00 31 00 43 00 5a 00 36 00 31 00 5a 00 30 00 31 00 5a 00 41 00 36 00 5a 00 30 00 41 00 5a 00 30 00 37 00 5a 00 34 00 46 00 5a 00 45 00 30 00 5a 00 35 00 33 00 5a 00 35 00 38 00 5a 00 36 00 44 00 5a 00 39 00 39 00 5a 00 36 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}