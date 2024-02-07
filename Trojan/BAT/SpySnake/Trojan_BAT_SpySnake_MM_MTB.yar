
rule Trojan_BAT_SpySnake_MM_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 9f a2 2b 09 1f 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 b0 00 00 00 30 00 00 00 5e 01 00 00 19 03 00 00 b9 01 00 00 1b 00 00 00 4a } //05 00 
		$a_01_1 = {63 36 35 65 37 35 32 35 2d 64 66 34 66 2d 34 63 32 34 2d 61 63 66 64 2d 34 30 64 61 32 64 31 38 33 63 64 38 } //01 00  c65e7525-df4f-4c24-acfd-40da2d183cd8
		$a_01_2 = {4c 30 30 30 30 30 } //01 00  L00000
		$a_01_3 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5f 00 52 00 75 00 6e 00 } //01 00  Control_Run
		$a_01_4 = {4b 30 30 30 30 30 31 } //00 00  K000001
	condition:
		any of ($a_*)
 
}