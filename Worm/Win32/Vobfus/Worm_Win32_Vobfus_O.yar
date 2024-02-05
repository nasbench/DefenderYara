
rule Worm_Win32_Vobfus_O{
	meta:
		description = "Worm:Win32/Vobfus.O,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {82 f4 c4 49 20 00 01 00 48 1d 90 49 2d 00 00 00 86 a1 02 48 37 00 00 00 00 00 00 00 00 00 00 00 4b 45 52 4e 45 4c 33 32 2e 44 4c 4c 00 4e 54 44 4c 4c 2e 44 4c 4c 00 4d 53 56 42 56 4d 36 30 2e 44 4c 4c 00 } //01 00 
		$a_01_1 = {0e 00 00 00 50 72 6f 63 65 73 73 33 32 4e 65 78 74 00 } //01 00 
		$a_01_2 = {0e 00 00 00 67 65 74 68 6f 73 74 62 79 6e 61 6d 65 00 } //01 00 
		$a_03_3 = {fe 8e 01 00 00 00 10 00 80 08 28 90 01 02 00 00 f5 00 00 00 00 6c 90 01 02 52 28 90 01 02 00 00 f5 01 00 00 00 6c 90 01 02 52 6c 90 01 02 fd 69 90 01 02 f5 02 00 00 00 6c 90 01 02 52 28 90 01 02 00 00 f5 03 00 00 00 6c 90 01 02 52 28 90 01 02 00 00 f5 04 00 00 00 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}