;Store data in Bank 0. Write a program to transfer the data from Bank 0 to Bank 1 using
;indirect addressing mode using push and pop instructions

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
repeat:
mov a,@r0
push a
inc r0
cjne r0,#08h, repeat

end
