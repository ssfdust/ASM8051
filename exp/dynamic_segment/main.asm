	LED_PORT	EQU	P0	;笔划输出,低有效
	SCN_PORT	EQU	P2	;段扫描输出,低有效（P2.4-P2.7）
	DSEG
	ORG	10H
DISP_BUF:DS	8	;显示缓冲区
SCN_INX:DS	1	;扫描指针
SCN_COD:DS	1	;扫描码
CNT:	DS	1	;中断计数,每2.5ms加1

	CSEG
	ORG   	00H
	LJMP  	MAIN	;主程序入口,转初始化程序
	ORG   	0BH	;定时中断0入口
	LJMP  	INTP0	;每2.5ms中断一次,用于刷新显示
	;-----------初------始-----化---------------------------------
	ORG   	30H
MAIN:	MOV	SP,#50H	;初始化堆栈指针
	CLR	RS0		;选用第0组通用寄存器
	CLR	RS1
	SETB P1.5

	CLR	A
	MOV	CNT,A
	MOV R1,#8
	MOV R0,#DISP_BUF
	LOOP1:	MOV @R0,A		;显示缓冲区清零
	INC R0
	DJNZ R1,LOOP1

	MOV	SCN_INX,A	;扫描指针置0
	MOV SCN_COD,#80H	;右边LED先点亮
	MOV	TMOD,#01H	;定时器0,方式1
	MOV   	TH0,#0f7H	;计数初值,每次2.5ms(11.0592MHz晶振)
	MOV   	TL0,#00H	;65536-(2.5ms/1.085us)=65536-2304=63232=0F700H
	SETB  	TR0		;启动定时器0
	SETB	EA	      	;中断总允许
	SETB	ET0		;允许定时器0中断
	SJMP	$		;主程序在此循环
	;-----------定时器0中断服务程序,间隔2.5ms--------------
INTP0:	PUSH	ACC
	PUSH	PSW
	MOV  	TH0,#0f7H	;置计数初值
	MOV   	TL0,#00H
	SETB	RS0		;选用第1组通用寄存器
	CLR	RS1

	MOV	A,SCN_COD	;取扫描段代码
	MOV	SCN_PORT,A
	MOV	A,SCN_COD
	RR A			;扫描段代码循环右移一位
	MOV	SCN_COD,A

	MOV	A,SCN_INX	;取扫描指针
	ANL	A,#07H		;清除高5位
	ADD	A,#DISP_BUF	;加显示缓冲区首地址
	MOV	R1,A
	MOV	A,@R1
	MOV	DPTR,#CODE_TAB	;DPTR指向笔划代码表
	ANL	A,#0FH
	MOVC A,@A+DPTR	;取笔划代码
	MOV LED_PORT,A	;笔划代码送LED口
	INC	SCN_INX	;扫描指针+1

	INC	CNT
	MOV	A,CNT
	CJNE A,#200,EN
	MOV	CNT,#0

	INC	DISP_BUF+7	;个位加一
	MOV	A,DISP_BUF+7
	CJNE A,#10,EN		;不进位转移
	MOV	DISP_BUF+7,#0	;进位则个位清零
	INC	DISP_BUF+6	;十位加一
	MOV	A,DISP_BUF+6
	CJNE A,#10,EN
	MOV	DISP_BUF+6,#0	;进位则十位清零
	INC	DISP_BUF+5	;百位加一
	MOV	A,DISP_BUF+5
	CJNE A,#10,EN
	MOV	DISP_BUF+5,#0	;进位则百位清零
	INC	DISP_BUF+4	;千位加一
	MOV	A,DISP_BUF+4
	CJNE A,#10,EN
	MOV	DISP_BUF+4,#0	;进位则千位清零
	INC	DISP_BUF+3	;万位加一
	MOV	A,DISP_BUF+3
	CJNE A,#10,EN
	MOV	DISP_BUF+3,#0	;进位则万位清零
	INC	DISP_BUF+2	;十万位加一
	MOV	A,DISP_BUF+2
	CJNE A,#10,EN
	MOV	DISP_BUF+2,#0	;进位则十万位清零
	INC	DISP_BUF+1	;百万位加一
	MOV	A,DISP_BUF+1
	CJNE A,#10,EN
	MOV	DISP_BUF+1,#0	;进位则百万位清零
	INC	DISP_BUF+0	;千万位加一
	MOV	A,DISP_BUF+0
	CJNE A,#10,EN
	MOV	DISP_BUF+0,#0	;进位则千万位清零

EN:	POP	PSW
	POP	ACC
	RETI
	;----------笔划代码表-------------------------
CODE_TAB:DB	48H,0EBH,52H,62H,0E1H,64H,44H,0EAH,40H,60H
	END

