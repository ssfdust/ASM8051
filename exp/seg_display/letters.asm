	org 0000h
	ljmp main
	org 0100h
main:	mov p1, #0dfh
	mov p2, #80h
	mov r1, #00h
loop:	mov a, r1
	mov dptr, #letters
	movc a, @a+dptr
	mov p0, a
	lcall delay1
	inc r1
	mov a, p2
	rr a
	mov p2, a
	mov a, r1
	cjne a, #8h, loop
all:	mov p1, #0dfh
	mov p2, #80h
	mov r1, #00h
loop1:	mov a, r1
	mov dptr, #letters
	movc a, @a+dptr
	mov p0, a
	lcall delay
	inc r1
	mov a, p2
	rr a
	mov p2, a
	mov a, r1
	cjne a, #8h, loop1
	clr a
	mov r1, a
	sjmp loop1

delay:	mov r7, #9
del1:	mov r6, #5
del2:	mov r5, #2
	djnz r5, $
	djnz r6, del2
	djnz r7, del1
	ret
	
delay1:	mov r7, #198
del3:	mov r6, #50
del4:	mov r5, #23
	djnz r5, $
	djnz r6, del4
	djnz r7, del3
	ret
letters:db 48h, 48h, 48h, 48h, 48h, 0ebh, 62h, 52h
	end