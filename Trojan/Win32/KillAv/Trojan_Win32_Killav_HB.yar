
rule Trojan_Win32_Killav_HB{
	meta:
		description = "Trojan:Win32/Killav.HB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 0a 00 "
		
	strings :
		$a_02_0 = {25 64 2e 25 64 2e 25 64 20 90 03 03 0a 6d 73 65 74 72 65 6e 64 6d 69 63 72 6f 20 6b 69 6c 6c 65 64 90 00 } //0a 00 
		$a_00_1 = {69 64 3d 25 73 26 64 61 74 61 3d } //0a 00 
		$a_01_2 = {4e 54 46 00 25 64 2e 25 64 2e 25 64 20 25 73 00 43 72 79 70 74 64 6c 6c 2e 64 6c 6c } //01 00 
		$a_00_3 = {31 38 37 2e 33 33 2e 31 2e 31 37 31 } //01 00 
		$a_00_4 = {39 31 2e 31 32 31 2e 31 36 2e 32 34 } //01 00 
		$a_00_5 = {31 39 38 2e 31 30 31 2e 32 34 31 2e 31 35 39 } //01 00 
		$a_00_6 = {39 31 2e 31 32 31 2e 35 35 2e 31 32 37 } //00 00 
		$a_00_7 = {80 10 00 00 bf 4e 4a 79 12 0f 53 } //19 4e 
	condition:
		any of ($a_*)
 
}