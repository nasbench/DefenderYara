
rule Trojan_BAT_QuasarRat_NE_MTB{
	meta:
		description = "Trojan:BAT/QuasarRat.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {7e 00 4b 00 69 00 72 00 6b 00 75 00 6b 00 31 00 23 00 7e 00 } //01 00 
		$a_01_1 = {63 00 32 00 4e 00 76 00 63 00 6d 00 78 00 70 00 59 00 67 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 30 00 75 00 51 00 32 00 39 00 73 00 62 00 47 00 56 00 6a 00 64 00 47 00 6c 00 76 00 62 00 6e 00 4d 00 75 00 52 00 32 00 56 00 } //01 00 
		$a_01_2 = {6a 00 41 00 47 00 67 00 41 00 5a 00 51 00 42 00 6a 00 41 00 47 00 73 00 41 00 5a 00 51 00 42 00 6b 00 41 00 45 00 77 00 41 00 61 00 51 00 42 00 7a 00 41 00 48 00 51 00 41 00 51 00 67 00 42 00 76 00 41 00 48 00 67 00 41 00 4d 00 67 00 41 00 41 00 44 00 57 00 } //01 00 
		$a_01_3 = {51 00 41 00 59 00 51 00 42 00 79 00 41 00 45 00 77 00 41 00 61 00 51 00 42 00 69 00 41 00 46 00 67 00 41 00 4c 00 67 00 42 00 6b 00 41 00 47 00 77 00 41 00 62 00 41 00 41 00 41 00 } //01 00 
		$a_01_4 = {33 00 4e 00 70 00 62 00 6d 00 63 00 41 00 55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4c 00 6b 00 52 00 79 00 59 00 } //00 00 
	condition:
		any of ($a_*)
 
}