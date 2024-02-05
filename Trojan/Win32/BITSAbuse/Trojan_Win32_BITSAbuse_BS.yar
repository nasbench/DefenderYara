
rule Trojan_Win32_BITSAbuse_BS{
	meta:
		description = "Trojan:Win32/BITSAbuse.BS,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 03 00 00 04 00 "
		
	strings :
		$a_02_0 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 2d 08 01 20 20 00 2f 00 52 00 65 00 70 00 6c 00 61 00 63 00 65 00 52 00 65 00 6d 00 6f 00 74 00 65 00 50 00 72 00 65 00 66 00 69 00 78 00 20 00 90 2d 40 01 20 20 00 90 2d 40 01 20 20 00 5c 00 5c 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 5c 00 90 00 } //04 00 
		$a_02_1 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 2d 08 01 20 20 00 2f 00 52 00 65 00 70 00 6c 00 61 00 63 00 65 00 52 00 65 00 6d 00 6f 00 74 00 65 00 50 00 72 00 65 00 66 00 69 00 78 00 20 00 90 2d 40 01 20 20 00 90 2d 40 01 20 20 00 5c 00 5c 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 5c 00 90 00 } //04 00 
		$a_02_2 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 2d 08 01 20 20 00 2f 00 52 00 65 00 70 00 6c 00 61 00 63 00 65 00 52 00 65 00 6d 00 6f 00 74 00 65 00 50 00 72 00 65 00 66 00 69 00 78 00 20 00 90 2d 40 01 20 20 00 90 2d 40 01 20 20 00 90 02 02 3a 00 5c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}