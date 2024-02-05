
rule Worm_Win32_Autorun_UN{
	meta:
		description = "Worm:Win32/Autorun.UN,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 22 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00 
		$a_00_2 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00 
		$a_00_3 = {5c 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 52 00 5c 00 53 00 65 00 74 00 69 00 6e 00 67 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_00_4 = {5c 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 72 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 5c 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 20 00 42 00 69 00 6e 00 5c 00 52 00 65 00 67 00 53 00 65 00 74 00 69 00 6e 00 67 00 } //01 00 
		$a_02_5 = {72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 90 02 16 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 90 00 } //01 00 
		$a_00_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //01 00 
		$a_00_7 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}