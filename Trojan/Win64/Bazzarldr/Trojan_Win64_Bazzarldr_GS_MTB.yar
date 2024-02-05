
rule Trojan_Win64_Bazzarldr_GS_MTB{
	meta:
		description = "Trojan:Win64/Bazzarldr.GS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 05 00 00 0a 00 "
		
	strings :
		$a_02_0 = {ff d0 c7 44 90 02 02 00 00 00 00 c7 44 90 02 02 40 00 00 00 41 b9 00 10 00 00 49 90 02 02 ba 00 00 00 00 48 90 02 02 ff d3 48 89 90 02 02 8b 45 90 02 02 89 c1 48 8b 90 02 02 48 8b 90 02 02 49 89 90 02 02 48 89 90 02 02 e8 90 02 04 8b 55 90 02 02 48 8b 90 02 02 89 54 90 02 02 48 8d 90 02 02 48 89 90 02 04 48 8b 90 02 02 48 89 90 02 04 41 b9 00 00 00 00 41 b8 01 00 00 00 ba 00 00 00 00 48 89 c1 48 8b 05 90 02 04 ff d0 85 c0 0f 94 c0 84 c0 74 90 00 } //0a 00 
		$a_02_1 = {75 07 b8 00 00 00 00 eb 17 48 8b 90 02 02 48 89 90 02 02 48 8b 90 02 02 ff d0 90 00 } //01 00 
		$a_80_2 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 4e 75 6d 61 } //VirtualAllocExNuma  01 00 
		$a_80_3 = {43 72 79 70 74 45 6e 63 72 79 70 74 } //CryptEncrypt  01 00 
		$a_80_4 = {6d 65 6d 63 70 79 } //memcpy  00 00 
	condition:
		any of ($a_*)
 
}