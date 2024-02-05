
rule TrojanProxy_Win32_SilverMob_A_dha{
	meta:
		description = "TrojanProxy:Win32/SilverMob.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 14 00 "
		
	strings :
		$a_03_0 = {b2 c0 50 51 c6 44 24 0c 90 02 05 c6 44 24 0e 90 01 01 c6 44 24 0f 90 01 01 c6 44 24 11 90 01 01 c6 44 24 12 90 01 01 c6 44 24 14 90 01 01 c6 44 24 15 90 01 01 c6 44 24 16 90 02 05 c6 44 24 18 90 01 01 c6 44 24 19 90 01 01 c6 44 24 1a 90 01 01 c6 44 24 1b 90 01 01 e8 90 03 05 06 90 01 04 33 c0 90 01 04 83 c4 1c 90 00 } //02 00 
		$a_03_1 = {66 81 fe 34 80 75 90 01 01 6a 00 8d 44 24 90 01 01 68 27 80 00 00 50 e8 90 01 02 00 00 90 00 } //02 00 
		$a_01_2 = {6e 00 65 00 74 00 73 00 68 00 2e 00 65 00 78 00 65 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 } //02 00 
		$a_01_3 = {6e 00 65 00 74 00 73 00 68 00 2e 00 65 00 78 00 65 00 20 00 61 00 64 00 76 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 } //01 00 
		$a_02_4 = {69 67 66 78 90 02 08 2e 90 05 03 03 61 2d 7a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}