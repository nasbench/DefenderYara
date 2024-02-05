
rule Trojan_BAT_Stimilini_J{
	meta:
		description = "Trojan:BAT/Stimilini.J,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_80_0 = {00 73 74 65 61 6d 77 65 62 68 65 6c 70 65 72 } //  01 00 
		$a_00_1 = {00 67 65 74 5f 4d 61 72 6b 65 74 5f 4e 61 6d 65 00 } //01 00 
		$a_00_2 = {00 67 65 74 5f 52 67 49 6e 76 65 6e 74 6f 72 79 00 } //01 00 
		$a_00_3 = {00 67 65 74 5f 54 72 61 64 61 62 6c 65 00 } //01 00 
		$a_00_4 = {00 52 65 73 6f 6c 76 65 53 69 67 6e 61 74 75 72 65 00 } //01 00 
		$a_00_5 = {00 55 6e 61 75 74 68 6f 72 69 7a 65 64 41 63 63 65 73 73 45 78 63 65 70 74 69 6f 6e 00 } //00 00 
		$a_00_6 = {80 10 00 00 bb } //ff 5a 
	condition:
		any of ($a_*)
 
}