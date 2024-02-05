
rule HackTool_Win32_DumpLsass_E{
	meta:
		description = "HackTool:Win32/DumpLsass.E,SIGNATURE_TYPE_CMDHSTR_EXT,0f 00 0f 00 05 00 00 ffffffec ffffffff "
		
	strings :
		$a_00_0 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 41 00 7a 00 75 00 72 00 65 00 57 00 61 00 74 00 73 00 6f 00 6e 00 5c 00 30 00 5c 00 70 00 72 00 6f 00 63 00 64 00 75 00 6d 00 70 00 } //ec ff 
		$a_02_1 = {2d 00 6a 00 20 00 90 02 04 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 57 00 45 00 52 00 5c 00 52 00 65 00 70 00 6f 00 72 00 74 00 51 00 75 00 65 00 75 00 65 00 90 00 } //0a 00 
		$a_00_2 = {5c 00 70 00 72 00 6f 00 63 00 64 00 75 00 6d 00 70 00 } //05 00 
		$a_00_3 = {20 00 6c 00 73 00 61 00 73 00 73 00 20 00 } //05 00 
		$a_00_4 = {20 00 6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}