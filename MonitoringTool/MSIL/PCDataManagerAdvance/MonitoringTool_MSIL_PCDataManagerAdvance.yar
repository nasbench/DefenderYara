
rule MonitoringTool_MSIL_PCDataManagerAdvance{
	meta:
		description = "MonitoringTool:MSIL/PCDataManagerAdvance,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 43 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 20 00 2d 00 20 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 20 00 68 00 61 00 73 00 20 00 66 00 61 00 63 00 69 00 6c 00 69 00 74 00 69 00 65 00 73 00 20 00 74 00 6f 00 20 00 68 00 69 00 64 00 65 00 20 00 74 00 68 00 65 00 73 00 65 00 20 00 73 00 68 00 6f 00 72 00 74 00 63 00 75 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 74 00 6f 00 20 00 61 00 63 00 63 00 65 00 73 00 73 00 20 00 74 00 68 00 65 00 20 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 75 00 73 00 69 00 6e 00 67 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 6d 00 65 00 74 00 68 00 6f 00 64 00 73 00 } //01 00 
		$a_01_1 = {53 00 70 00 65 00 63 00 69 00 66 00 79 00 20 00 74 00 68 00 65 00 20 00 65 00 6d 00 61 00 69 00 6c 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 20 00 68 00 65 00 72 00 65 00 20 00 74 00 68 00 61 00 74 00 20 00 79 00 6f 00 75 00 20 00 77 00 61 00 6e 00 74 00 20 00 50 00 43 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 20 00 2d 00 20 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 20 00 74 00 6f 00 20 00 75 00 73 00 65 00 20 00 66 00 6f 00 72 00 20 00 73 00 65 00 6e 00 64 00 69 00 6e 00 67 00 20 00 74 00 68 00 65 00 20 00 61 00 63 00 74 00 69 00 76 00 69 00 74 00 79 00 20 00 6c 00 6f 00 67 00 73 00 20 00 61 00 73 00 20 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 } //01 00 
		$a_01_2 = {44 00 52 00 50 00 55 00 20 00 50 00 43 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 20 00 2d 00 20 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 20 00 52 00 65 00 70 00 6f 00 72 00 74 00 } //00 00 
		$a_00_3 = {7e 15 } //00 00 
	condition:
		any of ($a_*)
 
}