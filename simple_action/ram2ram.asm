	org 0000h
main:	mov dptr, #2400h
	mov r7, #50h
	mov r1, dph
	mov r0, dpl
	movx a, @dptr
	mov dptr, #2500h
	mov r2, dph
	mov r3, dpl
loop:	movx @dptr, a
	inc r0
	inc r3
	mov dph, r1
	mov dpl, r0
	movx a, @dptr
	mov dph, r2
	mov dpl, r3
	djnz r7, loop
	sjmp $
	end