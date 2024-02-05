
rule Trojan_BAT_Kufshen_B{
	meta:
		description = "Trojan:BAT/Kufshen.B,SIGNATURE_TYPE_PEHSTR_EXT,14 00 10 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 63 00 56 00 47 00 56 00 74 00 63 00 46 00 78 00 63 00 64 00 32 00 6c 00 75 00 64 00 58 00 42 00 6b 00 59 00 58 00 52 00 6c 00 58 00 46 00 78 00 74 00 61 00 57 00 35 00 6c 00 63 00 67 00 3d 00 3d 00 } //04 00 
		$a_01_1 = {56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 63 00 56 00 47 00 56 00 74 00 63 00 46 00 78 00 63 00 64 00 32 00 6c 00 75 00 64 00 58 00 42 00 6b 00 59 00 58 00 52 00 6c 00 58 00 46 00 78 00 74 00 61 00 57 00 35 00 6c 00 63 00 6c 00 78 00 63 00 63 00 6e 00 42 00 6a 00 62 00 57 00 6c 00 75 00 5a 00 58 00 49 00 74 00 59 00 33 00 42 00 31 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 } //04 00 
		$a_01_2 = {56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 63 00 56 00 47 00 56 00 74 00 63 00 46 00 78 00 63 00 64 00 32 00 6c 00 75 00 64 00 58 00 42 00 6b 00 59 00 58 00 52 00 6c 00 58 00 46 00 78 00 74 00 61 00 57 00 35 00 6c 00 63 00 6c 00 78 00 63 00 63 00 47 00 68 00 76 00 5a 00 57 00 35 00 70 00 65 00 43 00 35 00 6c 00 65 00 47 00 55 00 3d 00 } //04 00 
		$a_01_3 = {64 00 32 00 6c 00 75 00 61 00 57 00 35 00 70 00 61 00 58 00 51 00 75 00 5a 00 58 00 68 00 6c 00 49 00 43 00 31 00 31 00 63 00 6d 00 77 00 39 00 61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 77 00 3d 00 3d 00 } //08 00 
		$a_01_4 = {62 00 74 00 63 00 67 00 75 00 69 00 6c 00 64 00 2e 00 63 00 6f 00 6d 00 3a 00 38 00 33 00 33 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}