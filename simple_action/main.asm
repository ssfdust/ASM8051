	org 0000h
	ljmp main
main:	mov r0, #40h
	mov dptr, #3000h
	mov a, 0h
loop:	mov a, @r0
	movx @dptr, a
	mov @r0 ,#00H
	inc r0
	inc dptr
	cjne r0, #60h,loop
	sjmp $
	end