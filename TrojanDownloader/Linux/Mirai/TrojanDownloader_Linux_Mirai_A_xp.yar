
rule TrojanDownloader_Linux_Mirai_A_xp{
	meta:
		description = "TrojanDownloader:Linux/Mirai.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 69 74 6f 20 61 6e 74 69 68 6f 6e 65 79 20 61 69 72 64 72 6f 70 70 65 64 } //01 00 
		$a_01_1 = {2e 2f 64 64 20 6c 6f 61 64 2e 77 67 65 74 } //01 00 
		$a_03_2 = {77 67 65 74 20 68 74 74 70 90 02 35 20 2d 4f 20 2d 20 3e 20 64 64 90 00 } //01 00 
		$a_01_3 = {63 68 6d 6f 64 20 37 37 37 20 63 63 } //00 00 
		$a_00_4 = {5d 04 00 } //00 62 
	condition:
		any of ($a_*)
 
}