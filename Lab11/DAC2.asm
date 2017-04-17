;To create a Sine Wave on DAC Output
ORG 300H
LJMP AGAIN
TABLE: 	DB 128,139,150,161
		DB 172,182,192,201
		DB 210,219,226,233
		DB 239,244,248,252
		DB 254,255,256,255
		DB 254,252,248,244
		DB 239,233,226,219
		DB 210,201,192,182
		DB 172,161,150,139,128
		DB 117,106,95,84,74,64,55
		DB 46,37,30,23,17,12,8,4,2
		DB 1,0,1,2,4,8,12,17,23,30
		DB 37,46,55,64,74,84,95,106,117
ORG 00H
		CLR P0.7
AGAIN:	MOV DPTR,#TABLE
		MOV R2,#72
BACK:	CLR A
		MOVC A,@A+DPTR
		MOV P1,A
		INC DPTR
		DJNZ R2,BACK
		SJMP AGAIN
		