
rule Trojan_Win32_Emotet_DD{
	meta:
		description = "Trojan:Win32/Emotet.DD,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 20 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 72 68 23 4a 57 52 65 6a 57 40 2e 70 64 62 } //01 00  wrh#JWRejW@.pdb
		$a_01_1 = {7a 5f 5f 36 66 65 43 4e 51 48 47 5f 79 63 2d 39 47 4a 35 78 39 55 5a 2e 70 64 62 } //01 00  z__6feCNQHG_yc-9GJ5x9UZ.pdb
		$a_01_2 = {65 65 72 68 65 72 48 45 52 40 23 2e 70 64 62 } //01 00  eerherHER@#.pdb
		$a_01_3 = {68 65 72 6b 6c 4c 45 47 48 4b 57 52 23 3b 33 6b 6c 2e 70 64 62 } //01 00  herklLEGHKWR#;3kl.pdb
		$a_01_4 = {57 56 31 47 62 6a 67 57 47 56 5a 39 7a 6e 5a 31 37 54 61 2e 70 64 62 } //01 00  WV1GbjgWGVZ9znZ17Ta.pdb
		$a_01_5 = {4e 77 6c 6f 39 30 53 63 6b 4b 43 47 4d 54 2e 70 64 62 } //01 00  Nwlo90SckKCGMT.pdb
		$a_01_6 = {4e 51 4a 59 56 2e 70 64 62 } //01 00  NQJYV.pdb
		$a_01_7 = {45 47 4a 4b 4c 4d 57 4c 3a 48 57 40 4c 48 40 33 48 45 52 2e 70 64 62 } //01 00  EGJKLMWL:HW@LH@3HER.pdb
		$a_01_8 = {68 48 65 72 57 4a 45 32 33 32 34 4a 6b 72 79 2e 70 64 62 } //01 00  hHerWJE2324Jkry.pdb
		$a_01_9 = {46 67 38 2f 37 7c 35 50 23 52 6c 64 2f 32 66 43 46 50 30 5a 39 6e 74 2e 70 64 62 } //01 00  Fg8/7|5P#Rld/2fCFP0Z9nt.pdb
		$a_01_10 = {50 55 76 55 48 6f 59 76 57 78 71 74 48 2e 70 64 62 } //01 00  PUvUHoYvWxqtH.pdb
		$a_01_11 = {45 6a 72 76 62 54 70 37 4c 61 5f 4e 57 34 4c 53 4f 70 53 32 2e 70 64 62 } //01 00  EjrvbTp7La_NW4LSOpS2.pdb
		$a_01_12 = {6a 72 74 6e 72 2e 70 64 62 } //01 00  jrtnr.pdb
		$a_01_13 = {68 65 72 47 52 77 65 68 57 45 48 57 52 23 40 48 52 48 57 52 2e 70 64 62 } //01 00  herGRwehWEHWR#@HRHWR.pdb
		$a_01_14 = {77 72 4a 52 45 48 52 42 56 57 33 2e 70 64 62 } //01 00  wrJREHRBVW3.pdb
		$a_01_15 = {46 65 4c 72 70 55 67 23 5a 50 76 2e 70 64 62 } //01 00  FeLrpUg#ZPv.pdb
		$a_01_16 = {38 51 54 6b 48 30 2d 4a 5f 5f 67 63 79 2e 70 64 62 } //01 00  8QTkH0-J__gcy.pdb
		$a_01_17 = {57 4a 65 72 6a 57 54 40 23 4a 65 62 77 76 2e 51 43 5c 48 77 5c 2e 70 64 62 } //01 00  WJerjWT@#Jebwv.QC\Hw\.pdb
		$a_01_18 = {56 51 39 59 45 4c 2e 70 64 62 } //01 00  VQ9YEL.pdb
		$a_01_19 = {36 67 72 65 68 67 71 65 48 4a 45 40 21 23 40 59 4a 77 72 2e 70 64 62 } //01 00  6grehgqeHJE@!#@YJwr.pdb
		$a_01_20 = {65 58 30 71 69 2e 70 64 62 } //01 00  eX0qi.pdb
		$a_01_21 = {66 51 4d 5f 46 2f 52 5a 35 4d 42 73 4a 2e 70 64 62 } //01 00  fQM_F/RZ5MBsJ.pdb
		$a_01_22 = {65 79 6f 35 6b 55 58 32 69 6a 2b 2e 70 64 62 } //01 00  eyo5kUX2ij+.pdb
		$a_01_23 = {61 5a 50 6e 41 74 37 75 5f 50 43 5f 43 48 63 57 30 71 35 4d 2a 50 2f 3d 48 52 4f 2e 70 64 62 } //01 00  aZPnAt7u_PC_CHcW0q5M*P/=HRO.pdb
		$a_01_24 = {4a 32 58 65 66 37 55 62 38 2e 61 4e 63 4d 2e 70 64 62 } //01 00  J2Xef7Ub8.aNcM.pdb
		$a_01_25 = {4d 49 77 6d 54 51 70 46 78 48 73 2e 70 64 62 } //01 00  MIwmTQpFxHs.pdb
		$a_01_26 = {56 36 31 33 30 2d 6f 76 38 6f 54 64 6e 2e 70 64 62 } //01 00  V6130-ov8oTdn.pdb
		$a_01_27 = {4d 59 56 6a 5a 74 72 5f 4f 53 4f 4e 73 2d 58 58 54 4d 74 67 2e 70 64 62 } //01 00  MYVjZtr_OSONs-XXTMtg.pdb
		$a_01_28 = {6d 37 6d 61 58 48 73 67 38 34 38 39 33 32 2e 70 64 62 } //01 00  m7maXHsg848932.pdb
		$a_01_29 = {42 57 52 4a 45 52 48 45 52 4a 40 21 23 6a 65 6a 65 2e 70 64 62 } //01 00  BWRJERHERJ@!#jeje.pdb
		$a_01_30 = {54 2a 55 6f 4e 50 64 48 51 6a 2e 6e 5f 45 4f 2e 70 64 62 } //01 00  T*UoNPdHQj.n_EO.pdb
		$a_01_31 = {68 65 72 32 24 6a 65 2e 50 64 62 } //00 00  her2$je.Pdb
	condition:
		any of ($a_*)
 
}