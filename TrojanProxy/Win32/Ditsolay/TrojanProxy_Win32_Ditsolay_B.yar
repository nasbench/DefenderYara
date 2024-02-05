
rule TrojanProxy_Win32_Ditsolay_B{
	meta:
		description = "TrojanProxy:Win32/Ditsolay.B,SIGNATURE_TYPE_PEHSTR_EXT,45 01 45 01 0f 00 00 64 00 "
		
	strings :
		$a_01_0 = {44 32 31 45 42 46 36 30 45 31 36 39 38 39 43 41 30 34 35 36 45 31 37 32 45 44 32 31 44 36 37 45 44 42 30 31 33 36 41 30 43 37 30 32 32 42 44 30 30 30 35 41 38 37 43 46 31 35 32 31 42 33 35 35 38 36 42 } //64 00 
		$a_01_1 = {33 44 41 38 32 41 44 36 37 45 43 35 36 34 45 37 37 39 45 33 37 33 45 35 37 31 41 32 35 34 46 33 35 35 46 38 32 45 42 38 33 45 39 38 34 30 45 44 36 35 46 44 35 42 46 42 36 31 45 44 36 45 39 33 34 37 46 } //64 00 
		$a_01_2 = {36 39 38 34 43 31 36 45 44 37 37 46 41 33 32 37 42 38 32 33 33 32 41 32 33 45 46 31 32 37 41 45 32 38 43 44 30 31 36 46 46 31 36 45 39 39 42 39 31 44 41 37 32 33 34 41 42 34 36 39 45 32 31 37 33 44 45 } //19 00 
		$a_01_3 = {43 35 33 31 39 32 34 37 38 30 44 35 37 41 44 46 37 44 44 41 30 42 34 37 41 33 34 34 45 30 } //19 00 
		$a_01_4 = {35 38 41 31 33 34 45 43 37 42 44 39 37 45 44 32 30 33 36 31 38 30 44 42 } //19 00 
		$a_01_5 = {44 30 32 41 41 44 36 34 45 36 31 41 43 41 30 38 35 41 46 35 31 46 34 44 41 37 42 32 } //19 00 
		$a_01_6 = {38 32 45 36 30 36 33 33 39 38 33 32 44 44 37 42 45 38 37 33 46 42 35 43 } //19 00 
		$a_01_7 = {45 31 30 36 36 31 39 36 32 34 42 44 36 39 45 34 37 32 46 38 37 44 44 46 } //19 00 
		$a_01_8 = {43 35 31 41 42 38 36 44 45 37 37 45 42 32 44 31 30 38 34 44 } //19 00 
		$a_01_9 = {33 32 39 38 43 46 30 32 34 43 38 42 42 45 31 42 37 44 44 42 30 43 34 32 38 32 42 41 41 45 31 37 41 36 35 34 46 41 } //19 00 
		$a_01_10 = {30 32 34 38 39 46 35 32 46 43 35 43 38 44 43 39 43 33 30 32 33 36 39 43 32 44 45 37 35 30 38 35 43 43 30 32 33 32 41 37 32 30 42 42 36 37 39 34 43 46 } //32 00 
		$a_01_11 = {31 37 42 34 31 41 33 39 39 45 43 44 37 44 44 45 37 30 45 30 34 42 35 34 46 41 32 31 44 33 37 46 } //32 00 
		$a_01_12 = {36 36 45 33 36 35 38 43 43 42 31 42 43 38 30 41 35 42 46 37 36 32 42 44 31 34 33 38 45 41 35 36 } //32 00 
		$a_01_13 = {36 38 45 35 36 42 39 36 33 43 41 42 35 46 45 30 37 32 45 45 35 35 34 45 38 34 41 38 35 42 45 36 } //32 00 
		$a_01_14 = {35 44 45 41 36 43 39 37 33 46 41 45 35 43 46 46 35 31 38 31 45 42 33 37 39 44 34 32 46 30 35 43 } //00 00 
		$a_00_15 = {5d 04 00 00 26 12 03 80 5c 21 00 00 27 12 03 80 00 00 01 00 25 00 0b 00 8c 21 46 65 62 69 70 6f 73 2e 47 00 00 01 40 05 82 5d 00 04 00 41 a3 00 00 05 } //00 01 
	condition:
		any of ($a_*)
 
}