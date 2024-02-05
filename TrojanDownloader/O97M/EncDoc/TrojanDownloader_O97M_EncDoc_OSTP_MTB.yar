
rule TrojanDownloader_O97M_EncDoc_OSTP_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.OSTP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 69 6e 74 65 72 74 69 6d 65 2e 77 65 62 73 69 74 65 2f 66 65 2f 30 37 38 32 37 30 2e 6a 73 65 } //01 00 
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_01_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00 
		$a_01_3 = {43 3a 5c 41 76 61 73 74 5c 4c 6f 67 73 5c 6d 65 74 61 73 74 61 2e 6d 65 } //00 00 
	condition:
		any of ($a_*)
 
}