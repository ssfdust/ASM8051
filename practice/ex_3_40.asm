	org 0000h
	ljmp main
	org 0100h
main:	mov sp, #60h
	mov tmod, #90h
	mov tl1, #00h
	mov th1, #00h
loop0:	jb	p3.3, loop0
	setb tr1
loop1:	jnb p3.3, loop1
loop2:	jb p3.3, loop2
	clr tr1
	mov a,th1
	swap a
	add a, tl0
	da a
	mov b, a
	anl a, #0fh
	mov 50h, a
	mov a, b
	anl a, #0f0h
	swap a
	mov 51h, a
	sjmp $
	end