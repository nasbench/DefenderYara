
rule Backdoor_Win32_Joanap_I_dha{
	meta:
		description = "Backdoor:Win32/Joanap.I!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {3a 4c 31 0d 0a 73 63 20 73 74 6f 70 20 25 73 0d 0a 73 63 20 64 65 6c 65 74 65 20 25 73 0d 0a 64 65 6c 20 22 25 73 22 0d 0a 64 65 6c 20 22 25 73 } //01 00 
		$a_00_1 = {00 5c 53 74 72 69 6e 67 46 69 6c 65 49 6e 66 6f 5c 25 30 38 78 5c 25 73 00 } //01 00 
		$a_00_2 = {00 25 73 5c 64 6c 6c 63 61 63 68 65 5c 25 73 2e 64 6c 6c 00 } //01 00 
		$a_00_3 = {00 25 73 5c 25 73 2e 64 6c 6c 00 } //01 00 
		$a_00_4 = {00 44 4c 4c 5f 53 70 69 64 65 72 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //01 00 
		$a_00_5 = {00 43 6f 6e 74 65 6e 74 20 6c 65 6e 67 74 68 3a 20 31 30 30 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}