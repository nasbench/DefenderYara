
rule Ransom_MSIL_LockScreen_G{
	meta:
		description = "Ransom:MSIL/LockScreen.G,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 76 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {61 00 66 00 74 00 65 00 72 00 20 00 48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_01_2 = {61 00 66 00 74 00 65 00 72 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {61 00 66 00 74 00 65 00 72 00 20 00 63 00 6f 00 70 00 79 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {56 00 6f 00 74 00 72 00 65 00 20 00 44 00 65 00 6d 00 61 00 6e 00 64 00 65 00 20 00 61 00 20 00 65 00 74 00 65 00 20 00 65 00 6e 00 76 00 6f 00 79 00 65 00 72 00 20 00 56 00 6f 00 75 00 73 00 20 00 61 00 6c 00 6c 00 65 00 72 00 20 00 72 00 65 00 63 00 65 00 76 00 6f 00 69 00 72 00 20 00 75 00 6e 00 20 00 65 00 6d 00 61 00 69 00 6c 00 20 00 61 00 76 00 65 00 63 00 20 00 75 00 6e 00 20 00 63 00 6f 00 64 00 65 00 20 00 64 00 65 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 61 00 67 00 65 00 20 00 27 00 64 00 61 00 6e 00 73 00 20 00 6c 00 65 00 73 00 20 00 32 00 34 00 20 00 68 00 } //01 00 
		$a_01_5 = {56 00 6f 00 74 00 72 00 65 00 20 00 44 00 65 00 6d 00 61 00 6e 00 64 00 65 00 20 00 6e 00 27 00 61 00 20 00 70 00 61 00 73 00 20 00 65 00 74 00 65 00 20 00 65 00 6e 00 6f 00 79 00 65 00 72 00 20 00 76 00 6f 00 75 00 6c 00 6c 00 69 00 65 00 7a 00 20 00 72 00 65 00 65 00 73 00 61 00 79 00 65 00 72 00 21 00 } //01 00 
		$a_01_6 = {6f 00 73 00 20 00 44 00 6f 00 6e 00 6e 00 65 00 73 00 20 00 50 00 65 00 72 00 73 00 6f 00 6e 00 6e 00 65 00 6c 00 73 00 20 00 4f 00 6e 00 74 00 20 00 65 00 74 00 65 00 20 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 2c 00 20 00 50 00 6f 00 75 00 72 00 20 00 6c 00 65 00 73 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 72 00 20 00 41 00 63 00 68 00 65 00 74 00 65 00 72 00 20 00 75 00 6e 00 20 00 74 00 69 00 63 00 6b 00 65 00 74 00 20 00 6e 00 65 00 6f 00 73 00 75 00 72 00 66 00 20 00 64 00 65 00 20 00 31 00 30 00 30 00 20 00 65 00 75 00 72 00 6f 00 } //01 00 
		$a_01_7 = {63 72 79 70 74 6c 6f 63 6b 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //00 00 
		$a_00_8 = {5d 04 00 } //00 96 
	condition:
		any of ($a_*)
 
}