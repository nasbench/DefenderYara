
rule Worm_Win32_Vobfus_gen_Y{
	meta:
		description = "Worm:Win32/Vobfus.gen!Y,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {aa f5 00 01 00 00 c2 } //01 00 
		$a_03_1 = {f4 3c eb b3 e8 71 90 01 02 1e 90 01 04 6c 90 01 02 f5 ff ff ff 7f c4 90 00 } //01 00 
		$a_03_2 = {f5 bb c0 c0 00 ec b6 90 02 08 ec f5 2f a0 bf 00 ec b6 ab 90 00 } //01 00 
		$a_03_3 = {f5 c2 c0 c0 00 c2 90 02 1c f5 2a a0 bf 00 c2 90 00 } //01 00 
		$a_01_4 = {f5 04 80 00 00 c7 1c } //01 00 
		$a_01_5 = {4a f5 01 00 00 00 ae f5 02 00 00 00 fe 6c } //01 00 
		$a_01_6 = {f5 58 59 59 59 } //01 00 
		$a_01_7 = {f5 1c 00 00 00 aa 08 08 00 8f 34 00 } //01 00 
		$a_03_8 = {f5 2c 23 00 00 3e 90 01 02 23 90 00 } //01 00 
		$a_03_9 = {f5 40 1f 00 00 3e 90 01 02 23 90 00 } //01 00 
		$a_03_10 = {f5 43 1f 00 00 3e 90 01 02 23 90 00 } //01 00 
		$a_03_11 = {f5 2a 23 00 00 3e 90 01 02 23 90 00 } //01 00 
		$a_03_12 = {f5 2b 23 00 00 3e 90 01 02 23 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}