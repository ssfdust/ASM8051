	org 0000h
main:	mov dptr, #2400h
	mov r7, #50h
	mov r1, dph
	movx a, @dptr
	mov dptr, #2500h
	mov r2, dph
loop:	movx @dptr, a
	inc dpl
	mov dph, r1
	movx a, @dptr
	mov dph, r2
	djnz r7, loop
	sjmp $
	end