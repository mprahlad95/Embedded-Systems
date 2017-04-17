;Store data in Bank 0. Write a program to transfer the data from Bank 0 to Bank 1 using
;direct addressing mode usingt push and pop

mov r0,#4bh
mov r1,#61h
mov r2,#73h
mov r3,#68h
mov r4,#69h
mov r5,#73h
mov r6,#68h
mov r7,#47h

mov a,00
repeat:
push a
inc a
cjne a,08,repeat


end 