;Write a program to exchange the content of Bank 0 with Bank 1 using Push, Pop and Indirect Addressing Mode

setb psw.2

mov r0,#4bh
mov r1,#61h
mov r2,#73h
mov r3,#68h
mov r4,#69h
mov r5,#73h
mov r6,#68h
mov r7,#47h

setb psw.3

mov r0,#11h
mov r1,#12h
mov r2,#13h
mov r3,#14h
mov r4,#15h
mov r5,#16h
mov r6,#17h
mov r7,#18h

setb psw.4
mov r0,#00h
mov r1,#08h
mov sp,#0fh

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 00h	;??
	pop 08h	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 01h	;??
	pop 09h	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 02h	;??
	pop 0ah	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 03h	;??
	pop 0bh	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 04h	;??
	pop 0ch	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 05h	;??
	pop 0dh	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 06h	;??
	pop 0eh	;??
	inc r0
	inc r1

	mov a,@R0
	mov b,@R1
	push a
	push b
	pop 07h	;??
	pop 0fh	;??
	inc r0
	inc r1

end 