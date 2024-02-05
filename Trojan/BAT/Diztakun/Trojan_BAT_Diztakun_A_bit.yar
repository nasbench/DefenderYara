
rule Trojan_BAT_Diztakun_A_bit{
	meta:
		description = "Trojan:BAT/Diztakun.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 3a 00 90 02 10 41 00 6e 00 74 00 69 00 2d 00 56 00 69 00 72 00 75 00 73 00 3a 00 90 02 10 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 3a 00 90 00 } //01 00 
		$a_01_1 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 61 6e 00 44 69 73 61 62 6c 65 52 65 67 65 64 69 74 00 44 69 73 61 62 6c 65 4d 53 43 6f 6e 66 69 67 } //01 00 
		$a_01_2 = {43 6f 70 79 46 72 6f 6d 53 63 72 65 65 6e 00 53 63 72 65 65 6e 53 61 76 65 } //01 00 
		$a_03_3 = {06 02 08 6f 90 01 04 28 90 01 04 1b 58 28 90 01 04 28 90 01 04 28 90 01 04 0a 08 17 58 0c 08 09 31 d9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}