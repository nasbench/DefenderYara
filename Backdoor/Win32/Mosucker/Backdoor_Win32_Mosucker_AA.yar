
rule Backdoor_Win32_Mosucker_AA{
	meta:
		description = "Backdoor:Win32/Mosucker.AA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 00 63 00 34 00 39 00 66 00 38 00 30 00 30 00 2d 00 63 00 32 00 64 00 64 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 61 00 64 00 36 00 2d 00 30 00 30 00 38 00 30 00 63 00 37 00 65 00 37 00 62 00 37 00 38 00 64 00 } //01 00 
		$a_01_1 = {53 00 65 00 72 00 76 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_00_2 = {5c 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_3 = {47 00 65 00 74 00 44 00 61 00 74 00 61 00 00 00 02 00 00 00 2e 00 00 00 52 00 65 00 6d 00 6f 00 74 00 65 00 48 00 6f 00 73 00 74 00 00 00 00 00 52 00 65 00 6d 00 6f 00 74 00 65 00 50 00 6f 00 72 00 74 00 00 00 00 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}