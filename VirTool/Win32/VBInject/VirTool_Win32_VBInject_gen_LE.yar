
rule VirTool_Win32_VBInject_gen_LE{
	meta:
		description = "VirTool:Win32/VBInject.gen!LE,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0f 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 6e 00 78 00 68 00 6b 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_03_1 = {64 a1 30 00 00 00 8a 40 68 24 70 3c 70 0f 84 90 01 04 b8 01 00 00 00 0f a2 90 00 } //01 00 
		$a_01_2 = {64 a1 18 00 00 00 8b 40 30 80 78 02 01 0f 84 } //0c 00 
		$a_03_3 = {81 38 55 8b ec 83 90 02 01 75 90 02 02 81 78 04 ec 0c 56 8d 90 00 } //01 00 
		$a_01_4 = {8b 04 0a 01 f3 0f 6e c0 0f 6e 0b 0f ef c1 51 0f 7e c1 } //01 00 
		$a_01_5 = {41 66 8b 14 08 66 81 fa 42 4d 75 f4 51 83 c1 0e 8b 14 08 59 83 fa 28 75 e7 } //01 00 
		$a_01_6 = {89 4f 04 89 f9 83 c1 48 89 4f 0c 83 c1 44 89 4f 08 83 c1 10 89 4f 10 81 c1 d0 00 00 00 89 4f 44 } //00 00 
		$a_00_7 = {5d 04 00 00 01 10 03 80 5c 21 00 00 02 } //10 03 
	condition:
		any of ($a_*)
 
}