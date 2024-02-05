
rule Ransom_MSIL_Memekap_A{
	meta:
		description = "Ransom:MSIL/Memekap.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 52 00 65 00 61 00 64 00 4d 00 65 00 } //01 00 
		$a_01_1 = {2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00 
		$a_01_2 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //01 00 
		$a_01_3 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 73 00 74 00 72 00 6f 00 6e 00 67 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 2e 00 } //01 00 
		$a_01_4 = {59 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 35 00 20 00 64 00 61 00 79 00 73 00 20 00 74 00 6f 00 20 00 6d 00 61 00 6b 00 65 00 20 00 74 00 72 00 61 00 6e 00 73 00 61 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_5 = {2e 00 74 00 61 00 78 00 32 00 30 00 31 00 } //00 00 
		$a_01_6 = {00 5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}