
rule TrojanSpy_Win32_Scondatie_A{
	meta:
		description = "TrojanSpy:Win32/Scondatie.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 25 00 73 00 26 00 64 00 64 00 3d 00 25 00 30 00 3a 00 73 00 26 00 6f 00 73 00 3d 00 25 00 73 00 26 00 6d 00 61 00 63 00 3d 00 47 00 47 00 26 00 76 00 3d 00 25 00 73 00 } //01 00 
		$a_01_1 = {73 00 69 00 6e 00 61 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 5f 00 61 00 64 00 5f 00 61 00 72 00 65 00 61 00 32 00 } //01 00 
		$a_01_2 = {28 00 22 00 61 00 63 00 74 00 69 00 6f 00 6e 00 22 00 2c 00 20 00 22 00 42 00 75 00 79 00 63 00 61 00 72 00 64 00 43 00 68 00 6f 00 73 00 65 00 43 00 61 00 72 00 64 00 22 00 29 00 3b 00 24 00 28 00 22 00 23 00 63 00 68 00 6f 00 73 00 65 00 43 00 61 00 72 00 64 00 22 00 29 00 2e 00 73 00 75 00 62 00 6d 00 69 00 74 00 28 00 29 00 3b 00 } //01 00 
		$a_01_3 = {7a 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 25 00 73 00 26 00 61 00 6e 00 64 00 3d 00 25 00 30 00 3a 00 73 00 26 00 62 00 61 00 6e 00 6b 00 3d 00 25 00 73 00 26 00 6d 00 6f 00 6e 00 65 00 79 00 3d 00 25 00 73 00 26 00 66 00 61 00 6e 00 68 00 75 00 69 00 3d 00 30 00 } //01 00 
		$a_03_4 = {56 00 61 00 6c 00 69 00 64 00 61 00 74 00 65 00 43 00 6f 00 64 00 65 00 2e 00 61 00 73 00 68 00 78 00 3f 00 74 00 3d 00 22 00 2b 00 74 00 69 00 6d 00 65 00 6e 00 6f 00 77 00 3b 00 7d 00 90 02 10 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 73 00 62 00 66 00 6d 00 2e 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 22 00 41 00 6c 00 69 00 70 00 61 00 79 00 43 00 6f 00 64 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}