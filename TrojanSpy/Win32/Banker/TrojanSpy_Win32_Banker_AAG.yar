
rule TrojanSpy_Win32_Banker_AAG{
	meta:
		description = "TrojanSpy:Win32/Banker.AAG,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {69 56 61 6c 75 65 73 20 3d 20 41 72 72 61 79 28 26 48 34 36 2c 90 01 72 2c 26 48 36 38 2c 26 48 37 34 2c 26 48 37 34 2c 26 48 37 30 2c 26 48 33 61 2c 26 48 32 66 2c 26 48 32 66 90 00 } //01 00 
		$a_00_1 = {75 00 73 00 65 00 72 00 5f 00 70 00 72 00 65 00 66 00 28 00 22 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 70 00 72 00 6f 00 78 00 79 00 2e 00 61 00 75 00 74 00 6f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 5f 00 75 00 72 00 6c 00 22 00 2c 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00 
		$a_02_2 = {2f 63 20 22 77 73 63 72 69 70 74 2e 65 78 65 20 2f 42 20 22 25 75 73 65 72 70 72 6f 66 69 6c 65 25 5c 90 02 08 2e 76 62 73 22 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}