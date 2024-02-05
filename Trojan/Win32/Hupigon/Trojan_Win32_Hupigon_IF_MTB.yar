
rule Trojan_Win32_Hupigon_IF_MTB{
	meta:
		description = "Trojan:Win32/Hupigon.IF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 32 00 2e 00 36 00 31 00 2e 00 32 00 33 00 2e 00 32 00 31 00 35 00 3a 00 39 00 30 00 2f 00 } //01 00 
		$a_01_1 = {6c 00 6f 00 63 00 6b 00 2f 00 63 00 68 00 65 00 63 00 6b 00 75 00 69 00 64 00 2e 00 61 00 73 00 70 00 3f 00 75 00 69 00 64 00 3d 00 } //01 00 
		$a_01_2 = {6c 00 6f 00 63 00 6b 00 2f 00 76 00 65 00 72 00 2e 00 61 00 73 00 70 00 3f 00 49 00 44 00 3d 00 } //01 00 
		$a_01_3 = {64 00 6f 00 77 00 6e 00 2f 00 6c 00 6f 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {4c 00 6f 00 63 00 6b 00 6c 00 69 00 73 00 74 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_5 = {6c 00 61 00 73 00 74 00 6e 00 61 00 6d 00 65 00 3d 00 } //01 00 
		$a_01_6 = {6e 00 61 00 6d 00 65 00 6c 00 69 00 73 00 74 00 3d 00 } //01 00 
		$a_01_7 = {64 00 78 00 71 00 74 00 3d 00 } //01 00 
		$a_01_8 = {78 00 72 00 6a 00 74 00 3d 00 } //01 00 
		$a_01_9 = {78 00 72 00 77 00 6a 00 3d 00 } //01 00 
		$a_01_10 = {7a 00 64 00 79 00 6e 00 61 00 6d 00 65 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}