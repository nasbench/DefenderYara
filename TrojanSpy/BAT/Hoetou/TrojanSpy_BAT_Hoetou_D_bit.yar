
rule TrojanSpy_BAT_Hoetou_D_bit{
	meta:
		description = "TrojanSpy:BAT/Hoetou.D!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //01 00 
		$a_01_1 = {48 00 6f 00 73 00 74 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 66 00 6f 00 72 00 20 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 } //01 00 
		$a_01_2 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {36 00 2e 00 33 00 2e 00 39 00 32 00 30 00 31 00 2e 00 } //01 00 
		$a_01_4 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 46 00 6f 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 20 00 42 00 61 00 73 00 69 00 63 00 } //01 00 
		$a_01_5 = {73 00 42 00 75 00 69 00 6c 00 64 00 31 00 2e 00 65 00 78 00 65 00 } //00 00 
		$a_00_6 = {5d 04 00 00 } //f7 72 
	condition:
		any of ($a_*)
 
}