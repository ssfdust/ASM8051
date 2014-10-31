	org 0000h
	ljmp main
main:	mov r1, #9fh	;r1作为计数器寄存器
	mov dptr, #2000h;首地址
loop:	movx a, @dptr
	clr c		;将C置0
	subb a, #65	;将A中的值与'A'的ASCII码作差
	jz found	;如果为零则跳转到found
	inc dptr
	djnz r1, loop	
found:	push dpl
	push dph
	mov dptr, #20A0h
	pop acc
	movx @dptr, a
	inc dptr	;地址为20A1
	pop acc
	movx @dptr, a
	sjmp $
	end