	ORG 0000H
	LJMP MAIN
	ORG 0100H
DELAY:	MOV R7, #198
DEL1:	MOV R6, #50
DEL2:	MOV R5,	#23
	DJNZ R6, DEL2
	DJNZ R7, DEL1
	RET
MAIN:	setb P1.5
	MOV A, #0E7H
	mov r1, #0001b
	mov r2, #1000b
	;LCALL DELAY
LOP:	MOV P0, A
	mov a, r1
	rl a
	mov r1, a
	mov a, r2
	rr a
	mov r2, a
	mov a, r1
	swap a
	add a, r2
	cpl a
	SJMP LOP
	END
