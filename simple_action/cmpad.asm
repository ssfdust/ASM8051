	org 0000h
	mov dptr, #2000h
	mov r7, #0
	mov r0, #0	;r0保存正数的个数，置0
	mov r1, #0	;r1保存零的个数， 置0
	mov r2, #0	;r2保存负数的个数， 置0
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