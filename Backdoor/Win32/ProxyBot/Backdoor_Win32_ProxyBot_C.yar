
rule Backdoor_Win32_ProxyBot_C{
	meta:
		description = "Backdoor:Win32/ProxyBot.C,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 05 00 "
		
	strings :
		$a_00_0 = {53 61 6e 64 6d 61 6e 5c 43 70 70 20 70 72 6f 6a 65 63 74 73 5c 53 6f 63 6b 73 50 72 6f 78 79 } //04 00  Sandman\Cpp projects\SocksProxy
		$a_01_1 = {5f 50 72 6f 78 79 44 6c 6c 2e 64 6c 6c } //05 00  _ProxyDll.dll
		$a_01_2 = {8d 85 f8 ef ff ff 50 6a 00 c7 47 04 80 4a 5d 05 ff 15 90 00 } //05 00 
		$a_01_3 = {8b f8 83 ff 31 59 7e 0f e8 90 00 } //05 00 
		$a_01_4 = {c1 6c 24 08 03 33 c9 39 4c 24 08 76 1b 8b 44 24 04 8d 04 c8 } //02 00 
		$a_01_5 = {69 70 3d 25 73 26 70 6f 72 74 3d 25 64 26 67 75 69 64 3d 25 73 26 76 65 72 73 69 6f 6e 3d 25 73 26 70 61 73 73 3d 25 73 26 } //02 00  ip=%s&port=%d&guid=%s&version=%s&pass=%s&
		$a_01_6 = {41 52 45 5f 59 4f 55 5f 41 4c 49 56 45 } //00 00  ARE_YOU_ALIVE
	condition:
		any of ($a_*)
 
}