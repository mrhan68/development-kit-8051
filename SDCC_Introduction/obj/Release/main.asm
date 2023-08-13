;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _keyscan
	.globl _strlen
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _key
	.globl _keypressed
	.globl _num_to_hex
	.globl _num
	.globl _LCD_GotoXY_PARM_2
	.globl _LCD_Send_Command
	.globl _Wait_For_LCD
	.globl _LCD_init
	.globl _LCD_Write_One_Char
	.globl _LCD_Write_String
	.globl _LCD_GotoXY
	.globl _Delay_ms
	.globl _Delay_us
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LCD_GotoXY_PARM_2:
	.ds 1
_num::
	.ds 2
_num_to_hex::
	.ds 17
_keypressed::
	.ds 2
_key::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:5: unsigned char num_to_hex[17]="0123456789ABCDEF";
	mov	_num_to_hex,#0x30
	mov	(_num_to_hex + 0x0001),#0x31
	mov	(_num_to_hex + 0x0002),#0x32
	mov	(_num_to_hex + 0x0003),#0x33
	mov	(_num_to_hex + 0x0004),#0x34
	mov	(_num_to_hex + 0x0005),#0x35
	mov	(_num_to_hex + 0x0006),#0x36
	mov	(_num_to_hex + 0x0007),#0x37
	mov	(_num_to_hex + 0x0008),#0x38
	mov	(_num_to_hex + 0x0009),#0x39
	mov	(_num_to_hex + 0x000a),#0x41
	mov	(_num_to_hex + 0x000b),#0x42
	mov	(_num_to_hex + 0x000c),#0x43
	mov	(_num_to_hex + 0x000d),#0x44
	mov	(_num_to_hex + 0x000e),#0x45
	mov	(_num_to_hex + 0x000f),#0x46
	mov	(_num_to_hex + 0x0010),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Send_Command'
;------------------------------------------------------------
;x                         Allocated to registers 
;------------------------------------------------------------
;	lcd1602.c:6: void LCD_Send_Command(unsigned char x)
;	-----------------------------------------
;	 function LCD_Send_Command
;	-----------------------------------------
_LCD_Send_Command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_P0,dpl
;	lcd1602.c:9: LCD_RS=0; //Chon thanh ghi lenh
;	assignBit
	clr	_P2_6
;	lcd1602.c:10: LCD_RW=0; //De ghi du lieu
;	assignBit
	clr	_P2_5
;	lcd1602.c:11: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	lcd1602.c:12: Delay_us(100);
	mov	dptr,#0x0064
	lcall	_Delay_us
;	lcd1602.c:13: LCD_EN=0;
;	assignBit
	clr	_P2_7
;	lcd1602.c:14: Wait_For_LCD(); //Doi cho LCD san sang
	lcall	_Wait_For_LCD
;	lcd1602.c:15: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	lcd1602.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Wait_For_LCD'
;------------------------------------------------------------
;	lcd1602.c:18: void Wait_For_LCD()
;	-----------------------------------------
;	 function Wait_For_LCD
;	-----------------------------------------
_Wait_For_LCD:
;	lcd1602.c:20: Delay_us(100);
	mov	dptr,#0x0064
;	lcd1602.c:21: }
	ljmp	_Delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
;	lcd1602.c:22: void LCD_init()
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
;	lcd1602.c:24: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
	mov	dpl,#0x38
	lcall	_LCD_Send_Command
;	lcd1602.c:25: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
	mov	dpl,#0x0e
	lcall	_LCD_Send_Command
;	lcd1602.c:26: LCD_Send_Command(0x01); //Xoa man hinh
	mov	dpl,#0x01
	lcall	_LCD_Send_Command
;	lcd1602.c:27: LCD_Send_Command(0x80); //Ve dau dong
	mov	dpl,#0x80
;	lcd1602.c:28: }
	ljmp	_LCD_Send_Command
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_One_Char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	lcd1602.c:31: void LCD_Write_One_Char(unsigned char c)
;	-----------------------------------------
;	 function LCD_Write_One_Char
;	-----------------------------------------
_LCD_Write_One_Char:
	mov	_P0,dpl
;	lcd1602.c:34: LCD_RS=1; //Chon thanh ghi du lieu
;	assignBit
	setb	_P2_6
;	lcd1602.c:35: LCD_RW=0;
;	assignBit
	clr	_P2_5
;	lcd1602.c:36: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	lcd1602.c:37: Delay_us(10);
	mov	dptr,#0x000a
	lcall	_Delay_us
;	lcd1602.c:38: LCD_EN=0;
;	assignBit
	clr	_P2_7
;	lcd1602.c:39: Wait_For_LCD();
	lcall	_Wait_For_LCD
;	lcd1602.c:40: LCD_EN=1;
;	assignBit
	setb	_P2_7
;	lcd1602.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_String'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;length                    Allocated to registers 
;------------------------------------------------------------
;	lcd1602.c:43: void LCD_Write_String(unsigned char *s)
;	-----------------------------------------
;	 function LCD_Write_String
;	-----------------------------------------
_LCD_Write_String:
;	lcd1602.c:46: length=strlen(s); //Lay do dai xau
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	push	ar7
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd1602.c:47: while(length!=0)
00101$:
	mov	a,r3
	jz	00104$
;	lcd1602.c:49: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_LCD_Write_One_Char
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd1602.c:50: s++; //Tang con tro
;	lcd1602.c:51: length--;
	dec	r3
	sjmp	00101$
00104$:
;	lcd1602.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_GotoXY'
;------------------------------------------------------------
;col                       Allocated with name '_LCD_GotoXY_PARM_2'
;row                       Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd1602.c:55: void LCD_GotoXY(char row, char col)
;	-----------------------------------------
;	 function LCD_GotoXY
;	-----------------------------------------
_LCD_GotoXY:
	mov	r7,dpl
;	lcd1602.c:58: if (row == 2)
	cjne	r7,#0x02,00102$
;	lcd1602.c:59: LCD_Send_Command(0xC0);      //cursor to fist col in row 2
	mov	dpl,#0xc0
	lcall	_LCD_Send_Command
	sjmp	00112$
00102$:
;	lcd1602.c:61: LCD_Send_Command(0x80);      //cursor to fist col in row 1 (default)
	mov	dpl,#0x80
	lcall	_LCD_Send_Command
;	lcd1602.c:62: for (i = 0; i < col; i++)
00112$:
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r7
	subb	a,_LCD_GotoXY_PARM_2
	jnc	00108$
;	lcd1602.c:63: LCD_Send_Command(0x14);      //cursor to fist col in row 1 (default)
	mov	dpl,#0x14
	push	ar7
	lcall	_LCD_Send_Command
	pop	ar7
;	lcd1602.c:62: for (i = 0; i < col; i++)
	inc	r7
	sjmp	00106$
00108$:
;	lcd1602.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_ms'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	lcd1602.c:66: void Delay_ms(int interval)
;	-----------------------------------------
;	 function Delay_ms
;	-----------------------------------------
_Delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	lcd1602.c:69: for(i=0;i<1000;i++)
	mov	r4,#0x00
	mov	r5,#0x00
;	lcd1602.c:71: for(j=0;j<interval;j++);
00111$:
	mov	r2,#0x00
	mov	r3,#0x00
00104$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00107$:
;	lcd1602.c:69: for(i=0;i<1000;i++)
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r5
00126$:
	clr	c
	mov	a,r4
	subb	a,#0xe8
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x83
	jc	00111$
;	lcd1602.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_us'
;------------------------------------------------------------
;interval                  Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	lcd1602.c:75: void Delay_us(int interval)
;	-----------------------------------------
;	 function Delay_us
;	-----------------------------------------
_Delay_us:
	mov	r6,dpl
	mov	r7,dph
;	lcd1602.c:78: for(j=0;j<interval;j++);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	lcd1602.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyscan'
;------------------------------------------------------------
;	main.c:8: void keyscan()
;	-----------------------------------------
;	 function keyscan
;	-----------------------------------------
_keyscan:
;	main.c:10: keypressed=0;
	clr	a
	mov	_keypressed,a
	mov	(_keypressed + 1),a
;	main.c:11: P1=0xfe;
;	main.c:12: if(P1!=0xfe){
	mov	a,#0xfe
	mov	_P1,a
	cjne	a,_P1,00279$
	sjmp	00112$
00279$:
;	main.c:13: Delay_us(1000);
	mov	dptr,#0x03e8
	lcall	_Delay_us
;	main.c:14: if(P1!=0xfe){
	mov	a,#0xfe
	cjne	a,_P1,00280$
	sjmp	00108$
00280$:
;	main.c:15: num=1;
	mov	_num,#0x01
	mov	(_num + 1),#0x00
;	main.c:16: key=P1&0xf0;
	mov	a,_P1
	anl	a,#0xf0
	mov	_key,a
;	main.c:17: switch(key){
	mov	a,#0x70
	cjne	a,_key,00281$
	sjmp	00101$
00281$:
	mov	a,#0xb0
	cjne	a,_key,00282$
	sjmp	00102$
00282$:
	mov	a,#0xd0
	cjne	a,_key,00283$
	sjmp	00103$
00283$:
	mov	a,#0xe0
;	main.c:18: case 0x70:
	cjne	a,_key,00108$
	sjmp	00104$
00101$:
;	main.c:19: num+=3;
	mov	_num,#0x04
	mov	(_num + 1),#0x00
;	main.c:20: break;
;	main.c:21: case 0xb0:
	sjmp	00108$
00102$:
;	main.c:22: num+=2;
	mov	_num,#0x03
	mov	(_num + 1),#0x00
;	main.c:23: break;
;	main.c:24: case 0xd0:
	sjmp	00108$
00103$:
;	main.c:25: num+=1;
	mov	_num,#0x02
	mov	(_num + 1),#0x00
;	main.c:26: break;
;	main.c:27: case 0xe0:
	sjmp	00108$
00104$:
;	main.c:28: num+=0;
	mov	_num,#0x01
	mov	(_num + 1),#0x00
;	main.c:33: while(P1!=0xfe);
00108$:
	mov	a,#0xfe
	cjne	a,_P1,00108$
;	main.c:34: keypressed = 1;
	mov	_keypressed,#0x01
	mov	(_keypressed + 1),#0x00
00112$:
;	main.c:36: P1=0xfd;
;	main.c:37: if(P1!=0xfd){
	mov	a,#0xfd
	mov	_P1,a
	cjne	a,_P1,00287$
	sjmp	00124$
00287$:
;	main.c:38: Delay_us(1000);
	mov	dptr,#0x03e8
	lcall	_Delay_us
;	main.c:39: if(P1!=0xfd){
	mov	a,#0xfd
	cjne	a,_P1,00288$
	sjmp	00120$
00288$:
;	main.c:40: num=5;
	mov	_num,#0x05
	mov	(_num + 1),#0x00
;	main.c:41: key=P1&0xf0;
	mov	a,_P1
	anl	a,#0xf0
	mov	_key,a
;	main.c:42: switch(key){
	mov	a,#0x70
	cjne	a,_key,00289$
	sjmp	00113$
00289$:
	mov	a,#0xb0
	cjne	a,_key,00290$
	sjmp	00114$
00290$:
	mov	a,#0xd0
	cjne	a,_key,00291$
	sjmp	00115$
00291$:
	mov	a,#0xe0
;	main.c:43: case 0x70:
	cjne	a,_key,00120$
	sjmp	00116$
00113$:
;	main.c:44: num+=3;
	mov	_num,#0x08
	mov	(_num + 1),#0x00
;	main.c:45: break;
;	main.c:46: case 0xb0:
	sjmp	00120$
00114$:
;	main.c:47: num+=2;
	mov	_num,#0x07
	mov	(_num + 1),#0x00
;	main.c:48: break;
;	main.c:49: case 0xd0:
	sjmp	00120$
00115$:
;	main.c:50: num+=1;
	mov	_num,#0x06
	mov	(_num + 1),#0x00
;	main.c:51: break;
;	main.c:52: case 0xe0:
	sjmp	00120$
00116$:
;	main.c:53: num+=0;
	mov	_num,#0x05
	mov	(_num + 1),#0x00
;	main.c:58: while(P1!=0xfe);
00120$:
	mov	a,#0xfe
	cjne	a,_P1,00120$
;	main.c:59: keypressed = 1;
	mov	_keypressed,#0x01
	mov	(_keypressed + 1),#0x00
00124$:
;	main.c:61: P1=0xfb;
;	main.c:62: if(P1!=0xfb){
	mov	a,#0xfb
	mov	_P1,a
	cjne	a,_P1,00295$
	sjmp	00136$
00295$:
;	main.c:63: Delay_us(1000);
	mov	dptr,#0x03e8
	lcall	_Delay_us
;	main.c:64: if(P1!=0xfb){
	mov	a,#0xfb
	cjne	a,_P1,00296$
	sjmp	00132$
00296$:
;	main.c:65: num=9;
	mov	_num,#0x09
	mov	(_num + 1),#0x00
;	main.c:66: key=P1&0xf0;
	mov	a,_P1
	anl	a,#0xf0
	mov	_key,a
;	main.c:67: switch(key){
	mov	a,#0x70
	cjne	a,_key,00297$
	sjmp	00125$
00297$:
	mov	a,#0xb0
	cjne	a,_key,00298$
	sjmp	00126$
00298$:
	mov	a,#0xd0
	cjne	a,_key,00299$
	sjmp	00127$
00299$:
	mov	a,#0xe0
;	main.c:68: case 0x70:
	cjne	a,_key,00132$
	sjmp	00128$
00125$:
;	main.c:69: num+=3;
	mov	_num,#0x0c
	mov	(_num + 1),#0x00
;	main.c:70: break;
;	main.c:71: case 0xb0:
	sjmp	00132$
00126$:
;	main.c:72: num+=2;
	mov	_num,#0x0b
	mov	(_num + 1),#0x00
;	main.c:73: break;
;	main.c:74: case 0xd0:
	sjmp	00132$
00127$:
;	main.c:75: num+=1;
	mov	_num,#0x0a
	mov	(_num + 1),#0x00
;	main.c:76: break;
;	main.c:77: case 0xe0:
	sjmp	00132$
00128$:
;	main.c:78: num+=0;
	mov	_num,#0x09
	mov	(_num + 1),#0x00
;	main.c:83: while(P1!=0xfe);
00132$:
	mov	a,#0xfe
	cjne	a,_P1,00132$
;	main.c:84: keypressed = 1;
	mov	_keypressed,#0x01
	mov	(_keypressed + 1),#0x00
00136$:
;	main.c:86: P1=0xf7;
;	main.c:87: if(P1!=0xf7){
	mov	a,#0xf7
	mov	_P1,a
	cjne	a,_P1,00303$
	ret
00303$:
;	main.c:88: Delay_us(1000);
	mov	dptr,#0x03e8
	lcall	_Delay_us
;	main.c:89: if(P1!=0xf7){
	mov	a,#0xf7
	cjne	a,_P1,00304$
	sjmp	00144$
00304$:
;	main.c:90: num=13;
	mov	_num,#0x0d
	mov	(_num + 1),#0x00
;	main.c:91: key=P1&0xf0;
	mov	a,_P1
	anl	a,#0xf0
	mov	_key,a
;	main.c:92: switch(key){
	mov	a,#0x70
	cjne	a,_key,00305$
	sjmp	00137$
00305$:
	mov	a,#0xb0
	cjne	a,_key,00306$
	sjmp	00138$
00306$:
	mov	a,#0xd0
	cjne	a,_key,00307$
	sjmp	00139$
00307$:
	mov	a,#0xe0
;	main.c:93: case 0x70:
	cjne	a,_key,00144$
	sjmp	00140$
00137$:
;	main.c:94: num+=3;
	mov	_num,#0x10
	mov	(_num + 1),#0x00
;	main.c:95: break;
;	main.c:96: case 0xb0:
	sjmp	00144$
00138$:
;	main.c:97: num+=2;
	mov	_num,#0x0f
	mov	(_num + 1),#0x00
;	main.c:98: break;
;	main.c:99: case 0xd0:
	sjmp	00144$
00139$:
;	main.c:100: num+=1;
	mov	_num,#0x0e
	mov	(_num + 1),#0x00
;	main.c:101: break;
;	main.c:102: case 0xe0:
	sjmp	00144$
00140$:
;	main.c:103: num+=0;
	mov	_num,#0x0d
	mov	(_num + 1),#0x00
;	main.c:108: while(P1!=0xfe);
00144$:
	mov	a,#0xfe
	cjne	a,_P1,00144$
;	main.c:109: keypressed = 1;
	mov	_keypressed,#0x01
	mov	(_keypressed + 1),#0x00
;	main.c:112: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:114: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:116: LCD_init();
	lcall	_LCD_init
;	main.c:117: while(1)
00104$:
;	main.c:119: keyscan();
	lcall	_keyscan
;	main.c:120: if (keypressed)
	mov	a,_keypressed
	orl	a,(_keypressed + 1)
	jz	00104$
;	main.c:122: keypressed = 0;
	clr	a
	mov	_keypressed,a
	mov	(_keypressed + 1),a
;	main.c:123: LCD_Write_One_Char(num_to_hex[num]);
	mov	a,_num
	add	a,#_num_to_hex
	mov	r1,a
	mov	dpl,@r1
	lcall	_LCD_Write_One_Char
;	main.c:126: }
	sjmp	00104$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
