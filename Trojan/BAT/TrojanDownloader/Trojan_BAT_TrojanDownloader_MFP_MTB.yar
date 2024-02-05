
rule Trojan_BAT_TrojanDownloader_MFP_MTB{
	meta:
		description = "Trojan:BAT/TrojanDownloader.MFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,59 00 59 00 11 00 00 32 00 "
		
	strings :
		$a_00_0 = {24 66 33 39 66 63 63 37 35 2d 64 31 66 65 2d 34 35 64 35 2d 61 64 32 37 2d 38 65 37 64 61 62 30 38 38 66 37 36 } //32 00 
		$a_00_1 = {24 30 66 64 36 38 65 64 38 2d 33 38 31 34 2d 34 36 63 38 2d 38 36 32 62 2d 30 30 34 30 39 39 64 39 32 66 37 30 } //32 00 
		$a_00_2 = {24 30 39 62 63 38 37 36 61 2d 32 36 39 39 2d 34 37 62 62 2d 61 65 36 33 2d 35 39 36 65 34 31 66 32 61 37 63 34 } //32 00 
		$a_00_3 = {24 61 30 31 61 33 61 65 33 2d 35 37 62 35 2d 34 66 66 64 2d 62 32 64 35 2d 32 33 39 63 62 64 63 32 62 65 36 32 } //32 00 
		$a_00_4 = {24 39 62 61 33 62 63 38 35 2d 39 31 62 37 2d 34 66 36 33 2d 62 32 62 38 2d 66 63 62 39 34 31 32 32 36 37 39 62 } //32 00 
		$a_00_5 = {24 32 65 63 33 36 63 35 62 2d 35 34 36 31 2d 34 65 36 62 2d 62 66 30 31 2d 65 37 31 38 65 62 62 34 32 33 37 66 } //32 00 
		$a_00_6 = {24 36 35 32 65 65 30 36 61 2d 31 65 32 37 2d 34 65 64 34 2d 61 30 65 36 2d 31 35 65 36 37 35 30 37 38 65 66 32 } //1e 00 
		$a_00_7 = {57 55 02 08 09 0b 00 00 00 00 00 00 00 00 00 00 } //01 00 
		$a_81_8 = {49 6e 76 6f 6b 65 } //01 00 
		$a_81_9 = {49 41 73 79 6e 63 52 65 73 75 6c 74 } //01 00 
		$a_81_10 = {41 73 79 6e 63 43 61 6c 6c 62 61 63 6b } //01 00 
		$a_81_11 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_81_12 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 41 73 79 6e 63 } //01 00 
		$a_81_13 = {43 6c 61 73 73 4c 69 62 72 61 72 79 31 2e 64 6c 6c } //01 00 
		$a_81_14 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //01 00 
		$a_81_15 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 43 6f 6d 70 6c 65 74 65 64 45 76 65 6e 74 48 61 6e 64 6c 65 72 } //01 00 
		$a_81_16 = {53 79 73 74 65 6d 2e 4e 65 74 } //00 00 
	condition:
		any of ($a_*)
 
}