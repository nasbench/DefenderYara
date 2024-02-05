
rule MonitoringTool_Win32_Powerspy_C{
	meta:
		description = "MonitoringTool:Win32/Powerspy.C,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 70 00 6e 00 73 00 76 00 72 00 6d 00 00 00 0c 00 00 00 76 00 73 00 73 00 76 00 63 00 6d 00 00 00 } //01 00 
		$a_01_1 = {65 00 6d 00 61 00 74 00 72 00 69 00 78 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 75 00 79 00 2e 00 68 00 74 00 6d 00 6c 00 00 00 } //01 00 
		$a_01_2 = {5c 00 6d 00 73 00 6e 00 61 00 70 00 70 00 69 00 6e 00 69 00 2e 00 69 00 6e 00 69 00 00 00 00 00 16 00 00 00 5c 00 6d 00 73 00 6e 00 75 00 73 00 72 00 2e 00 69 00 6e 00 69 00 00 00 1e 00 00 00 5c 00 65 00 6d 00 78 00 66 00 69 00 6c 00 65 00 30 00 30 00 31 00 2e 00 64 00 61 00 74 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule MonitoringTool_Win32_Powerspy_C_2{
	meta:
		description = "MonitoringTool:Win32/Powerspy.C,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 70 00 6e 00 73 00 76 00 72 00 6d 00 00 00 0c 00 00 00 76 00 73 00 73 00 76 00 63 00 6d 00 00 00 } //01 00 
		$a_01_1 = {59 00 61 00 68 00 6f 00 6f 00 21 00 20 00 4d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 20 00 43 00 68 00 61 00 74 00 20 00 43 00 6f 00 6e 00 76 00 65 00 72 00 73 00 61 00 69 00 6f 00 6e 00 00 00 } //01 00 
		$a_01_2 = {46 00 3a 00 5c 00 44 00 65 00 76 00 65 00 6c 00 6f 00 70 00 6d 00 65 00 6e 00 74 00 5c 00 4d 00 53 00 4e 00 20 00 53 00 70 00 79 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 20 00 54 00 72 00 69 00 61 00 6c 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 73 00 5c 00 43 00 50 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}