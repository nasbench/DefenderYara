
rule PWS_Win32_Kegotip_A{
	meta:
		description = "PWS:Win32/Kegotip.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 3a 2a 3a 45 6e 61 62 6c 65 64 3a 4d 69 63 72 6f 73 6f 66 74 20 4f 66 66 69 63 65 00 } //01 00 
		$a_01_1 = {53 61 66 65 48 65 61 70 57 69 6e 33 32 4f 62 6a 65 63 74 } //01 00 
		$a_01_2 = {5c 57 69 6e 64 6f 77 73 20 4d 65 73 73 61 67 69 6e 67 20 53 75 62 73 79 73 74 65 6d 5c 4d 53 4d 61 70 69 41 70 70 73 } //01 00 
		$a_01_3 = {4d 53 57 51 2a 2e 74 6d 70 00 } //01 00 
		$a_01_4 = {5c 54 75 72 62 6f 46 54 50 5c 61 64 64 72 62 6b 2e 64 61 74 00 } //01 00 
		$a_01_5 = {5c 73 69 74 65 73 5c 77 73 5f 66 74 70 2e 69 6e 69 } //01 00 
		$a_01_6 = {5c 69 70 73 77 69 74 63 68 5c 77 73 5f 66 74 70 } //01 00 
		$a_01_7 = {5c 46 69 6c 65 5a 69 6c 6c 61 5c 73 69 74 65 6d 61 6e 61 67 65 72 2e 78 6d 6c } //01 00 
		$a_01_8 = {5c 66 61 72 5c 70 6c 75 67 69 6e 73 5c 66 74 70 5c 68 6f 73 74 73 } //01 00 
		$a_01_9 = {5c 67 68 69 73 6c 65 72 5c 74 6f 74 61 6c 20 63 6f 6d 6d 61 6e 64 65 72 } //01 00 
		$a_01_10 = {5c 47 6c 6f 62 61 6c 53 43 41 50 45 5c 43 75 74 65 46 54 50 } //01 00 
		$a_01_11 = {73 6d 64 61 74 61 2e 64 61 74 00 } //01 00 
		$a_01_12 = {74 72 65 65 2e 64 61 74 00 } //01 00 
		$a_01_13 = {3c 2f 55 73 65 72 3e 00 } //01 00 
		$a_01_14 = {3c 2f 50 61 73 73 77 6f 72 64 3e 00 } //01 00 
		$a_01_15 = {3c 2f 48 6f 73 74 3e 00 } //00 00 
	condition:
		any of ($a_*)
 
}