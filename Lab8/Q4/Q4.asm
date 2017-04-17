org 00h
sjmp Main

org 0013h
inc r0
reti

org 000bh
cpl p0.0
reti

org 30h
Main:
mov r0, #00h
mov r7,#0ffh
mov ie, #10000110b
mov tcon, #00000100b
mov tmod, #02h
mov th0, #0A0h
mov tl0, #0A0h
setb it1
setb tr0
mov dptr, #mydata
up:
mov a, r0
anl a, #0fh
movc a, @a+dptr
mov p1, a
clr p2.0
setb p2.0
mov a, r0
anl a, #0f0h
swap a
movc a, @a+dptr
mov p1, a
clr p2.1
djnz r7, $
setb p2.1
sjmp up
mydata: db 03h, 9fh, 25h, 0dh, 99h, 49h, 41h, 1fh, 01h, 09h, 11h, 0c1h, 63h, 85h, 61h, 71h