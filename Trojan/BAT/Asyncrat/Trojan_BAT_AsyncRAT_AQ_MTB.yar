
rule Trojan_BAT_AsyncRAT_AQ_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.AQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {5b 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5d 00 } //02 00 
		$a_01_1 = {43 00 75 00 73 00 74 00 6f 00 6d 00 44 00 65 00 73 00 74 00 69 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 3d 00 43 00 75 00 73 00 74 00 49 00 6e 00 73 00 74 00 44 00 65 00 73 00 74 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 41 00 6c 00 6c 00 55 00 73 00 65 00 72 00 73 00 } //02 00 
		$a_01_2 = {52 00 75 00 6e 00 50 00 72 00 65 00 53 00 65 00 74 00 75 00 70 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 3d 00 52 00 75 00 6e 00 50 00 72 00 65 00 53 00 65 00 74 00 75 00 70 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //02 00 
		$a_01_3 = {5b 00 52 00 75 00 6e 00 50 00 72 00 65 00 53 00 65 00 74 00 75 00 70 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 5d 00 } //02 00 
		$a_01_4 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 49 00 4d 00 20 00 63 00 6d 00 73 00 74 00 70 00 2e 00 65 00 78 00 65 00 20 00 2f 00 46 00 } //02 00 
		$a_01_5 = {5b 00 43 00 75 00 73 00 74 00 49 00 6e 00 73 00 74 00 44 00 65 00 73 00 74 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 41 00 6c 00 6c 00 55 00 73 00 65 00 72 00 73 00 5d 00 } //02 00 
		$a_01_6 = {34 00 39 00 30 00 30 00 30 00 2c 00 34 00 39 00 30 00 30 00 31 00 3d 00 41 00 6c 00 6c 00 55 00 53 00 65 00 72 00 5f 00 4c 00 44 00 49 00 44 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2c 00 20 00 37 00 } //02 00 
		$a_01_7 = {5b 00 41 00 6c 00 6c 00 55 00 53 00 65 00 72 00 5f 00 4c 00 44 00 49 00 44 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 5d 00 } //02 00 
		$a_01_8 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 41 00 70 00 70 00 20 00 50 00 61 00 74 00 68 00 73 00 5c 00 43 00 4d 00 4d 00 47 00 52 00 33 00 32 00 2e 00 45 00 58 00 45 00 } //02 00 
		$a_01_9 = {25 00 55 00 6e 00 65 00 78 00 70 00 65 00 63 00 74 00 65 00 64 00 45 00 72 00 72 00 6f 00 72 00 25 00 } //02 00 
		$a_01_10 = {50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 50 00 61 00 74 00 68 00 } //00 00 
	condition:
		any of ($a_*)
 
}