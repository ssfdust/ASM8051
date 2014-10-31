	org 0000h
	ljmp main
	org 0100h
main:	mov p1, #0dfh
	mov p2, #03h

	mov r1, #00h
loop:	mov a, r1
	mov dptr, #tab
	movc a, @a+dptr
	mov p0, a
	lcall delay
	inc r1
	mov a, r1
	inc p2
	cjne a, #10, loop
	clr a
	mov r1, a
	sjmp loop

delay:	mov r7, #198
del1:	mov r6, #50
del2:	mov r5, #23
	djnz r5, $
	djnz r6, del2
	djnz r7, del1
	ret
tab:	db 48h, 0ebh, 52h, 62h, 0e1h, 64h, 44h, 0eah, 40h, 60h
	end