	org 0000h
	ljmp main
	org 000bh
	ljmp en
main:	mov a, p1
	cpl a
	mov p1, a
	mov tmod, #01	;设为1ms延时
	mov th0, #0fch
	mov tl0, #18h
	setb ea		;设置中断
	setb et0
	setb tr0
	sjmp $

en:	cpl p1.0	;将p1取反
	mov th0, #0fch
	mov tl0, #18h
	reti
