
rule TrojanDownloader_O97M_Powdow_RVCD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVCD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 72 65 61 74 65 6f 62 6a 65 63 74 28 61 63 74 69 76 65 73 68 65 65 74 2e 70 61 67 65 73 65 74 75 70 2e 63 65 6e 74 65 72 68 65 61 64 65 72 29 } //01 00  createobject(activesheet.pagesetup.centerheader)
		$a_01_1 = {77 6f 72 6b 62 6f 6f 6b 5f 61 63 74 69 76 61 74 65 28 29 66 6f 72 65 61 63 68 63 65 6c 6c 69 6e 72 61 6e 67 65 28 22 62 32 3a 62 32 22 29 63 65 6c 6c 2e 76 61 6c 75 65 } //01 00  workbook_activate()foreachcellinrange("b2:b2")cell.value
		$a_01_2 = {67 67 67 2e 65 78 65 63 6d 65 74 68 6f 64 5f 28 61 63 74 69 76 65 73 68 65 65 74 2e 70 61 67 65 73 65 74 75 70 2e 6c 65 66 74 68 65 61 64 65 72 2c 66 38 64 66 30 30 29 } //00 00  ggg.execmethod_(activesheet.pagesetup.leftheader,f8df00)
	condition:
		any of ($a_*)
 
}