	org 0000h
	ljmp main
	org 0030h
main:	mov A, 30h
	anl a, #0f0h
	mov b, #10
	mul ab
	mov 40h, a
	mov a, 30h
	anl a, #0fh
	add a, 40h
	mov 40h, a
	sjmp $
	end