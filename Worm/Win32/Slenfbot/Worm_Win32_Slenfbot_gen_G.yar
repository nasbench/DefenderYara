
rule Worm_Win32_Slenfbot_gen_G{
	meta:
		description = "Worm:Win32/Slenfbot.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 45 f8 83 c0 01 89 45 f8 83 7d f8 90 01 01 7d 90 01 01 8b 4d 08 03 4d f8 0f be 91 90 01 04 33 55 fc 8b 45 f4 03 45 f8 88 10 90 00 } //01 00 
		$a_03_1 = {99 b9 1c 00 00 00 f7 f9 83 f8 06 75 0c c7 85 90 01 04 01 00 00 00 eb 0a c7 85 90 01 04 00 00 00 00 90 00 } //01 00 
		$a_01_2 = {64 6f 77 6e 5f 65 78 65 63 00 00 00 21 00 00 00 2d 76 00 00 64 6f 77 6e 00 } //01 00 
		$a_01_3 = {75 70 64 61 74 65 00 00 21 00 00 00 73 74 61 72 74 2d 73 63 61 6e 00 } //01 00 
		$a_01_4 = {73 75 31 63 31 64 33 00 } //01 00 
		$a_01_5 = {61 73 64 33 72 34 74 72 77 65 72 00 } //01 00 
		$a_01_6 = {73 74 6f 70 70 69 6e 67 20 74 68 72 65 61 64 73 00 } //01 00 
		$a_03_7 = {83 f8 02 74 0f 8d 45 fc 50 ff 15 90 01 04 83 f8 04 75 04 b0 01 eb 08 32 c0 90 00 } //01 00 
		$a_01_8 = {99 b9 e8 03 00 00 f7 f9 99 b9 3c 00 00 00 f7 f9 99 b9 3c 00 00 00 f7 f9 99 b9 18 00 00 00 f7 f9 99 b9 07 00 00 00 f7 f9 } //00 00 
		$a_00_9 = {5d 04 00 } //00 8f 
	condition:
		any of ($a_*)
 
}