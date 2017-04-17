@CODE SEGMENT
ASSUME CS:@CODE
START:
        MOV AL, 01AH

        PUSHF           ;save flag register
        PUSH CX         ;save general purpose registers
        PUSH DX
        PUSH AX

        SUB AH,AH       ;Higher order byte not needed
                        ;so we don't have a divide overflow

        MOV DL,0AH      ;Unsigned divide by 10 -- Quot in AL, Rem in AH
        DIV DL

        MOV DL,AH       ;Save Remainder

        MOV AH,AL       ;Move quotient (multiple of 10)
        MOV CL,4        ;and shift into high nibble of al
        SHR AX,CL

        OR AL,DL        ;Set lower nibble of AL to remainder

        POP DX          ;Recover AH (Pulling its value into DX first)
        MOV AH,DH

        POP CX          ;Recover CX and DX
        POP DX

@CODE ENDS
END START


