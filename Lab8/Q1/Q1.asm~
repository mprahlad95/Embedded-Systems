;f=200us
org 00h
sjmp main

org 000bh
cpl p2.1
reti

org 50h
main:
mov ie,#10000010b
mov tmod,#02h
mov th0,#0a4h
mov tl0,#0a4h
setb tr0
sjmp $