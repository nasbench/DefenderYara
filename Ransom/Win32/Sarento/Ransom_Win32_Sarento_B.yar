
rule Ransom_Win32_Sarento_B{
	meta:
		description = "Ransom:Win32/Sarento.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 12 00 00 ffffffff ffffffff "
		
	strings :
		$a_80_0 = {5c 42 69 6e 5c 61 32 68 6f 6f 6b 73 33 32 2e 70 64 62 } //\Bin\a2hooks32.pdb  ff ff 
		$a_80_1 = {5c 7b 41 32 49 50 43 7d } //\{A2IPC}  ff ff 
		$a_80_2 = {5b 61 32 68 6f 6f 6b 73 5d } //[a2hooks]  ff ff 
		$a_80_3 = {43 69 63 4c 6f 61 64 65 72 57 6e 64 43 6c 61 73 73 } //CicLoaderWndClass  ff ff 
		$a_80_4 = {54 65 73 74 69 6e 67 20 6b 65 79 20 22 25 73 22 20 76 61 6c 75 65 20 22 25 73 22 } //Testing key "%s" value "%s"  ff ff 
		$a_80_5 = {6e 61 6d 65 20 3d 20 25 70 20 2d 20 6e 61 6d 65 6c 65 6e 20 3d 20 25 64 } //name = %p - namelen = %d  01 00 
		$a_80_6 = {77 61 6c 6c 65 74 2e 64 61 74 } //wallet.dat  01 00 
		$a_80_7 = {65 6c 65 63 74 72 75 6d 2e 64 61 74 } //electrum.dat  01 00 
		$a_80_8 = {2f 43 20 76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 51 75 69 65 74 20 2f 41 6c 6c } ///C vssadmin Delete Shadows /Quiet /All  01 00 
		$a_80_9 = {3b 64 6f 63 3b 64 6f 63 6d 3b 64 6f 63 78 3b 64 6f 74 3b } //;doc;docm;docx;dot;  01 00 
		$a_02_10 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 90 02 10 52 00 61 00 61 00 53 00 90 00 } //01 00 
		$a_02_11 = {45 6e 63 72 79 70 74 6f 72 90 02 10 52 61 61 53 90 00 } //02 00 
		$a_80_12 = {76 00 69 63 74 00 3f 63 75 73 74 3d 00 26 67 75 69 64 3d 00 } //v  02 00 
		$a_02_13 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 5f 00 72 00 61 00 61 00 73 00 90 02 10 2e 00 74 00 78 00 74 00 90 00 } //02 00 
		$a_02_14 = {65 6e 63 72 79 70 74 6f 72 5f 72 61 61 73 90 02 10 2e 74 78 74 90 00 } //02 00 
		$a_02_15 = {54 00 68 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 6f 00 6e 00 20 00 79 00 6f 00 75 00 72 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 73 00 65 00 63 00 75 00 72 00 65 00 6c 00 79 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 90 02 10 52 00 61 00 61 00 53 00 2e 00 90 00 } //02 00 
		$a_02_16 = {54 68 65 20 66 69 6c 65 73 20 6f 6e 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 68 61 76 65 20 62 65 65 6e 20 73 65 63 75 72 65 6c 79 20 65 6e 63 72 79 70 74 65 64 20 62 79 20 45 6e 63 72 79 70 74 6f 72 90 02 10 52 61 61 53 2e 90 00 } //03 00 
		$a_80_17 = {3a 2f 2f 64 65 63 72 79 70 74 6f 72 61 76 65 69 64 66 37 2e 6f 6e 69 6f 6e 2e 63 61 62 } //://decryptoraveidf7.onion.cab  00 00 
		$a_00_18 = {7e 15 00 } //00 0d 
	condition:
		any of ($a_*)
 
}