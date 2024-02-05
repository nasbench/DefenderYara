
rule Backdoor_Win32_Farfli_BI{
	meta:
		description = "Backdoor:Win32/Farfli.BI,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 46 57 2e 46 57 } //01 00 
		$a_03_1 = {53 65 74 46 69 6c 65 50 6f 69 6e 74 65 72 90 02 05 25 73 25 73 25 73 90 02 05 25 73 25 73 2a 2e 2a 90 00 } //01 00 
		$a_01_2 = {6d 6f 7a 69 00 00 00 00 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 29 } //01 00 
		$a_03_3 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 90 02 08 25 31 90 02 05 22 25 31 90 01 01 25 73 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 90 00 } //00 00 
		$a_00_4 = {7e 15 } //00 00 
	condition:
		any of ($a_*)
 
}