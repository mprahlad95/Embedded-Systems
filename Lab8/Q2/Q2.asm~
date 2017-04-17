org 00h
sjmp main

org 000bh
 clr tr0
 clr p2.1
 mov th0,#0ffh
 mov tl0,#0b8h
 setb tr0
 reti


org 30h
main:
mov ie,#10000010b
mov tmod,#01h
mov th0,#0ffh
mov tl0,#91h
setb tr0

end

