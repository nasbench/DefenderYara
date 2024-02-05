
rule Worm_Win32_Mariofev_B{
	meta:
		description = "Worm:Win32/Mariofev.B,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {00 64 6c 6c 63 61 63 68 65 5c 75 73 65 72 33 32 2e 64 6c 6c 00 } //0a 00 
		$a_00_1 = {00 20 70 20 69 20 6e 20 69 20 74 20 5f 20 64 20 6c 20 6c 20 73 } //0a 00 
		$a_00_2 = {46 57 20 50 41 53 53 45 44 00 00 00 68 74 74 70 3a 2f 2f 6d 61 69 6c 2e 72 75 } //01 00 
		$a_00_3 = {2e 64 6c 6c 00 47 65 74 4d 6f 64 75 6c 65 49 64 00 6b 65 5f 47 65 74 46 69 72 73 74 4f 62 6a } //01 00 
		$a_02_4 = {33 32 00 6e 76 90 02 04 33 32 2e 64 6c 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}