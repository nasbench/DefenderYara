
rule MonitoringTool_AndroidOS_SpyPhone_B_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/SpyPhone.B!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 69 76 61 72 74 65 63 68 2f 73 70 79 70 68 6f 6e 65 2f 53 70 79 50 68 6f 6e 65 41 63 74 69 76 69 74 79 } //01 00 
		$a_00_1 = {48 69 64 65 49 63 6f 6e 73 } //01 00 
		$a_00_2 = {67 65 74 53 70 79 50 68 6f 6e 65 41 70 70 } //01 00 
		$a_00_3 = {6f 6e 55 73 65 72 4c 65 61 76 65 48 69 6e 74 } //01 00 
		$a_00_4 = {5f 63 48 69 64 65 4d 65 64 69 61 } //01 00 
		$a_00_5 = {53 70 79 50 68 6f 6e 65 41 70 70 6c 69 63 61 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}