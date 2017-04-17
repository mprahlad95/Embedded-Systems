;Example program to interface keyboard
;This Program sends the ASCII Code for the pressed key to P0
;P1.0 - P1.3 connected to rows
;P2.0 - P2.3 connected to columns

ORG 00H
	MOV P2, #0FFH	;P2 BECOMES INPUT PORT
	
K1:	MOV P1, #0	;GROUND ALL ROWS AT ONCE
	MOV A,P2		;READ ALL COLS, ENSURE ALL KEYS ARE OPEN
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,K1	;CHECK TILL ALL KEYS RELEASED

K2:	ACALL DELAY	;CALL 20ms DELAY
	MOV A,P2		;SEE IF ANY KEY IS PRESSED
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,OVER	;KEY PRESSED, AWAIT CLOSURE
	SJMP K2		;CHECK IF KEY PRESSED

OVER:	ACALL DELAY	;WAIT 20ms DEBOUNCE TIME
	MOV A,P2		;CHECK KEY CLOSURE
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,OVER1;KEY PRESSED, FIND ROW NOW
	SJMP K2		;IF NONE, KEEP POLLING

OVER1:	MOV P1,#11111110B;GROUND ROW 0
	MOV A,P2		;READ ALL COLUMNS
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,ROW_0;KEY ROW 0, FIND THE COLUMN
	
	MOV P1,#11111101B;GROUND ROW 1
	MOV A,P2		;READ ALL COLUMNS
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,ROW_1;KEY ROW 0, FIND THE COLUMN
	
	MOV P1,#11111011B;GROUND ROW 2
	MOV A,P2		;READ ALL COLUMNS
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,ROW_2;KEY ROW 0, FIND THE COLUMN
	
	MOV P1,#11110111B;GROUND ROW 3
	MOV A,P2		;READ ALL COLUMNS
	ANL A,#0FH	;MASK UNUSED BITS
	CJNE A,#0FH,ROW_3;KEY ROW 0, FIND THE COLUMN

	LJMP K2		;IF NONE, FALSE INPUT, REPEAT

ROW_0:	MOV DPTR,#KCODE0	;SET DPTR = START OF ROW 0
	SJMP FIND	;FIND COLUMN THE KEY BELONGS TO
ROW_1:	MOV DPTR,#KCODE1
	SJMP FIND
ROW_2:	MOV DPTR,#KCODE2
	SJMP FIND
ROW_3:	MOV DPTR,#KCODE3
FIND:	RRC A
	JNC MATCH
	INC DPTR
	SJMP FIND

MATCH:	CLR A
	MOVC A,@A+DPTR	
	MOV P0,A
	LJMP K1@R0

DELAY:	MOV R6,#20D
LABEL:	DJNZ R7,LABEL
        RET

;ASCII LOOK-UP TABLE FOR EACH ROW

	ORG 300H
KCODE0:	DB	'0','1','2','3'	;ROW0
KCODE1:	DB	'4','5','6','7'	;ROW1
KCODE2:	DB	'8','9','A','B'	;ROW2
KCODE3:	DB	'C','D','E','F'	;ROW3

MYDATA:	DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH,77H,7CH,39H,5EH,79H,71H

	END