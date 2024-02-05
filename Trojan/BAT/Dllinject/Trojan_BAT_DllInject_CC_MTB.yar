
rule Trojan_BAT_DllInject_CC_MTB{
	meta:
		description = "Trojan:BAT/DllInject.CC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 53 00 6b 00 72 00 69 00 6c 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {4d 3a 5c 59 45 44 45 4b 5c 59 65 64 65 6b 5c 44 6f 73 79 61 6c 61 72 5c 45 58 45 20 2d 20 32 30 31 32 5c 6d 75 7a 75 6e 5c 41 75 74 6f 53 69 67 5f 73 6f 75 72 63 65 5c 41 75 74 6f 53 69 67 5c 6f 62 6a 5c 44 65 62 75 67 5c 6d 68 75 7a 75 6e 2e 70 64 62 } //01 00 
		$a_01_2 = {52 65 67 69 73 74 65 72 42 48 4f } //01 00 
		$a_01_3 = {24 35 41 44 45 46 42 39 45 2d 42 38 32 34 2d 34 35 65 36 2d 38 36 45 32 2d 32 42 37 39 34 31 46 35 44 36 41 33 } //01 00 
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}