
rule TrojanDownloader_O97M_Powdow_SHS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SHS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 73 68 65 6c 6c 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 53 68 65 6c 6c 45 78 65 63 75 74 65 41 22 20 28 } //01 00  "shell32.dll" Alias "ShellExecuteA" (
		$a_01_1 = {28 31 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 6e 65 70 4f 22 29 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 65 78 65 2e 6c 6c 65 68 73 72 65 77 6f 70 22 29 2c 20 53 74 72 52 65 76 65 72 73 65 28 22 20 73 62 76 2e 65 6e 6f 44 20 65 78 65 2e 72 65 72 6f 6c 70 78 65 3b 73 62 76 2e 65 6e 6f 44 20 6f 2d 20 73 62 76 2e 73 75 72 69 76 5f 6b 72 61 64 2f 6c 61 70 79 61 70 2f 31 39 31 2e 38 31 31 2e 30 35 32 2e 36 31 32 20 74 65 67 77 20 6e 65 64 64 69 48 20 65 6c 79 74 53 77 6f 64 6e 69 57 2d 20 22 29 } //00 00  (1, StrReverse("nepO"), StrReverse("exe.llehsrewop"), StrReverse(" sbv.enoD exe.rerolpxe;sbv.enoD o- sbv.suriv_krad/lapyap/191.811.052.612 tegw neddiH elytSwodniW- ")
	condition:
		any of ($a_*)
 
}