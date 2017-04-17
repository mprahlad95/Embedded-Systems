mov tmod,#10h
ld:
mov tl1,#06h
mov th1,#0ffh
setb tr1
here:	jnb tf1, here
	cpl p0.3
	clr tf1
	jmp ld

	end