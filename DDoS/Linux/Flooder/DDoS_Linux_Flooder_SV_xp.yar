
rule DDoS_Linux_Flooder_SV_xp{
	meta:
		description = "DDoS:Linux/Flooder.SV!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {55 73 61 67 65 3a 20 25 73 20 3c 48 6f 73 74 3e } //02 00 
		$a_01_1 = {53 65 74 74 69 6e 67 20 75 70 20 73 6f 63 6b 65 74 73 2e 2e 2e } //02 00 
		$a_01_2 = {53 74 61 72 74 20 66 6c 6f 6f 64 69 6e 67 2e 2e 2e } //02 00 
		$a_01_3 = {66 6c 6f 6f 64 70 6f 72 74 } //00 00 
	condition:
		any of ($a_*)
 
}