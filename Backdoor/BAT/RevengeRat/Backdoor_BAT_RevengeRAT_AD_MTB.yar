
rule Backdoor_BAT_RevengeRAT_AD_MTB{
	meta:
		description = "Backdoor:BAT/RevengeRAT.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 18 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 69 6d 65 } //01 00 
		$a_01_1 = {45 58 45 43 55 54 49 4f 4e 5f 53 54 41 54 45 } //01 00 
		$a_01_2 = {54 63 70 52 65 63 65 69 76 65 } //01 00 
		$a_01_3 = {54 63 70 53 65 6e 64 } //01 00 
		$a_01_4 = {47 65 74 48 61 72 64 44 69 73 6b 53 65 72 69 61 6c 4e 75 6d 62 65 72 } //01 00 
		$a_01_5 = {47 65 74 41 56 } //01 00 
		$a_01_6 = {45 53 5f 43 4f 4e 54 49 4e 55 4f 55 53 } //01 00 
		$a_01_7 = {45 53 5f 44 49 53 50 4c 41 59 5f 52 45 51 55 49 52 45 44 } //01 00 
		$a_01_8 = {45 53 5f 53 59 53 54 45 4d 5f 52 45 51 55 49 52 45 44 } //01 00 
		$a_01_9 = {63 75 72 72 65 6e 74 4d 75 74 65 78 } //01 00 
		$a_01_10 = {50 61 72 61 6d 65 74 65 72 69 7a 65 64 54 68 72 65 61 64 53 74 61 72 74 } //01 00 
		$a_01_11 = {57 61 69 74 46 6f 72 50 65 6e 64 69 6e 67 46 69 6e 61 6c 69 7a 65 72 73 } //01 00 
		$a_01_12 = {67 65 74 5f 4d 61 63 68 69 6e 65 4e 61 6d 65 } //01 00 
		$a_01_13 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 } //01 00 
		$a_01_14 = {67 65 74 5f 4f 53 46 75 6c 6c 4e 61 6d 65 } //01 00 
		$a_01_15 = {67 65 74 5f 54 6f 74 61 6c 50 68 79 73 69 63 61 6c 4d 65 6d 6f 72 79 } //01 00 
		$a_01_16 = {47 65 74 48 6f 73 74 4e 61 6d 65 } //01 00 
		$a_01_17 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00 
		$a_01_18 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00 
		$a_01_19 = {53 00 79 00 73 00 74 00 65 00 6d 00 44 00 72 00 69 00 76 00 65 00 } //01 00 
		$a_01_20 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 } //01 00 
		$a_01_21 = {72 00 6f 00 6f 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //01 00 
		$a_01_22 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 48 00 41 00 52 00 44 00 57 00 41 00 52 00 45 00 5c 00 44 00 45 00 53 00 43 00 52 00 49 00 50 00 54 00 49 00 4f 00 4e 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 45 00 4e 00 54 00 52 00 41 00 4c 00 50 00 52 00 4f 00 43 00 45 00 53 00 53 00 4f 00 52 00 5c 00 30 00 } //01 00 
		$a_01_23 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 4e 00 61 00 6d 00 65 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //00 00 
	condition:
		any of ($a_*)
 
}