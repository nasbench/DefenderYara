
rule Worm_Win32_Ainslot_N{
	meta:
		description = "Worm:Win32/Ainslot.N,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 44 50 46 6c 6f 6f 64 } //01 00 
		$a_01_1 = {55 00 53 00 42 00 20 00 73 00 70 00 72 00 65 00 61 00 64 00 65 00 72 00 20 00 72 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 } //01 00 
		$a_01_2 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00 
		$a_01_3 = {56 00 61 00 72 00 69 00 61 00 6e 00 74 00 20 00 6f 00 66 00 20 00 50 00 6f 00 69 00 73 00 6f 00 6e 00 49 00 76 00 79 00 } //01 00 
		$a_01_4 = {56 00 61 00 72 00 69 00 61 00 6e 00 74 00 20 00 6f 00 66 00 20 00 53 00 70 00 79 00 4e 00 65 00 74 00 20 00 52 00 41 00 54 00 } //01 00 
		$a_01_5 = {56 00 61 00 72 00 69 00 61 00 6e 00 74 00 20 00 6f 00 66 00 20 00 5a 00 65 00 75 00 73 00 20 00 42 00 4f 00 54 00 } //00 00 
	condition:
		any of ($a_*)
 
}