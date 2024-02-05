
rule Backdoor_Win32_RedLeaves_A_dha{
	meta:
		description = "Backdoor:Win32/RedLeaves.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 5f 73 65 72 69 61 6c } //01 00 
		$a_01_1 = {5f 5f 6d 73 67 69 64 } //01 00 
		$a_01_2 = {5f 5f 64 61 74 61 } //01 00 
		$a_01_3 = {4f 00 6e 00 6c 00 69 00 6e 00 65 00 54 00 69 00 6d 00 65 00 3d 00 } //01 00 
		$a_01_4 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 } //01 00 
		$a_01_5 = {63 6c 69 65 6e 74 70 61 74 68 3d } //01 00 
		$a_01_6 = {73 65 72 76 65 72 70 61 74 68 3d } //00 00 
		$a_00_7 = {5d 04 00 00 bb } //a8 03 
	condition:
		any of ($a_*)
 
}