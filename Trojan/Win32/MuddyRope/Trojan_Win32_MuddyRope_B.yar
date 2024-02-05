
rule Trojan_Win32_MuddyRope_B{
	meta:
		description = "Trojan:Win32/MuddyRope.B,SIGNATURE_TYPE_PEHSTR,3e 00 3c 00 10 00 00 14 00 "
		
	strings :
		$a_01_0 = {43 69 73 63 6f 41 6e 79 2e 65 78 65 } //14 00 
		$a_01_1 = {25 45 49 64 53 6f 63 6b 73 55 44 50 4e 6f 74 53 75 70 70 6f 72 74 65 64 42 79 53 4f 43 4b 53 56 65 72 73 69 6f 6e } //14 00 
		$a_01_2 = {7b 24 6f 75 74 70 75 74 20 3d 20 4e 65 77 2d 4f 62 6a 65 63 74 20 22 53 79 73 74 65 6d 2e 54 65 78 74 2e 53 74 72 69 6e 67 42 75 69 6c 64 65 72 22 } //28 00 
		$a_01_3 = {68 74 74 70 3a 2f 2f 7a 73 74 6f 72 65 73 68 6f 70 69 6e 67 2e 64 64 6e 73 2e 6e 65 74 2f 44 61 74 61 } //28 00 
		$a_01_4 = {68 74 74 70 3a 2f 2f 61 6d 61 7a 6f 30 6e 2e 73 65 72 76 65 66 74 70 2e 63 6f 6d 2f 44 61 74 61 2f } //28 00 
		$a_01_5 = {68 74 74 70 3a 2f 2f 67 6f 6f 67 6c 65 61 64 73 2e 68 6f 70 74 6f 2e 6f 72 67 } //14 00 
		$a_01_6 = {5c 57 68 71 4d 53 73 4b 25 } //0a 00 
		$a_01_7 = {5c 49 4f 43 4d 56 2e 70 73 31 } //0a 00 
		$a_01_8 = {5c 4c 69 62 2e 70 73 31 } //01 00 
		$a_01_9 = {42 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 53 79 73 74 65 6d 5c 49 64 53 74 72 65 61 6d 56 43 4c 2e 70 61 73 } //01 00 
		$a_01_10 = {42 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 53 79 73 74 65 6d 5c 49 64 47 6c 6f 62 61 6c 2e 70 61 73 } //01 00 
		$a_01_11 = {62 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 53 79 73 74 65 6d 5c 49 64 53 74 61 63 6b 2e 70 61 73 } //01 00 
		$a_01_12 = {62 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 43 6f 72 65 5c 49 64 49 4f 48 61 6e 64 6c 65 72 2e 70 61 73 } //01 00 
		$a_01_13 = {62 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 50 72 6f 74 6f 63 6f 6c 73 5c 49 64 43 6f 64 65 72 33 74 6f 34 2e 70 61 73 } //01 00 
		$a_01_14 = {62 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 50 72 6f 74 6f 63 6f 6c 73 5c 49 64 5a 4c 69 62 43 6f 6d 70 72 65 73 73 6f 72 42 61 73 65 2e 70 61 73 } //01 00 
		$a_01_15 = {62 75 69 6c 64 73 5c 54 70 41 64 64 6f 6e 73 5c 49 6e 64 79 4e 65 74 5c 50 72 6f 74 6f 63 6f 6c 73 5c 49 64 48 54 54 50 2e 70 61 73 } //00 00 
	condition:
		any of ($a_*)
 
}