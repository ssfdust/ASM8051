	org 0000h
	ljmp main
	org 000bh
	mov a, p1
	cjne a,#00,time0
	ljmp time1
main:	mov p1, #00000100b
	mov tmod, #01
	mov th0, #0ffh	;50us
	mov tl0, #0ceh
	mov th1, #0feh	;350us
	mov tl1, #0a2h
	setb ea
	setb et0
	setb tr0
	sjmp $
time0:	cpl p1.2
	mov th0, #0feh
	mov tl0, #0a2h
	reti
time1:	cpl p1.2
	mov th0, #0ffh
	mov tl0, #0ceh
	reti