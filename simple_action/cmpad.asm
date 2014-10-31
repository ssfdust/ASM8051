	org 0000h
	mov dptr, #2000h
	mov r7, #0
	ljmp main
COMP:	inc r1
	ljmp next
POST:	inc r0
	ljmp next
main:	movx a, @dptr
	jz COMP
	jnb a.7, post
	inc r2
next:	inc dptr
	inc r7
	cjne r7, #100, main
	sjmp $
	end