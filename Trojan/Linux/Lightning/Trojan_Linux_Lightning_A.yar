
rule Trojan_Linux_Lightning_A{
	meta:
		description = "Trojan:Linux/Lightning.A,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 75 73 72 2f 6c 69 62 36 34 2f 73 65 61 68 6f 72 73 65 73 2f } //01 00 
		$a_02_1 = {4c 69 67 68 74 6e 69 6e 67 2e 90 03 04 0a 43 6f 72 65 44 6f 77 6e 6c 6f 61 64 65 72 90 00 } //01 00 
		$a_01_2 = {6b 6b 64 6d 66 6c 75 73 68 } //01 00 
		$a_01_3 = {70 72 6f 63 2f 79 2e 79 } //01 00 
		$a_00_4 = {4c 69 6e 75 78 2e 50 6c 75 67 69 6e 2e 4c 69 67 68 74 6e 69 6e 67 } //00 00 
		$a_00_5 = {5d 04 00 } //00 ea 
	condition:
		any of ($a_*)
 
}