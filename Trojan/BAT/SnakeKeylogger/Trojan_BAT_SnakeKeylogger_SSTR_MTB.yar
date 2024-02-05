
rule Trojan_BAT_SnakeKeylogger_SSTR_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SSTR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_81_0 = {4d 4d 43 48 49 41 2e 65 78 65 } //01 00 
		$a_81_1 = {52 65 67 41 73 6d 2e 65 78 65 } //01 00 
		$a_81_2 = {47 65 74 53 74 72 69 6e 67 } //01 00 
		$a_81_3 = {41 73 73 65 6d 62 6c 79 } //01 00 
		$a_81_4 = {6b 65 72 6e 65 6c 33 32 2e 64 6c 6c } //01 00 
		$a_81_5 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_81_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00 
		$a_81_7 = {52 65 70 6c 61 63 65 } //01 00 
		$a_81_8 = {68 65 78 53 74 72 69 6e 67 } //01 00 
		$a_81_9 = {46 72 6f 6d 48 65 78 53 74 72 69 6e 67 } //01 00 
		$a_81_10 = {52 61 77 46 6f 72 6d } //01 00 
		$a_81_11 = {30 30 33 36 30 30 33 32 30 30 33 38 30 30 33 32 30 30 33 37 30 30 33 30 30 30 33 34 30 30 33 34 30 30 33 39 30 30 33 30 30 30 33 34 30 30 32 46 30 30 33 38 30 30 33 38 30 30 33 39 30 30 33 39 30 30 33 38 30 30 33 31 } //00 00 
	condition:
		any of ($a_*)
 
}