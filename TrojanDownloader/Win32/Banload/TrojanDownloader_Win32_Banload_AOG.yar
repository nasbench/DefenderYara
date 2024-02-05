
rule TrojanDownloader_Win32_Banload_AOG{
	meta:
		description = "TrojanDownloader:Win32/Banload.AOG,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 4c 47 67 4c 61 4f 43 56 } //01 00 
		$a_01_1 = {58 37 31 59 42 5a 54 50 42 75 6e 61 34 67 47 } //01 00 
		$a_01_2 = {59 54 37 63 48 64 73 51 } //01 00 
		$a_01_3 = {32 d1 88 54 38 ff 8b 04 24 0f b6 44 38 ff 66 03 f0 66 69 c6 6d ce 66 05 bf 58 8b f0 } //00 00 
	condition:
		any of ($a_*)
 
}