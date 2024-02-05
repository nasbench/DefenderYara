
rule Trojan_Win64_AbuseCommMain_O{
	meta:
		description = "Trojan:Win64/AbuseCommMain.O,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 38 00 35 00 38 00 30 00 30 00 41 00 42 00 38 00 33 00 32 00 30 00 39 00 45 00 42 00 34 00 37 00 41 00 39 00 46 00 43 00 36 00 43 00 36 00 36 00 37 00 32 00 32 00 34 00 44 00 42 00 39 00 42 00 30 00 44 00 43 00 30 00 32 00 45 00 45 00 45 00 31 00 31 00 30 00 35 00 32 00 32 00 39 00 41 00 43 00 32 00 32 00 45 00 34 00 46 00 31 00 44 00 36 00 41 00 32 00 31 00 32 00 35 00 45 00 } //01 00 
		$a_02_1 = {38 38 35 38 30 30 41 42 38 33 32 30 39 45 42 34 37 41 39 46 43 36 43 36 36 37 32 32 34 44 42 39 42 30 44 43 30 32 45 45 45 31 31 30 35 32 32 39 41 43 32 32 45 34 46 31 44 36 41 32 31 32 35 45 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 38 35 38 30 30 41 42 38 33 32 30 39 45 42 34 37 41 39 46 43 36 43 36 36 37 32 32 34 44 42 39 42 30 44 43 30 32 45 45 45 31 31 30 35 32 32 39 41 43 32 32 45 34 46 31 44 36 41 32 31 32 35 45 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 38 35 38 30 30 41 42 38 33 32 30 39 45 42 34 37 41 39 46 43 36 43 36 36 37 32 32 34 44 42 39 42 30 44 43 30 32 45 45 45 31 31 30 35 32 32 39 41 43 32 32 45 34 46 31 44 36 41 32 31 32 35 45 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}