
rule Ransom_MSIL_NopeCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/NopeCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {58 00 45 00 42 00 53 00 52 00 55 00 46 00 45 00 58 00 30 00 31 00 46 00 51 00 43 00 35 00 30 00 65 00 48 00 51 00 3d 00 } //01 00 
		$a_01_1 = {64 00 32 00 4a 00 68 00 5a 00 47 00 31 00 70 00 62 00 69 00 42 00 6b 00 5a 00 57 00 78 00 6c 00 64 00 47 00 55 00 67 00 59 00 32 00 46 00 30 00 59 00 57 00 78 00 76 00 5a 00 79 00 41 00 74 00 63 00 58 00 56 00 70 00 5a 00 58 00 51 00 3d 00 } //01 00 
		$a_01_2 = {64 00 6e 00 4e 00 7a 00 59 00 57 00 52 00 74 00 61 00 57 00 34 00 67 00 5a 00 47 00 56 00 73 00 5a 00 58 00 52 00 6c 00 49 00 48 00 4e 00 6f 00 59 00 57 00 52 00 76 00 64 00 33 00 4d 00 67 00 4c 00 32 00 46 00 73 00 62 00 43 00 41 00 76 00 63 00 58 00 56 00 70 00 5a 00 58 00 51 00 67 00 4a 00 69 00 42 00 33 00 62 00 57 00 6c 00 6a 00 49 00 48 00 4e 00 6f 00 59 00 57 00 52 00 76 00 64 00 32 00 4e 00 76 00 63 00 48 00 6b 00 67 00 5a 00 47 00 56 00 73 00 5a 00 58 00 52 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}