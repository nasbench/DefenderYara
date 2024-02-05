
rule Trojan_Win32_OffLoader_EB_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 67 00 71 00 75 00 61 00 72 00 74 00 65 00 72 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 31 00 31 00 26 00 74 00 3d 00 34 00 36 00 36 00 38 00 39 00 30 00 38 00 32 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 63 00 47 00 68 00 77 00 49 00 48 00 52 00 6f 00 5a 00 58 00 52 00 70 00 64 00 47 00 78 00 6c 00 49 00 43 00 35 00 6c 00 65 00 47 00 55 00 3d 00 26 00 73 00 75 00 62 00 3d 00 32 00 34 00 37 00 37 00 0b 21 } //01 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 69 00 7a 00 65 00 73 00 68 00 6f 00 63 00 6b 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 31 00 31 00 26 00 74 00 3d 00 34 00 36 00 36 00 38 00 39 00 30 00 38 00 32 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 63 00 47 00 68 00 77 00 49 00 48 00 52 00 6f 00 5a 00 58 00 52 00 70 00 64 00 47 00 78 00 6c 00 49 00 43 00 35 00 6c 00 65 00 47 00 55 00 3d 00 26 00 73 00 75 00 62 00 3d 00 32 00 34 00 37 00 37 00 0b 21 } //01 00 
		$a_01_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}