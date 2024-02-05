
rule Ransom_MSIL_Ghocwalcrypt_B{
	meta:
		description = "Ransom:MSIL/Ghocwalcrypt.B,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5f 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_1 = {41 00 6c 00 6c 00 20 00 6f 00 66 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 61 00 6e 00 64 00 20 00 73 00 65 00 6e 00 74 00 20 00 74 00 6f 00 20 00 6f 00 75 00 72 00 20 00 73 00 65 00 63 00 75 00 72 00 65 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 } //01 00 
		$a_01_2 = {55 00 70 00 6f 00 6e 00 20 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 20 00 79 00 6f 00 75 00 20 00 77 00 69 00 6c 00 6c 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 6b 00 65 00 79 00 20 00 61 00 6e 00 64 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 72 00 } //01 00 
		$a_01_3 = {54 00 6f 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 70 00 6c 00 65 00 61 00 73 00 65 00 20 00 67 00 65 00 74 00 20 00 69 00 6e 00 20 00 74 00 6f 00 75 00 63 00 68 00 20 00 62 00 79 00 20 00 65 00 6d 00 61 00 69 00 6c 00 3a 00 } //01 00 
		$a_01_4 = {4b 00 72 00 79 00 70 00 74 00 6f 00 4c 00 6f 00 63 00 6b 00 65 00 64 00 } //01 00 
		$a_01_5 = {2e 00 6b 00 72 00 79 00 70 00 74 00 65 00 64 00 } //00 00 
		$a_01_6 = {00 5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}