
rule TrojanClicker_Win32_Frosparf_A{
	meta:
		description = "TrojanClicker:Win32/Frosparf.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 08 00 "
		
	strings :
		$a_01_0 = {66 00 61 00 70 00 63 00 66 00 30 00 30 00 31 00 2e 00 73 00 79 00 74 00 65 00 73 00 2e 00 6e 00 65 00 74 00 } //04 00 
		$a_01_1 = {65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 76 00 69 00 6e 00 61 00 63 00 66 00 2e 00 63 00 6f 00 6d 00 2f 00 66 00 61 00 70 00 63 00 66 00 2e 00 68 00 74 00 6d 00 6c 00 } //04 00 
		$a_01_2 = {46 00 41 00 50 00 43 00 46 00 20 00 42 00 4f 00 54 00 20 00 32 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //04 00 
		$a_01_3 = {46 00 41 00 50 00 43 00 46 00 20 00 4d 00 4f 00 44 00 5a 00 20 00 32 00 2e 00 31 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_4 = {2b 00 20 00 43 00 52 00 4f 00 53 00 53 00 46 00 49 00 52 00 45 00 20 00 54 00 4f 00 4f 00 4c 00 20 00 2b 00 } //01 00 
		$a_01_5 = {32 00 32 00 35 00 2c 00 32 00 32 00 34 00 2c 00 37 00 38 00 34 00 33 00 2c 00 32 00 32 00 37 00 2c 00 37 00 38 00 34 00 31 00 2c 00 32 00 35 00 39 00 2c 00 37 00 38 00 35 00 35 00 2c 00 37 00 38 00 35 00 37 00 } //01 00 
		$a_01_6 = {5a 4f 4d 42 4f 5a 20 56 20 32 2e 31 20 62 79 20 4d 45 4e 44 } //01 00 
		$a_01_7 = {46 41 50 43 46 20 54 4f 4f 4c 5c } //00 00 
		$a_00_8 = {80 10 00 00 4e } //46 5b 
	condition:
		any of ($a_*)
 
}