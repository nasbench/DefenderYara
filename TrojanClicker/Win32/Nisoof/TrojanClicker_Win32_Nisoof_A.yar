
rule TrojanClicker_Win32_Nisoof_A{
	meta:
		description = "TrojanClicker:Win32/Nisoof.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 49 6e 65 74 4c 6f 61 64 2e 64 6c 6c 00 } //01 00 
		$a_03_1 = {68 74 74 70 3a 2f 2f 73 6f 66 74 31 37 2e 76 76 6e 6f 77 2e 69 6e 66 6f 3a 37 37 37 2f 90 02 20 2e 70 68 70 3f 6d 61 63 3d 90 02 05 26 66 69 6c 65 3d 90 00 } //01 00 
		$a_03_2 = {68 74 74 70 3a 2f 2f 90 02 20 3a 38 33 32 39 2f 6c 6f 61 64 2f 30 2e 65 78 65 90 00 } //01 00 
		$a_03_3 = {5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 00 68 74 74 70 3a 2f 2f 25 37 33 25 36 35 25 37 32 25 37 36 25 36 35 25 37 32 25 33 33 25 33 38 25 32 45 25 33 32 25 33 30 25 33 31 25 33 30 25 37 30 25 36 43 25 36 31 25 37 39 25 36 35 25 37 32 25 32 45 25 36 39 25 36 45 25 36 36 25 36 46 3a 34 35 39 2f 3f 69 3d 69 65 26 74 3d 90 02 08 26 75 75 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}