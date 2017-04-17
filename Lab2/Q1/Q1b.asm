;Store data in Bank 0. Write a program to transfer the data from Bank 0 to Bank 1 using
;indirect addressing mode.

mov r0,#4bh
mov r1,#61h
mov r2,#73h
mov r3,#68h
mov r4,#69h
mov r5,#73h
mov r6,#68h
mov r7,#47h

setb psw.4
mov r0,#00h
mov r1,#08h
repeat:
mov a,@R0
mov @R1,a
inc r0
inc r1
cjne r0,#08h, repeat

end
