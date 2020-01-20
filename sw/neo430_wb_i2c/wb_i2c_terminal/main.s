
main.elf:     file format elf32-msp430


Disassembly of section .text:

00000000 <__crt0_begin>:
   0:	38 40 00 c0 	mov	#49152,	r8	;#0xc000
   4:	11 42 fa ff 	mov	&0xfffa,r1	;0xfffa
   8:	02 43       	clr	r2		;
   a:	01 58       	add	r8,	r1	;
   c:	21 83       	decd	r1		;
   e:	b2 40 00 47 	mov	#18176,	&0xffb8	;#0x4700
  12:	b8 ff 
  14:	39 40 80 ff 	mov	#65408,	r9	;#0xff80

00000018 <__crt0_clr_io>:
  18:	09 93       	cmp	#0,	r9	;r3 As==00
  1a:	04 24       	jz	$+10     	;abs 0x24
  1c:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00
  20:	29 53       	incd	r9		;
  22:	fa 3f       	jmp	$-10     	;abs 0x18

00000024 <__crt0_clr_dmem>:
  24:	01 98       	cmp	r8,	r1	;
  26:	04 24       	jz	$+10     	;abs 0x30
  28:	88 43 00 00 	mov	#0,	0(r8)	;r3 As==00
  2c:	28 53       	incd	r8		;
  2e:	fa 3f       	jmp	$-10     	;abs 0x24

00000030 <__crt0_clr_dmem_end>:
  30:	35 40 c6 0f 	mov	#4038,	r5	;#0x0fc6
  34:	36 40 c6 0f 	mov	#4038,	r6	;#0x0fc6
  38:	37 40 08 c0 	mov	#49160,	r7	;#0xc008

0000003c <__crt0_cpy_data>:
  3c:	06 95       	cmp	r5,	r6	;
  3e:	04 24       	jz	$+10     	;abs 0x48
  40:	b7 45 00 00 	mov	@r5+,	0(r7)	;
  44:	27 53       	incd	r7		;
  46:	fa 3f       	jmp	$-10     	;abs 0x3c

00000048 <__crt0_cpy_data_end>:
  48:	32 40 00 40 	mov	#16384,	r2	;#0x4000
  4c:	04 43       	clr	r4		;
  4e:	0a 43       	clr	r10		;
  50:	0b 43       	clr	r11		;
  52:	0c 43       	clr	r12		;
  54:	0d 43       	clr	r13		;
  56:	0e 43       	clr	r14		;
  58:	0f 43       	clr	r15		;

0000005a <__crt0_start_main>:
  5a:	b0 12 6c 00 	call	#108		;#0x006c

0000005e <__crt0_this_is_the_end>:
  5e:	02 43       	clr	r2		;
  60:	b2 40 00 47 	mov	#18176,	&0xffb8	;#0x4700
  64:	b8 ff 
  66:	32 40 10 00 	mov	#16,	r2	;#0x0010
  6a:	03 43       	nop			

0000006c <main>:
  6c:	0a 12       	push	r10		;
  6e:	09 12       	push	r9		;
  70:	08 12       	push	r8		;
  72:	07 12       	push	r7		;
  74:	06 12       	push	r6		;
  76:	05 12       	push	r5		;
  78:	04 12       	push	r4		;
  7a:	3c 40 00 4b 	mov	#19200,	r12	;#0x4b00
  7e:	4d 43       	clr.b	r13		;
  80:	b0 12 82 02 	call	#642		;#0x0282
  84:	39 40 3a 03 	mov	#826,	r9	;#0x033a
  88:	3c 40 fc 0a 	mov	#2812,	r12	;#0x0afc
  8c:	89 12       	call	r9		;
  8e:	0a 49       	mov	r9,	r10	;
  90:	a2 b3 f2 ff 	bit	#2,	&0xfff2	;r3 As==10
  94:	a2 24       	jz	$+326    	;abs 0x1da
  96:	b0 12 da 04 	call	#1242		;#0x04da
  9a:	35 40 9b 0b 	mov	#2971,	r5	;#0x0b9b
  9e:	36 40 6a 03 	mov	#874,	r6	;#0x036a
  a2:	38 40 08 c0 	mov	#49160,	r8	;#0xc008

000000a6 <.L3>:
  a6:	57 43       	mov.b	#1,	r7	;r3 As==01

000000a8 <.L4>:
  a8:	0c 45       	mov	r5,	r12	;
  aa:	8a 12       	call	r10		;
  ac:	0e 47       	mov	r7,	r14	;
  ae:	7d 40 10 00 	mov.b	#16,	r13	;#0x0010
  b2:	0c 48       	mov	r8,	r12	;
  b4:	86 12       	call	r6		;
  b6:	09 4c       	mov	r12,	r9	;
  b8:	3c 40 af 0b 	mov	#2991,	r12	;#0x0baf
  bc:	8a 12       	call	r10		;
  be:	09 93       	cmp	#0,	r9	;r3 As==00
  c0:	f3 27       	jz	$-24     	;abs 0xa8
  c2:	37 40 cc 0a 	mov	#2764,	r7	;#0x0acc
  c6:	3d 40 b1 0b 	mov	#2993,	r13	;#0x0bb1
  ca:	0c 48       	mov	r8,	r12	;
  cc:	87 12       	call	r7		;
  ce:	04 4c       	mov	r12,	r4	;
  d0:	3d 40 b6 0b 	mov	#2998,	r13	;#0x0bb6
  d4:	0c 48       	mov	r8,	r12	;
  d6:	87 12       	call	r7		;
  d8:	0c 93       	cmp	#0,	r12	;r3 As==00
  da:	2a 24       	jz	$+86     	;abs 0x130
  dc:	59 43       	mov.b	#1,	r9	;r3 As==01
  de:	04 93       	cmp	#0,	r4	;r3 As==00
  e0:	01 24       	jz	$+4      	;abs 0xe4
  e2:	49 43       	clr.b	r9		;

000000e4 <.L5>:
  e4:	3d 40 bd 0b 	mov	#3005,	r13	;#0x0bbd
  e8:	0c 48       	mov	r8,	r12	;
  ea:	87 12       	call	r7		;
  ec:	0c 93       	cmp	#0,	r12	;r3 As==00
  ee:	02 20       	jnz	$+6      	;abs 0xf4
  f0:	79 40 03 00 	mov.b	#3,	r9	;

000000f4 <.L7>:
  f4:	3d 40 c0 0b 	mov	#3008,	r13	;#0x0bc0
  f8:	0c 48       	mov	r8,	r12	;
  fa:	87 12       	call	r7		;
  fc:	0c 93       	cmp	#0,	r12	;r3 As==00
  fe:	01 20       	jnz	$+4      	;abs 0x102
 100:	69 42       	mov.b	#4,	r9	;r2 As==10

00000102 <.L8>:
 102:	3d 40 c6 0b 	mov	#3014,	r13	;#0x0bc6
 106:	0c 48       	mov	r8,	r12	;
 108:	87 12       	call	r7		;
 10a:	0c 93       	cmp	#0,	r12	;r3 As==00
 10c:	02 20       	jnz	$+6      	;abs 0x112
 10e:	79 40 05 00 	mov.b	#5,	r9	;

00000112 <.L9>:
 112:	3d 40 cb 0b 	mov	#3019,	r13	;#0x0bcb
 116:	0c 48       	mov	r8,	r12	;
 118:	87 12       	call	r7		;
 11a:	0c 93       	cmp	#0,	r12	;r3 As==00
 11c:	0c 20       	jnz	$+26     	;abs 0x136
 11e:	3d 40 a0 ff 	mov	#65440,	r13	;#0xffa0

00000122 <.L10>:
 122:	2c 4d       	mov	@r13,	r12	;
 124:	0c 93       	cmp	#0,	r12	;r3 As==00
 126:	fd 3b       	jl	$-4      	;abs 0x122
 128:	b0 12 4e 04 	call	#1102		;#0x044e
 12c:	30 40 a6 00 	br	#0x00a6		;

00000130 <.L19>:
 130:	69 43       	mov.b	#2,	r9	;r3 As==10
 132:	30 40 e4 00 	br	#0x00e4		;

00000136 <.L28>:
 136:	39 90 03 00 	cmp	#3,	r9	;
 13a:	3d 24       	jz	$+124    	;abs 0x1b6
 13c:	7c 40 03 00 	mov.b	#3,	r12	;
 140:	0c 99       	cmp	r9,	r12	;
 142:	08 28       	jnc	$+18     	;abs 0x154
 144:	19 93       	cmp	#1,	r9	;r3 As==01
 146:	2e 24       	jz	$+94     	;abs 0x1a4
 148:	29 93       	cmp	#2,	r9	;r3 As==10
 14a:	31 24       	jz	$+100    	;abs 0x1ae

0000014c <.L11>:
 14c:	3c 40 05 0d 	mov	#3333,	r12	;#0x0d05
 150:	30 40 a8 01 	br	#0x01a8		;

00000154 <.L13>:
 154:	29 92       	cmp	#4,	r9	;r2 As==10
 156:	3d 24       	jz	$+124    	;abs 0x1d2
 158:	39 90 05 00 	cmp	#5,	r9	;
 15c:	f7 23       	jnz	$-16     	;abs 0x14c
 15e:	b0 12 ec 07 	call	#2028		;#0x07ec
 162:	09 4c       	mov	r12,	r9	;
 164:	3c 40 d8 0c 	mov	#3288,	r12	;#0x0cd8
 168:	8a 12       	call	r10		;
 16a:	0c 49       	mov	r9,	r12	;
 16c:	4d 43       	clr.b	r13		;
 16e:	b0 12 32 04 	call	#1074		;#0x0432
 172:	3c 40 af 0b 	mov	#2991,	r12	;#0x0baf
 176:	8a 12       	call	r10		;
 178:	3c 40 ec 0c 	mov	#3308,	r12	;#0x0cec
 17c:	8a 12       	call	r10		;
 17e:	0c 49       	mov	r9,	r12	;
 180:	b0 12 34 0a 	call	#2612		;#0x0a34
 184:	37 40 6a 09 	mov	#2410,	r7	;#0x096a
 188:	0d 48       	mov	r8,	r13	;
 18a:	87 12       	call	r7		;
 18c:	0c 48       	mov	r8,	r12	;
 18e:	8a 12       	call	r10		;
 190:	3c 40 03 0d 	mov	#3331,	r12	;#0x0d03
 194:	8a 12       	call	r10		;
 196:	0d 48       	mov	r8,	r13	;
 198:	4c 49       	mov.b	r9,	r12	;
 19a:	87 12       	call	r7		;
 19c:	0c 48       	mov	r8,	r12	;
 19e:	8a 12       	call	r10		;
 1a0:	30 40 ca 01 	br	#0x01ca		;

000001a4 <.L14>:
 1a4:	3c 40 d1 0b 	mov	#3025,	r12	;#0x0bd1

000001a8 <.L30>:
 1a8:	8a 12       	call	r10		;
 1aa:	30 40 a6 00 	br	#0x00a6		;

000001ae <.L15>:
 1ae:	b0 12 c6 06 	call	#1734		;#0x06c6
 1b2:	30 40 a6 00 	br	#0x00a6		;

000001b6 <.L12>:
 1b6:	b0 12 bc 07 	call	#1980		;#0x07bc
 1ba:	09 4c       	mov	r12,	r9	;
 1bc:	3c 40 be 0c 	mov	#3262,	r12	;#0x0cbe
 1c0:	8a 12       	call	r10		;
 1c2:	0c 49       	mov	r9,	r12	;
 1c4:	4d 43       	clr.b	r13		;
 1c6:	b0 12 32 04 	call	#1074		;#0x0432

000001ca <.L31>:
 1ca:	3c 40 af 0b 	mov	#2991,	r12	;#0x0baf
 1ce:	30 40 a8 01 	br	#0x01a8		;

000001d2 <.L16>:
 1d2:	b0 12 fa 08 	call	#2298		;#0x08fa
 1d6:	30 40 a6 00 	br	#0x00a6		;

000001da <.L29>:
 1da:	3c 40 73 0b 	mov	#2931,	r12	;#0x0b73
 1de:	89 12       	call	r9		;
 1e0:	5c 43       	mov.b	#1,	r12	;r3 As==01
 1e2:	30 40 94 09 	br	#0x0994		;

000001e6 <neo430_wishbone32_read8>:
 1e6:	09 12       	push	r9		;
 1e8:	08 12       	push	r8		;
 1ea:	08 4c       	mov	r12,	r8	;
 1ec:	09 4d       	mov	r13,	r9	;
 1ee:	5c 43       	mov.b	#1,	r12	;r3 As==01
 1f0:	0d 48       	mov	r8,	r13	;
 1f2:	7d f0 03 00 	and.b	#3,	r13	;
 1f6:	b0 12 c8 09 	call	#2504		;#0x09c8
 1fa:	3d 40 90 ff 	mov	#65424,	r13	;#0xff90
 1fe:	8d 4c 00 00 	mov	r12,	0(r13)	;
 202:	82 48 92 ff 	mov	r8,	&0xff92	;
 206:	82 49 94 ff 	mov	r9,	&0xff94	;

0000020a <.L23>:
 20a:	2c 4d       	mov	@r13,	r12	;
 20c:	0c 93       	cmp	#0,	r12	;r3 As==00
 20e:	fd 3b       	jl	$-4      	;abs 0x20a
 210:	0c 48       	mov	r8,	r12	;
 212:	6c f3       	and.b	#2,	r12	;r3 As==10
 214:	0c 93       	cmp	#0,	r12	;r3 As==00
 216:	0a 24       	jz	$+22     	;abs 0x22c
 218:	1c 42 9c ff 	mov	&0xff9c,r12	;0xff9c

0000021c <.L26>:
 21c:	58 f3       	and.b	#1,	r8	;r3 As==01
 21e:	08 93       	cmp	#0,	r8	;r3 As==00
 220:	02 24       	jz	$+6      	;abs 0x226
 222:	b0 12 52 04 	call	#1106		;#0x0452

00000226 <.L27>:
 226:	38 41       	pop	r8		;
 228:	39 41       	pop	r9		;
 22a:	30 41       	ret			

0000022c <.L24>:
 22c:	1c 42 9a ff 	mov	&0xff9a,r12	;0xff9a
 230:	30 40 1c 02 	br	#0x021c		;

00000234 <neo430_wishbone32_write8>:
 234:	0a 12       	push	r10		;
 236:	09 12       	push	r9		;
 238:	08 12       	push	r8		;
 23a:	08 4c       	mov	r12,	r8	;
 23c:	09 4d       	mov	r13,	r9	;
 23e:	4a 4e       	mov.b	r14,	r10	;
 240:	5c 43       	mov.b	#1,	r12	;r3 As==01
 242:	0d 48       	mov	r8,	r13	;
 244:	7d f0 03 00 	and.b	#3,	r13	;
 248:	b0 12 c8 09 	call	#2504		;#0x09c8
 24c:	3d 40 90 ff 	mov	#65424,	r13	;#0xff90
 250:	8d 4c 00 00 	mov	r12,	0(r13)	;
 254:	0c 4a       	mov	r10,	r12	;
 256:	0c 5a       	add	r10,	r12	;
 258:	0c 5c       	rla	r12		;
 25a:	0c 5c       	rla	r12		;
 25c:	0c 5c       	rla	r12		;
 25e:	0c 5c       	rla	r12		;
 260:	0c 5c       	rla	r12		;
 262:	0c 5c       	rla	r12		;
 264:	0c 5c       	rla	r12		;
 266:	0c da       	bis	r10,	r12	;
 268:	82 4c 9a ff 	mov	r12,	&0xff9a	;
 26c:	82 4c 9c ff 	mov	r12,	&0xff9c	;
 270:	82 48 96 ff 	mov	r8,	&0xff96	;
 274:	82 49 98 ff 	mov	r9,	&0xff98	;

00000278 <.L34>:
 278:	2c 4d       	mov	@r13,	r12	;
 27a:	0c 93       	cmp	#0,	r12	;r3 As==00
 27c:	fd 3b       	jl	$-4      	;abs 0x278
 27e:	30 40 9c 09 	br	#0x099c		;

00000282 <neo430_uart_setup>:
 282:	0a 12       	push	r10		;
 284:	09 12       	push	r9		;
 286:	1a 42 fc ff 	mov	&0xfffc,r10	;0xfffc
 28a:	1b 42 fe ff 	mov	&0xfffe,r11	;0xfffe
 28e:	0e 4c       	mov	r12,	r14	;
 290:	0e 5c       	add	r12,	r14	;
 292:	0f 4d       	mov	r13,	r15	;
 294:	0f 6d       	addc	r13,	r15	;
 296:	4c 43       	clr.b	r12		;
 298:	09 4f       	mov	r15,	r9	;

0000029a <.L2>:
 29a:	0b 9f       	cmp	r15,	r11	;
 29c:	04 28       	jnc	$+10     	;abs 0x2a6
 29e:	09 9b       	cmp	r11,	r9	;
 2a0:	19 20       	jnz	$+52     	;abs 0x2d4
 2a2:	0a 9e       	cmp	r14,	r10	;
 2a4:	17 2c       	jc	$+48     	;abs 0x2d4

000002a6 <.L10>:
 2a6:	4a 43       	clr.b	r10		;

000002a8 <.L5>:
 2a8:	7d 40 ff 00 	mov.b	#255,	r13	;#0x00ff
 2ac:	0d 9c       	cmp	r12,	r13	;
 2ae:	17 28       	jnc	$+48     	;abs 0x2de
 2b0:	82 43 a0 ff 	mov	#0,	&0xffa0	;r3 As==00
 2b4:	0d 4a       	mov	r10,	r13	;
 2b6:	0d 5a       	add	r10,	r13	;
 2b8:	0d 5d       	rla	r13		;
 2ba:	0d 5d       	rla	r13		;
 2bc:	0d 5d       	rla	r13		;
 2be:	0d 5d       	rla	r13		;
 2c0:	0d 5d       	rla	r13		;
 2c2:	0d 5d       	rla	r13		;
 2c4:	0d 5d       	rla	r13		;
 2c6:	3c d0 00 10 	bis	#4096,	r12	;#0x1000
 2ca:	0d dc       	bis	r12,	r13	;
 2cc:	82 4d a0 ff 	mov	r13,	&0xffa0	;
 2d0:	30 40 9e 09 	br	#0x099e		;

000002d4 <.L3>:
 2d4:	0a 8e       	sub	r14,	r10	;
 2d6:	0b 7f       	subc	r15,	r11	;
 2d8:	1c 53       	inc	r12		;
 2da:	30 40 9a 02 	br	#0x029a		;

000002de <.L9>:
 2de:	6a 93       	cmp.b	#2,	r10	;r3 As==10
 2e0:	02 24       	jz	$+6      	;abs 0x2e6
 2e2:	6a 92       	cmp.b	#4,	r10	;r2 As==10
 2e4:	07 20       	jnz	$+16     	;abs 0x2f4

000002e6 <.L6>:
 2e6:	b0 12 48 0a 	call	#2632		;#0x0a48

000002ea <.L8>:
 2ea:	5a 53       	inc.b	r10		;
 2ec:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
 2f0:	30 40 a8 02 	br	#0x02a8		;

000002f4 <.L7>:
 2f4:	b0 12 50 0a 	call	#2640		;#0x0a50
 2f8:	30 40 ea 02 	br	#0x02ea		;

000002fc <neo430_uart_putc>:
 2fc:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 300:	3e 40 a0 ff 	mov	#65440,	r14	;#0xffa0

00000304 <.L15>:
 304:	2d 4e       	mov	@r14,	r13	;
 306:	0d 93       	cmp	#0,	r13	;r3 As==00
 308:	fd 3b       	jl	$-4      	;abs 0x304
 30a:	82 4c a2 ff 	mov	r12,	&0xffa2	;
 30e:	30 41       	ret			

00000310 <neo430_uart_getc>:
 310:	3d 40 a2 ff 	mov	#65442,	r13	;#0xffa2

00000314 <.L18>:
 314:	2c 4d       	mov	@r13,	r12	;
 316:	0c 93       	cmp	#0,	r12	;r3 As==00
 318:	fd 37       	jge	$-4      	;abs 0x314
 31a:	30 41       	ret			

0000031c <neo430_uart_print>:
 31c:	0a 12       	push	r10		;
 31e:	09 12       	push	r9		;
 320:	0a 4c       	mov	r12,	r10	;
 322:	39 40 fc 02 	mov	#764,	r9	;#0x02fc

00000326 <.L23>:
 326:	1a 53       	inc	r10		;
 328:	5c 4a ff ff 	mov.b	-1(r10),r12	;
 32c:	0c 93       	cmp	#0,	r12	;r3 As==00
 32e:	02 20       	jnz	$+6      	;abs 0x334
 330:	30 40 9e 09 	br	#0x099e		;

00000334 <.L24>:
 334:	89 12       	call	r9		;
 336:	30 40 26 03 	br	#0x0326		;

0000033a <neo430_uart_br_print>:
 33a:	0a 12       	push	r10		;
 33c:	09 12       	push	r9		;
 33e:	08 12       	push	r8		;
 340:	07 12       	push	r7		;
 342:	09 4c       	mov	r12,	r9	;
 344:	38 40 fc 02 	mov	#764,	r8	;#0x02fc
 348:	77 40 0d 00 	mov.b	#13,	r7	;#0x000d

0000034c <.L26>:
 34c:	6a 49       	mov.b	@r9,	r10	;
 34e:	0a 93       	cmp	#0,	r10	;r3 As==00
 350:	02 20       	jnz	$+6      	;abs 0x356
 352:	30 40 9a 09 	br	#0x099a		;

00000356 <.L28>:
 356:	3a 90 0a 00 	cmp	#10,	r10	;#0x000a
 35a:	02 20       	jnz	$+6      	;abs 0x360
 35c:	4c 47       	mov.b	r7,	r12	;
 35e:	88 12       	call	r8		;

00000360 <.L27>:
 360:	4c 4a       	mov.b	r10,	r12	;
 362:	88 12       	call	r8		;
 364:	19 53       	inc	r9		;
 366:	30 40 4c 03 	br	#0x034c		;

0000036a <neo430_uart_scan>:
 36a:	0a 12       	push	r10		;
 36c:	09 12       	push	r9		;
 36e:	08 12       	push	r8		;
 370:	07 12       	push	r7		;
 372:	06 12       	push	r6		;
 374:	05 12       	push	r5		;
 376:	04 12       	push	r4		;
 378:	09 4c       	mov	r12,	r9	;
 37a:	07 4e       	mov	r14,	r7	;
 37c:	4a 43       	clr.b	r10		;
 37e:	36 40 10 03 	mov	#784,	r6	;#0x0310
 382:	05 4d       	mov	r13,	r5	;
 384:	35 53       	add	#-1,	r5	;r3 As==11
 386:	34 40 fc 02 	mov	#764,	r4	;#0x02fc

0000038a <.L30>:
 38a:	86 12       	call	r6		;
 38c:	48 4c       	mov.b	r12,	r8	;
 38e:	7c 92       	cmp.b	#8,	r12	;r2 As==11
 390:	0c 20       	jnz	$+26     	;abs 0x3aa
 392:	0a 93       	cmp	#0,	r10	;r3 As==00
 394:	fa 27       	jz	$-10     	;abs 0x38a
 396:	07 93       	cmp	#0,	r7	;r3 As==00
 398:	04 24       	jz	$+10     	;abs 0x3a2
 39a:	3c 40 38 0d 	mov	#3384,	r12	;#0x0d38
 39e:	b0 12 1c 03 	call	#796		;#0x031c

000003a2 <.L33>:
 3a2:	39 53       	add	#-1,	r9	;r3 As==11
 3a4:	3a 53       	add	#-1,	r10	;r3 As==11
 3a6:	30 40 8a 03 	br	#0x038a		;

000003aa <.L31>:
 3aa:	7c 90 0d 00 	cmp.b	#13,	r12	;#0x000d
 3ae:	12 24       	jz	$+38     	;abs 0x3d4
 3b0:	4d 4c       	mov.b	r12,	r13	;
 3b2:	7d 50 e0 ff 	add.b	#65504,	r13	;#0xffe0
 3b6:	7e 40 5e 00 	mov.b	#94,	r14	;#0x005e
 3ba:	4e 9d       	cmp.b	r13,	r14	;
 3bc:	e6 2b       	jnc	$-50     	;abs 0x38a
 3be:	0a 95       	cmp	r5,	r10	;
 3c0:	e4 2f       	jc	$-54     	;abs 0x38a
 3c2:	07 93       	cmp	#0,	r7	;r3 As==00
 3c4:	01 24       	jz	$+4      	;abs 0x3c8
 3c6:	84 12       	call	r4		;

000003c8 <.L35>:
 3c8:	c9 48 00 00 	mov.b	r8,	0(r9)	;
 3cc:	1a 53       	inc	r10		;
 3ce:	19 53       	inc	r9		;
 3d0:	30 40 8a 03 	br	#0x038a		;

000003d4 <.L34>:
 3d4:	c9 43 00 00 	mov.b	#0,	0(r9)	;r3 As==00
 3d8:	0c 4a       	mov	r10,	r12	;
 3da:	30 40 94 09 	br	#0x0994		;

000003de <neo430_uart_print_hex_char>:
 3de:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f
 3e2:	7d 40 09 00 	mov.b	#9,	r13	;
 3e6:	4d 9c       	cmp.b	r12,	r13	;
 3e8:	07 28       	jnc	$+16     	;abs 0x3f8
 3ea:	7c 50 30 00 	add.b	#48,	r12	;#0x0030

000003ee <.L48>:
 3ee:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 3f2:	b0 12 fc 02 	call	#764		;#0x02fc
 3f6:	30 41       	ret			

000003f8 <.L46>:
 3f8:	7c 50 57 00 	add.b	#87,	r12	;#0x0057
 3fc:	30 40 ee 03 	br	#0x03ee		;

00000400 <neo430_uart_print_hex_byte>:
 400:	0a 12       	push	r10		;
 402:	09 12       	push	r9		;
 404:	49 4c       	mov.b	r12,	r9	;
 406:	0c 49       	mov	r9,	r12	;
 408:	b0 12 44 0a 	call	#2628		;#0x0a44
 40c:	3a 40 de 03 	mov	#990,	r10	;#0x03de
 410:	8a 12       	call	r10		;
 412:	4c 49       	mov.b	r9,	r12	;
 414:	8a 12       	call	r10		;
 416:	30 40 9e 09 	br	#0x099e		;

0000041a <neo430_uart_print_hex_word>:
 41a:	0a 12       	push	r10		;
 41c:	09 12       	push	r9		;
 41e:	09 4c       	mov	r12,	r9	;
 420:	b0 12 34 0a 	call	#2612		;#0x0a34
 424:	3a 40 00 04 	mov	#1024,	r10	;#0x0400
 428:	8a 12       	call	r10		;
 42a:	4c 49       	mov.b	r9,	r12	;
 42c:	8a 12       	call	r10		;
 42e:	30 40 9e 09 	br	#0x099e		;

00000432 <neo430_uart_print_hex_dword>:
 432:	0a 12       	push	r10		;
 434:	09 12       	push	r9		;
 436:	09 4c       	mov	r12,	r9	;
 438:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 43c:	b0 12 c6 0a 	call	#2758		;#0x0ac6
 440:	3a 40 1a 04 	mov	#1050,	r10	;#0x041a
 444:	8a 12       	call	r10		;
 446:	0c 49       	mov	r9,	r12	;
 448:	8a 12       	call	r10		;
 44a:	30 40 9e 09 	br	#0x099e		;

0000044e <neo430_soft_reset>:
 44e:	00 43       	clr	r0		;
 450:	30 41       	ret			

00000452 <neo430_bswap>:
 452:	8c 10       	swpb	r12		;
 454:	30 41       	ret			

00000456 <delay>:
 456:	4e 43       	clr.b	r14		;
 458:	4f 43       	clr.b	r15		;

0000045a <.L2>:
 45a:	0e 9c       	cmp	r12,	r14	;
 45c:	03 20       	jnz	$+8      	;abs 0x464
 45e:	0f 9d       	cmp	r13,	r15	;
 460:	01 20       	jnz	$+4      	;abs 0x464
 462:	30 41       	ret			

00000464 <.L3>:
 464:	03 43       	nop			
 466:	1e 53       	inc	r14		;
 468:	0f 63       	adc	r15		;
 46a:	30 40 5a 04 	br	#0x045a		;

0000046e <checkack>:
 46e:	0a 12       	push	r10		;
 470:	09 12       	push	r9		;
 472:	07 12       	push	r7		;
 474:	06 12       	push	r6		;
 476:	05 12       	push	r5		;
 478:	04 12       	push	r4		;
 47a:	06 4c       	mov	r12,	r6	;
 47c:	07 4d       	mov	r13,	r7	;
 47e:	3c 40 3c 0d 	mov	#3388,	r12	;#0x0d3c
 482:	b0 12 3a 03 	call	#826		;#0x033a
 486:	34 40 56 04 	mov	#1110,	r4	;#0x0456
 48a:	35 40 e6 01 	mov	#486,	r5	;#0x01e6

0000048e <.L5>:
 48e:	0c 46       	mov	r6,	r12	;
 490:	0d 47       	mov	r7,	r13	;
 492:	84 12       	call	r4		;
 494:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 498:	4d 43       	clr.b	r13		;
 49a:	85 12       	call	r5		;
 49c:	49 4c       	mov.b	r12,	r9	;
 49e:	7c e3       	xor.b	#-1,	r12	;r3 As==11
 4a0:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 4a4:	b0 12 38 0a 	call	#2616		;#0x0a38
 4a8:	4a 4c       	mov.b	r12,	r10	;
 4aa:	4c 4a       	mov.b	r10,	r12	;
 4ac:	b0 12 00 04 	call	#1024		;#0x0400
 4b0:	29 b3       	bit	#2,	r9	;r3 As==10
 4b2:	ed 23       	jnz	$-36     	;abs 0x48e
 4b4:	4c 4a       	mov.b	r10,	r12	;
 4b6:	34 41       	pop	r4		;
 4b8:	35 41       	pop	r5		;
 4ba:	36 41       	pop	r6		;
 4bc:	37 41       	pop	r7		;
 4be:	39 41       	pop	r9		;
 4c0:	3a 41       	pop	r10		;
 4c2:	30 41       	ret			

000004c4 <zero_buffer>:
 4c4:	0e 4c       	mov	r12,	r14	;
 4c6:	0e 5d       	add	r13,	r14	;

000004c8 <.L8>:
 4c8:	0c 9e       	cmp	r14,	r12	;
 4ca:	02 20       	jnz	$+6      	;abs 0x4d0
 4cc:	0c 4d       	mov	r13,	r12	;
 4ce:	30 41       	ret			

000004d0 <.L9>:
 4d0:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00
 4d4:	1c 53       	inc	r12		;
 4d6:	30 40 c8 04 	br	#0x04c8		;

000004da <setup_i2c>:
 4da:	0a 12       	push	r10		;
 4dc:	09 12       	push	r9		;
 4de:	07 12       	push	r7		;
 4e0:	06 12       	push	r6		;
 4e2:	39 40 3a 03 	mov	#826,	r9	;#0x033a
 4e6:	3c 40 4b 0d 	mov	#3403,	r12	;#0x0d4b
 4ea:	89 12       	call	r9		;
 4ec:	76 42       	mov.b	#8,	r6	;r2 As==11
 4ee:	47 43       	clr.b	r7		;
 4f0:	3a 40 34 02 	mov	#564,	r10	;#0x0234
 4f4:	4e 43       	clr.b	r14		;
 4f6:	0c 46       	mov	r6,	r12	;
 4f8:	0d 47       	mov	r7,	r13	;
 4fa:	8a 12       	call	r10		;
 4fc:	4e 43       	clr.b	r14		;
 4fe:	4c 43       	clr.b	r12		;
 500:	4d 43       	clr.b	r13		;
 502:	8a 12       	call	r10		;
 504:	6e 42       	mov.b	#4,	r14	;r2 As==10
 506:	6c 42       	mov.b	#4,	r12	;r2 As==10
 508:	4d 43       	clr.b	r13		;
 50a:	8a 12       	call	r10		;
 50c:	7e 40 80 ff 	mov.b	#65408,	r14	;#0xff80
 510:	0c 46       	mov	r6,	r12	;
 512:	0d 47       	mov	r7,	r13	;
 514:	8a 12       	call	r10		;
 516:	3c 40 e8 03 	mov	#1000,	r12	;#0x03e8
 51a:	4d 43       	clr.b	r13		;
 51c:	b0 12 56 04 	call	#1110		;#0x0456
 520:	3c 40 5f 0d 	mov	#3423,	r12	;#0x0d5f
 524:	89 12       	call	r9		;
 526:	36 41       	pop	r6		;
 528:	37 41       	pop	r7		;
 52a:	39 41       	pop	r9		;
 52c:	3a 41       	pop	r10		;
 52e:	30 41       	ret			

00000530 <read_i2c_address>:
 530:	0a 12       	push	r10		;
 532:	09 12       	push	r9		;
 534:	08 12       	push	r8		;
 536:	07 12       	push	r7		;
 538:	06 12       	push	r6		;
 53a:	05 12       	push	r5		;
 53c:	04 12       	push	r4		;
 53e:	21 82       	sub	#4,	r1	;r2 As==10
 540:	4a 4c       	mov.b	r12,	r10	;
 542:	48 4d       	mov.b	r13,	r8	;
 544:	81 4e 00 00 	mov	r14,	0(r1)	;
 548:	35 40 3a 03 	mov	#826,	r5	;#0x033a
 54c:	3c 40 6d 0d 	mov	#3437,	r12	;#0x0d6d
 550:	85 12       	call	r5		;
 552:	4a 5a       	rla.b	r10		;
 554:	34 40 34 02 	mov	#564,	r4	;#0x0234
 558:	4e 4a       	mov.b	r10,	r14	;
 55a:	5e d3       	bis.b	#1,	r14	;r3 As==01
 55c:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 560:	4d 43       	clr.b	r13		;
 562:	84 12       	call	r4		;
 564:	7e 40 90 ff 	mov.b	#65424,	r14	;#0xff90
 568:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 56c:	4d 43       	clr.b	r13		;
 56e:	84 12       	call	r4		;
 570:	39 40 6e 04 	mov	#1134,	r9	;#0x046e
 574:	3c 40 00 02 	mov	#512,	r12	;#0x0200
 578:	4d 43       	clr.b	r13		;
 57a:	89 12       	call	r9		;
 57c:	4a 4c       	mov.b	r12,	r10	;
 57e:	07 45       	mov	r5,	r7	;
 580:	06 44       	mov	r4,	r6	;
 582:	0a 93       	cmp	#0,	r10	;r3 As==00
 584:	2a 24       	jz	$+86     	;abs 0x5da
 586:	4a 43       	clr.b	r10		;
 588:	0c 48       	mov	r8,	r12	;
 58a:	3c 53       	add	#-1,	r12	;r3 As==11
 58c:	81 4c 02 00 	mov	r12,	2(r1)	;

00000590 <.L13>:
 590:	0a 98       	cmp	r8,	r10	;
 592:	2c 24       	jz	$+90     	;abs 0x5ec
 594:	1a 91 02 00 	cmp	2(r1),	r10	;
 598:	2d 34       	jge	$+92     	;abs 0x5f4
 59a:	7e 40 20 00 	mov.b	#32,	r14	;#0x0020

0000059e <.L18>:
 59e:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 5a2:	4d 43       	clr.b	r13		;
 5a4:	86 12       	call	r6		;
 5a6:	3c 40 00 02 	mov	#512,	r12	;#0x0200
 5aa:	4d 43       	clr.b	r13		;
 5ac:	89 12       	call	r9		;
 5ae:	44 4c       	mov.b	r12,	r4	;
 5b0:	3c 40 c0 0d 	mov	#3520,	r12	;#0x0dc0
 5b4:	87 12       	call	r7		;
 5b6:	4c 44       	mov.b	r4,	r12	;
 5b8:	b0 12 00 04 	call	#1024		;#0x0400
 5bc:	3c 40 da 0d 	mov	#3546,	r12	;#0x0dda
 5c0:	87 12       	call	r7		;
 5c2:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 5c6:	4d 43       	clr.b	r13		;
 5c8:	b0 12 e6 01 	call	#486		;#0x01e6
 5cc:	2d 41       	mov	@r1,	r13	;
 5ce:	0d 5a       	add	r10,	r13	;
 5d0:	cd 4c 00 00 	mov.b	r12,	0(r13)	;
 5d4:	1a 53       	inc	r10		;
 5d6:	30 40 90 05 	br	#0x0590		;

000005da <.L12>:
 5da:	3c 40 81 0d 	mov	#3457,	r12	;#0x0d81
 5de:	85 12       	call	r5		;
 5e0:	7e 40 40 00 	mov.b	#64,	r14	;#0x0040
 5e4:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 5e8:	4d 43       	clr.b	r13		;
 5ea:	84 12       	call	r4		;

000005ec <.L19>:
 5ec:	0c 4a       	mov	r10,	r12	;
 5ee:	21 52       	add	#4,	r1	;r2 As==10
 5f0:	30 40 94 09 	br	#0x0994		;

000005f4 <.L15>:
 5f4:	7e 40 68 00 	mov.b	#104,	r14	;#0x0068
 5f8:	30 40 9e 05 	br	#0x059e		;

000005fc <write_i2c_address>:
 5fc:	0a 12       	push	r10		;
 5fe:	09 12       	push	r9		;
 600:	08 12       	push	r8		;
 602:	07 12       	push	r7		;
 604:	06 12       	push	r6		;
 606:	05 12       	push	r5		;
 608:	04 12       	push	r4		;
 60a:	21 83       	decd	r1		;
 60c:	4a 4c       	mov.b	r12,	r10	;
 60e:	46 4d       	mov.b	r13,	r6	;
 610:	81 4e 00 00 	mov	r14,	0(r1)	;
 614:	47 4f       	mov.b	r15,	r7	;
 616:	35 40 3a 03 	mov	#826,	r5	;#0x033a
 61a:	3c 40 dc 0d 	mov	#3548,	r12	;#0x0ddc
 61e:	85 12       	call	r5		;
 620:	4e 4a       	mov.b	r10,	r14	;
 622:	4e 5a       	add.b	r10,	r14	;
 624:	3a 40 34 02 	mov	#564,	r10	;#0x0234
 628:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 62c:	4d 43       	clr.b	r13		;
 62e:	8a 12       	call	r10		;
 630:	7e 40 90 ff 	mov.b	#65424,	r14	;#0xff90
 634:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 638:	4d 43       	clr.b	r13		;
 63a:	8a 12       	call	r10		;
 63c:	38 40 6e 04 	mov	#1134,	r8	;#0x046e
 640:	3c 40 00 02 	mov	#512,	r12	;#0x0200
 644:	4d 43       	clr.b	r13		;
 646:	88 12       	call	r8		;
 648:	04 45       	mov	r5,	r4	;
 64a:	09 4a       	mov	r10,	r9	;
 64c:	4c 93       	cmp.b	#0,	r12	;r3 As==00
 64e:	0a 24       	jz	$+22     	;abs 0x664
 650:	4a 43       	clr.b	r10		;

00000652 <.L22>:
 652:	0a 96       	cmp	r6,	r10	;
 654:	15 20       	jnz	$+44     	;abs 0x680
 656:	07 93       	cmp	#0,	r7	;r3 As==00
 658:	31 24       	jz	$+100    	;abs 0x6bc
 65a:	3c 40 42 0e 	mov	#3650,	r12	;#0x0e42
 65e:	84 12       	call	r4		;
 660:	30 40 a6 06 	br	#0x06a6		;

00000664 <.L21>:
 664:	3c 40 ee 0d 	mov	#3566,	r12	;#0x0dee
 668:	85 12       	call	r5		;
 66a:	7e 40 40 00 	mov.b	#64,	r14	;#0x0040
 66e:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 672:	4d 43       	clr.b	r13		;
 674:	8a 12       	call	r10		;
 676:	3a 43       	mov	#-1,	r10	;r3 As==11

00000678 <.L20>:
 678:	0c 4a       	mov	r10,	r12	;
 67a:	21 53       	incd	r1		;
 67c:	30 40 94 09 	br	#0x0994		;

00000680 <.L25>:
 680:	2c 41       	mov	@r1,	r12	;
 682:	0c 5a       	add	r10,	r12	;
 684:	6e 4c       	mov.b	@r12,	r14	;
 686:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 68a:	4d 43       	clr.b	r13		;
 68c:	89 12       	call	r9		;
 68e:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 692:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 696:	4d 43       	clr.b	r13		;
 698:	89 12       	call	r9		;
 69a:	3c 40 00 02 	mov	#512,	r12	;#0x0200
 69e:	4d 43       	clr.b	r13		;
 6a0:	88 12       	call	r8		;
 6a2:	4c 93       	cmp.b	#0,	r12	;r3 As==00
 6a4:	08 20       	jnz	$+18     	;abs 0x6b6

000006a6 <.L27>:
 6a6:	7e 40 40 00 	mov.b	#64,	r14	;#0x0040
 6aa:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 6ae:	4d 43       	clr.b	r13		;
 6b0:	89 12       	call	r9		;
 6b2:	30 40 78 06 	br	#0x0678		;

000006b6 <.L24>:
 6b6:	1a 53       	inc	r10		;
 6b8:	30 40 52 06 	br	#0x0652		;

000006bc <.L26>:
 6bc:	3c 40 64 0e 	mov	#3684,	r12	;#0x0e64
 6c0:	84 12       	call	r4		;
 6c2:	30 40 78 06 	br	#0x0678		;

000006c6 <enable_i2c_bridge>:
 6c6:	0a 12       	push	r10		;
 6c8:	09 12       	push	r9		;
 6ca:	08 12       	push	r8		;
 6cc:	39 40 3a 03 	mov	#826,	r9	;#0x033a
 6d0:	3c 40 98 0e 	mov	#3736,	r12	;#0x0e98
 6d4:	89 12       	call	r9		;
 6d6:	3a 40 18 c0 	mov	#49176,	r10	;#0xc018
 6da:	da 43 00 00 	mov.b	#1,	0(r10)	;r3 As==01
 6de:	fa 40 7f 00 	mov.b	#127,	1(r10)	;#0x007f
 6e2:	01 00 
 6e4:	3c 40 af 0e 	mov	#3759,	r12	;#0x0eaf
 6e8:	89 12       	call	r9		;
 6ea:	38 40 fc 05 	mov	#1532,	r8	;#0x05fc
 6ee:	5f 43       	mov.b	#1,	r15	;r3 As==01
 6f0:	0e 4a       	mov	r10,	r14	;
 6f2:	6d 43       	mov.b	#2,	r13	;r3 As==10
 6f4:	7c 40 21 00 	mov.b	#33,	r12	;#0x0021
 6f8:	88 12       	call	r8		;
 6fa:	da 43 00 00 	mov.b	#1,	0(r10)	;r3 As==01
 6fe:	3c 40 de 0e 	mov	#3806,	r12	;#0x0ede
 702:	89 12       	call	r9		;
 704:	4f 43       	clr.b	r15		;
 706:	0e 4a       	mov	r10,	r14	;
 708:	5d 43       	mov.b	#1,	r13	;r3 As==01
 70a:	7c 40 21 00 	mov.b	#33,	r12	;#0x0021
 70e:	88 12       	call	r8		;
 710:	7d 40 10 00 	mov.b	#16,	r13	;#0x0010
 714:	0c 4a       	mov	r10,	r12	;
 716:	b0 12 c4 04 	call	#1220		;#0x04c4
 71a:	3c 40 09 0f 	mov	#3849,	r12	;#0x0f09
 71e:	89 12       	call	r9		;
 720:	0e 4a       	mov	r10,	r14	;
 722:	5d 43       	mov.b	#1,	r13	;r3 As==01
 724:	7c 40 21 00 	mov.b	#33,	r12	;#0x0021
 728:	b0 12 30 05 	call	#1328		;#0x0530
 72c:	3c 40 2c 0f 	mov	#3884,	r12	;#0x0f2c
 730:	89 12       	call	r9		;
 732:	6c 4a       	mov.b	@r10,	r12	;
 734:	4d 43       	clr.b	r13		;
 736:	b0 12 32 04 	call	#1074		;#0x0432
 73a:	3c 40 da 0d 	mov	#3546,	r12	;#0x0dda
 73e:	89 12       	call	r9		;
 740:	5c 43       	mov.b	#1,	r12	;r3 As==01
 742:	30 40 9c 09 	br	#0x099c		;

00000746 <read_i2c_prom>:
 746:	0a 12       	push	r10		;
 748:	09 12       	push	r9		;
 74a:	08 12       	push	r8		;
 74c:	07 12       	push	r7		;
 74e:	06 12       	push	r6		;
 750:	05 12       	push	r5		;
 752:	04 12       	push	r4		;
 754:	48 4d       	mov.b	r13,	r8	;
 756:	0a 4e       	mov	r14,	r10	;
 758:	ce 4c 00 00 	mov.b	r12,	0(r14)	;
 75c:	39 40 3a 03 	mov	#826,	r9	;#0x033a
 760:	3c 40 3a 0f 	mov	#3898,	r12	;#0x0f3a
 764:	89 12       	call	r9		;
 766:	4f 43       	clr.b	r15		;
 768:	0e 4a       	mov	r10,	r14	;
 76a:	5d 43       	mov.b	#1,	r13	;r3 As==01
 76c:	7c 40 50 00 	mov.b	#80,	r12	;#0x0050
 770:	b0 12 fc 05 	call	#1532		;#0x05fc
 774:	3c 40 5e 0f 	mov	#3934,	r12	;#0x0f5e
 778:	89 12       	call	r9		;
 77a:	0d 48       	mov	r8,	r13	;
 77c:	0c 4a       	mov	r10,	r12	;
 77e:	b0 12 c4 04 	call	#1220		;#0x04c4
 782:	0e 4a       	mov	r10,	r14	;
 784:	4d 48       	mov.b	r8,	r13	;
 786:	7c 40 50 00 	mov.b	#80,	r12	;#0x0050
 78a:	b0 12 30 05 	call	#1328		;#0x0530
 78e:	3c 40 88 0f 	mov	#3976,	r12	;#0x0f88
 792:	89 12       	call	r9		;
 794:	07 4a       	mov	r10,	r7	;
 796:	07 58       	add	r8,	r7	;
 798:	36 40 da 0d 	mov	#3546,	r6	;#0x0dda
 79c:	35 40 32 04 	mov	#1074,	r5	;#0x0432
 7a0:	44 43       	clr.b	r4		;

000007a2 <.L30>:
 7a2:	0a 97       	cmp	r7,	r10	;
 7a4:	03 20       	jnz	$+8      	;abs 0x7ac
 7a6:	0c 48       	mov	r8,	r12	;
 7a8:	30 40 94 09 	br	#0x0994		;

000007ac <.L31>:
 7ac:	0c 46       	mov	r6,	r12	;
 7ae:	89 12       	call	r9		;
 7b0:	6c 4a       	mov.b	@r10,	r12	;
 7b2:	0d 44       	mov	r4,	r13	;
 7b4:	85 12       	call	r5		;
 7b6:	1a 53       	inc	r10		;
 7b8:	30 40 a2 07 	br	#0x07a2		;

000007bc <read_E24AA025E48T>:
 7bc:	3e 40 18 c0 	mov	#49176,	r14	;#0xc018
 7c0:	7d 40 06 00 	mov.b	#6,	r13	;
 7c4:	7c 40 fa ff 	mov.b	#65530,	r12	;#0xfffa
 7c8:	b0 12 46 07 	call	#1862		;#0x0746
 7cc:	3d 40 18 c0 	mov	#49176,	r13	;#0xc018
 7d0:	5c 4d 04 00 	mov.b	4(r13),	r12	;
 7d4:	0c 5c       	rla	r12		;
 7d6:	0c 5c       	rla	r12		;
 7d8:	0c 5c       	rla	r12		;
 7da:	0c 5c       	rla	r12		;
 7dc:	0c 5c       	rla	r12		;
 7de:	0c 5c       	rla	r12		;
 7e0:	0c 5c       	rla	r12		;
 7e2:	0c 5c       	rla	r12		;
 7e4:	5d 4d 05 00 	mov.b	5(r13),	r13	;
 7e8:	0c 5d       	add	r13,	r12	;
 7ea:	30 41       	ret			

000007ec <read_Prom>:
 7ec:	0a 12       	push	r10		;
 7ee:	09 12       	push	r9		;
 7f0:	08 12       	push	r8		;
 7f2:	07 12       	push	r7		;
 7f4:	3e 40 18 c0 	mov	#49176,	r14	;#0xc018
 7f8:	6d 42       	mov.b	#4,	r13	;r2 As==10
 7fa:	4c 43       	clr.b	r12		;
 7fc:	b0 12 46 07 	call	#1862		;#0x0746
 800:	3a 40 18 c0 	mov	#49176,	r10	;#0xc018
 804:	4c 43       	clr.b	r12		;
 806:	0d 4c       	mov	r12,	r13	;
 808:	5c 4a 02 00 	mov.b	2(r10),	r12	;
 80c:	0c 5c       	rla	r12		;
 80e:	0d 6d       	rlc	r13		;
 810:	0c 5c       	rla	r12		;
 812:	0d 6d       	rlc	r13		;
 814:	0c 5c       	rla	r12		;
 816:	0d 6d       	rlc	r13		;
 818:	0c 5c       	rla	r12		;
 81a:	0d 6d       	rlc	r13		;
 81c:	0c 5c       	rla	r12		;
 81e:	0d 6d       	rlc	r13		;
 820:	0c 5c       	rla	r12		;
 822:	0d 6d       	rlc	r13		;
 824:	0c 5c       	rla	r12		;
 826:	0d 6d       	rlc	r13		;
 828:	09 4c       	mov	r12,	r9	;
 82a:	09 5c       	add	r12,	r9	;
 82c:	08 4d       	mov	r13,	r8	;
 82e:	08 6d       	addc	r13,	r8	;
 830:	47 43       	clr.b	r7		;
 832:	5c 4a 01 00 	mov.b	1(r10),	r12	;
 836:	0d 47       	mov	r7,	r13	;
 838:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 83c:	b0 12 12 0a 	call	#2578		;#0x0a12
 840:	0c 59       	add	r9,	r12	;
 842:	08 6d       	addc	r13,	r8	;
 844:	0d 47       	mov	r7,	r13	;
 846:	59 4a 03 00 	mov.b	3(r10),	r9	;
 84a:	09 5c       	add	r12,	r9	;
 84c:	08 67       	addc	r7,	r8	;
 84e:	6c 4a       	mov.b	@r10,	r12	;
 850:	7e 40 18 00 	mov.b	#24,	r14	;#0x0018
 854:	b0 12 12 0a 	call	#2578		;#0x0a12
 858:	0c 59       	add	r9,	r12	;
 85a:	0d 68       	addc	r8,	r13	;
 85c:	30 40 9a 09 	br	#0x099a		;

00000860 <hex_str_to_uint32>:
 860:	0a 12       	push	r10		;
 862:	09 12       	push	r9		;
 864:	08 12       	push	r8		;
 866:	07 12       	push	r7		;
 868:	06 12       	push	r6		;
 86a:	05 12       	push	r5		;
 86c:	04 12       	push	r4		;
 86e:	04 4c       	mov	r12,	r4	;
 870:	b0 12 e8 0a 	call	#2792		;#0x0ae8
 874:	05 4c       	mov	r12,	r5	;
 876:	35 50 ff 3f 	add	#16383,	r5	;#0x3fff
 87a:	05 55       	rla	r5		;
 87c:	05 55       	rla	r5		;
 87e:	0a 44       	mov	r4,	r10	;
 880:	0a 5c       	add	r12,	r10	;
 882:	48 43       	clr.b	r8		;
 884:	49 43       	clr.b	r9		;
 886:	06 48       	mov	r8,	r6	;
 888:	07 49       	mov	r9,	r7	;

0000088a <.L35>:
 88a:	04 9a       	cmp	r10,	r4	;
 88c:	04 20       	jnz	$+10     	;abs 0x896
 88e:	0c 48       	mov	r8,	r12	;
 890:	0d 49       	mov	r9,	r13	;
 892:	30 40 94 09 	br	#0x0994		;

00000896 <.L39>:
 896:	6c 44       	mov.b	@r4,	r12	;
 898:	4d 4c       	mov.b	r12,	r13	;
 89a:	7d 50 d0 ff 	add.b	#65488,	r13	;#0xffd0
 89e:	7e 40 09 00 	mov.b	#9,	r14	;
 8a2:	4e 9d       	cmp.b	r13,	r14	;
 8a4:	10 28       	jnc	$+34     	;abs 0x8c6
 8a6:	3c 50 d0 ff 	add	#65488,	r12	;#0xffd0

000008aa <.L41>:
 8aa:	3c b0 00 80 	bit	#32768,	r12	;#0x8000
 8ae:	0d 7d       	subc	r13,	r13	;
 8b0:	3d e3       	inv	r13		;

000008b2 <.L37>:
 8b2:	0e 45       	mov	r5,	r14	;
 8b4:	b0 12 12 0a 	call	#2578		;#0x0a12
 8b8:	08 5c       	add	r12,	r8	;
 8ba:	09 6d       	addc	r13,	r9	;
 8bc:	14 53       	inc	r4		;
 8be:	35 50 fc ff 	add	#65532,	r5	;#0xfffc
 8c2:	30 40 8a 08 	br	#0x088a		;

000008c6 <.L36>:
 8c6:	4d 4c       	mov.b	r12,	r13	;
 8c8:	7d 50 9f ff 	add.b	#65439,	r13	;#0xff9f
 8cc:	7e 40 05 00 	mov.b	#5,	r14	;
 8d0:	4e 9d       	cmp.b	r13,	r14	;
 8d2:	04 28       	jnc	$+10     	;abs 0x8dc
 8d4:	3c 50 a9 ff 	add	#65449,	r12	;#0xffa9
 8d8:	30 40 aa 08 	br	#0x08aa		;

000008dc <.L38>:
 8dc:	4d 4c       	mov.b	r12,	r13	;
 8de:	7d 50 bf ff 	add.b	#65471,	r13	;#0xffbf
 8e2:	7e 40 05 00 	mov.b	#5,	r14	;
 8e6:	4e 9d       	cmp.b	r13,	r14	;
 8e8:	04 28       	jnc	$+10     	;abs 0x8f2
 8ea:	3c 50 c9 ff 	add	#65481,	r12	;#0xffc9
 8ee:	30 40 aa 08 	br	#0x08aa		;

000008f2 <.L40>:
 8f2:	0c 46       	mov	r6,	r12	;
 8f4:	0d 47       	mov	r7,	r13	;
 8f6:	30 40 b2 08 	br	#0x08b2		;

000008fa <write_Prom>:
 8fa:	0a 12       	push	r10		;
 8fc:	09 12       	push	r9		;
 8fe:	08 12       	push	r8		;
 900:	3c 40 9a 0f 	mov	#3994,	r12	;#0x0f9a
 904:	b0 12 3a 03 	call	#826		;#0x033a
 908:	5e 43       	mov.b	#1,	r14	;r3 As==01
 90a:	7d 40 09 00 	mov.b	#9,	r13	;
 90e:	3c 40 08 c0 	mov	#49160,	r12	;#0xc008
 912:	b0 12 6a 03 	call	#874		;#0x036a
 916:	3c 40 08 c0 	mov	#49160,	r12	;#0xc008
 91a:	b0 12 60 08 	call	#2144		;#0x0860
 91e:	09 4c       	mov	r12,	r9	;
 920:	08 4d       	mov	r13,	r8	;
 922:	3a 40 18 c0 	mov	#49176,	r10	;#0xc018
 926:	ca 43 00 00 	mov.b	#0,	0(r10)	;r3 As==00
 92a:	ca 4c 01 00 	mov.b	r12,	1(r10)	;
 92e:	b0 12 8c 0a 	call	#2700		;#0x0a8c
 932:	ca 4c 02 00 	mov.b	r12,	2(r10)	;
 936:	0c 49       	mov	r9,	r12	;
 938:	0d 48       	mov	r8,	r13	;
 93a:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 93e:	b0 12 c6 0a 	call	#2758		;#0x0ac6
 942:	ca 4c 03 00 	mov.b	r12,	3(r10)	;
 946:	0c 49       	mov	r9,	r12	;
 948:	0d 48       	mov	r8,	r13	;
 94a:	7e 40 18 00 	mov.b	#24,	r14	;#0x0018
 94e:	b0 12 c6 0a 	call	#2758		;#0x0ac6
 952:	ca 4c 04 00 	mov.b	r12,	4(r10)	;
 956:	5f 43       	mov.b	#1,	r15	;r3 As==01
 958:	0e 4a       	mov	r10,	r14	;
 95a:	7d 40 05 00 	mov.b	#5,	r13	;
 95e:	7c 40 50 00 	mov.b	#80,	r12	;#0x0050
 962:	b0 12 fc 05 	call	#1532		;#0x05fc
 966:	30 40 9c 09 	br	#0x099c		;

0000096a <uint8_to_decimal_str>:
 96a:	fd 40 30 00 	mov.b	#48,	0(r13)	;#0x0030
 96e:	00 00 
 970:	fd 40 30 00 	mov.b	#48,	1(r13)	;#0x0030
 974:	01 00 
 976:	fd 40 30 00 	mov.b	#48,	2(r13)	;#0x0030
 97a:	02 00 
 97c:	cd 43 03 00 	mov.b	#0,	3(r13)	;r3 As==00
 980:	0c 4d       	mov	r13,	r12	;
 982:	3c 50 03 00 	add	#3,	r12	;

00000986 <.L44>:
 986:	fd 50 0a 00 	add.b	#10,	0(r13)	;#0x000a
 98a:	00 00 
 98c:	1d 53       	inc	r13		;
 98e:	0d 9c       	cmp	r12,	r13	;
 990:	fa 23       	jnz	$-10     	;abs 0x986
 992:	30 41       	ret			

00000994 <__mspabi_func_epilog_7>:
 994:	34 41       	pop	r4		;

00000996 <__mspabi_func_epilog_6>:
 996:	35 41       	pop	r5		;

00000998 <__mspabi_func_epilog_5>:
 998:	36 41       	pop	r6		;

0000099a <__mspabi_func_epilog_4>:
 99a:	37 41       	pop	r7		;

0000099c <__mspabi_func_epilog_3>:
 99c:	38 41       	pop	r8		;

0000099e <__mspabi_func_epilog_2>:
 99e:	39 41       	pop	r9		;

000009a0 <__mspabi_func_epilog_1>:
 9a0:	3a 41       	pop	r10		;
 9a2:	30 41       	ret			

000009a4 <__mspabi_slli_15>:
 9a4:	0c 5c       	rla	r12		;

000009a6 <__mspabi_slli_14>:
 9a6:	0c 5c       	rla	r12		;

000009a8 <__mspabi_slli_13>:
 9a8:	0c 5c       	rla	r12		;

000009aa <__mspabi_slli_12>:
 9aa:	0c 5c       	rla	r12		;

000009ac <__mspabi_slli_11>:
 9ac:	0c 5c       	rla	r12		;

000009ae <__mspabi_slli_10>:
 9ae:	0c 5c       	rla	r12		;

000009b0 <__mspabi_slli_9>:
 9b0:	0c 5c       	rla	r12		;

000009b2 <__mspabi_slli_8>:
 9b2:	0c 5c       	rla	r12		;

000009b4 <__mspabi_slli_7>:
 9b4:	0c 5c       	rla	r12		;

000009b6 <__mspabi_slli_6>:
 9b6:	0c 5c       	rla	r12		;

000009b8 <__mspabi_slli_5>:
 9b8:	0c 5c       	rla	r12		;

000009ba <__mspabi_slli_4>:
 9ba:	0c 5c       	rla	r12		;

000009bc <__mspabi_slli_3>:
 9bc:	0c 5c       	rla	r12		;

000009be <__mspabi_slli_2>:
 9be:	0c 5c       	rla	r12		;

000009c0 <__mspabi_slli_1>:
 9c0:	0c 5c       	rla	r12		;
 9c2:	30 41       	ret			

000009c4 <.L11>:
 9c4:	3d 53       	add	#-1,	r13	;r3 As==11
 9c6:	0c 5c       	rla	r12		;

000009c8 <__mspabi_slli>:
 9c8:	0d 93       	cmp	#0,	r13	;r3 As==00
 9ca:	fc 23       	jnz	$-6      	;abs 0x9c4
 9cc:	30 41       	ret			

000009ce <__mspabi_slll_15>:
 9ce:	0c 5c       	rla	r12		;
 9d0:	0d 6d       	rlc	r13		;

000009d2 <__mspabi_slll_14>:
 9d2:	0c 5c       	rla	r12		;
 9d4:	0d 6d       	rlc	r13		;

000009d6 <__mspabi_slll_13>:
 9d6:	0c 5c       	rla	r12		;
 9d8:	0d 6d       	rlc	r13		;

000009da <__mspabi_slll_12>:
 9da:	0c 5c       	rla	r12		;
 9dc:	0d 6d       	rlc	r13		;

000009de <__mspabi_slll_11>:
 9de:	0c 5c       	rla	r12		;
 9e0:	0d 6d       	rlc	r13		;

000009e2 <__mspabi_slll_10>:
 9e2:	0c 5c       	rla	r12		;
 9e4:	0d 6d       	rlc	r13		;

000009e6 <__mspabi_slll_9>:
 9e6:	0c 5c       	rla	r12		;
 9e8:	0d 6d       	rlc	r13		;

000009ea <__mspabi_slll_8>:
 9ea:	0c 5c       	rla	r12		;
 9ec:	0d 6d       	rlc	r13		;

000009ee <__mspabi_slll_7>:
 9ee:	0c 5c       	rla	r12		;
 9f0:	0d 6d       	rlc	r13		;

000009f2 <__mspabi_slll_6>:
 9f2:	0c 5c       	rla	r12		;
 9f4:	0d 6d       	rlc	r13		;

000009f6 <__mspabi_slll_5>:
 9f6:	0c 5c       	rla	r12		;
 9f8:	0d 6d       	rlc	r13		;

000009fa <__mspabi_slll_4>:
 9fa:	0c 5c       	rla	r12		;
 9fc:	0d 6d       	rlc	r13		;

000009fe <__mspabi_slll_3>:
 9fe:	0c 5c       	rla	r12		;
 a00:	0d 6d       	rlc	r13		;

00000a02 <__mspabi_slll_2>:
 a02:	0c 5c       	rla	r12		;
 a04:	0d 6d       	rlc	r13		;

00000a06 <__mspabi_slll_1>:
 a06:	0c 5c       	rla	r12		;
 a08:	0d 6d       	rlc	r13		;
 a0a:	30 41       	ret			

00000a0c <.L12>:
 a0c:	3e 53       	add	#-1,	r14	;r3 As==11
 a0e:	0c 5c       	rla	r12		;
 a10:	0d 6d       	rlc	r13		;

00000a12 <__mspabi_slll>:
 a12:	0e 93       	cmp	#0,	r14	;r3 As==00
 a14:	fb 23       	jnz	$-8      	;abs 0xa0c
 a16:	30 41       	ret			

00000a18 <__mspabi_srli_15>:
 a18:	12 c3       	clrc			
 a1a:	0c 10       	rrc	r12		;

00000a1c <__mspabi_srli_14>:
 a1c:	12 c3       	clrc			
 a1e:	0c 10       	rrc	r12		;

00000a20 <__mspabi_srli_13>:
 a20:	12 c3       	clrc			
 a22:	0c 10       	rrc	r12		;

00000a24 <__mspabi_srli_12>:
 a24:	12 c3       	clrc			
 a26:	0c 10       	rrc	r12		;

00000a28 <__mspabi_srli_11>:
 a28:	12 c3       	clrc			
 a2a:	0c 10       	rrc	r12		;

00000a2c <__mspabi_srli_10>:
 a2c:	12 c3       	clrc			
 a2e:	0c 10       	rrc	r12		;

00000a30 <__mspabi_srli_9>:
 a30:	12 c3       	clrc			
 a32:	0c 10       	rrc	r12		;

00000a34 <__mspabi_srli_8>:
 a34:	12 c3       	clrc			
 a36:	0c 10       	rrc	r12		;

00000a38 <__mspabi_srli_7>:
 a38:	12 c3       	clrc			
 a3a:	0c 10       	rrc	r12		;

00000a3c <__mspabi_srli_6>:
 a3c:	12 c3       	clrc			
 a3e:	0c 10       	rrc	r12		;

00000a40 <__mspabi_srli_5>:
 a40:	12 c3       	clrc			
 a42:	0c 10       	rrc	r12		;

00000a44 <__mspabi_srli_4>:
 a44:	12 c3       	clrc			
 a46:	0c 10       	rrc	r12		;

00000a48 <__mspabi_srli_3>:
 a48:	12 c3       	clrc			
 a4a:	0c 10       	rrc	r12		;

00000a4c <__mspabi_srli_2>:
 a4c:	12 c3       	clrc			
 a4e:	0c 10       	rrc	r12		;

00000a50 <__mspabi_srli_1>:
 a50:	12 c3       	clrc			
 a52:	0c 10       	rrc	r12		;
 a54:	30 41       	ret			

00000a56 <.L11>:
 a56:	3d 53       	add	#-1,	r13	;r3 As==11
 a58:	12 c3       	clrc			
 a5a:	0c 10       	rrc	r12		;

00000a5c <__mspabi_srli>:
 a5c:	0d 93       	cmp	#0,	r13	;r3 As==00
 a5e:	fb 23       	jnz	$-8      	;abs 0xa56
 a60:	30 41       	ret			

00000a62 <__mspabi_srll_15>:
 a62:	12 c3       	clrc			
 a64:	0d 10       	rrc	r13		;
 a66:	0c 10       	rrc	r12		;

00000a68 <__mspabi_srll_14>:
 a68:	12 c3       	clrc			
 a6a:	0d 10       	rrc	r13		;
 a6c:	0c 10       	rrc	r12		;

00000a6e <__mspabi_srll_13>:
 a6e:	12 c3       	clrc			
 a70:	0d 10       	rrc	r13		;
 a72:	0c 10       	rrc	r12		;

00000a74 <__mspabi_srll_12>:
 a74:	12 c3       	clrc			
 a76:	0d 10       	rrc	r13		;
 a78:	0c 10       	rrc	r12		;

00000a7a <__mspabi_srll_11>:
 a7a:	12 c3       	clrc			
 a7c:	0d 10       	rrc	r13		;
 a7e:	0c 10       	rrc	r12		;

00000a80 <__mspabi_srll_10>:
 a80:	12 c3       	clrc			
 a82:	0d 10       	rrc	r13		;
 a84:	0c 10       	rrc	r12		;

00000a86 <__mspabi_srll_9>:
 a86:	12 c3       	clrc			
 a88:	0d 10       	rrc	r13		;
 a8a:	0c 10       	rrc	r12		;

00000a8c <__mspabi_srll_8>:
 a8c:	12 c3       	clrc			
 a8e:	0d 10       	rrc	r13		;
 a90:	0c 10       	rrc	r12		;

00000a92 <__mspabi_srll_7>:
 a92:	12 c3       	clrc			
 a94:	0d 10       	rrc	r13		;
 a96:	0c 10       	rrc	r12		;

00000a98 <__mspabi_srll_6>:
 a98:	12 c3       	clrc			
 a9a:	0d 10       	rrc	r13		;
 a9c:	0c 10       	rrc	r12		;

00000a9e <__mspabi_srll_5>:
 a9e:	12 c3       	clrc			
 aa0:	0d 10       	rrc	r13		;
 aa2:	0c 10       	rrc	r12		;

00000aa4 <__mspabi_srll_4>:
 aa4:	12 c3       	clrc			
 aa6:	0d 10       	rrc	r13		;
 aa8:	0c 10       	rrc	r12		;

00000aaa <__mspabi_srll_3>:
 aaa:	12 c3       	clrc			
 aac:	0d 10       	rrc	r13		;
 aae:	0c 10       	rrc	r12		;

00000ab0 <__mspabi_srll_2>:
 ab0:	12 c3       	clrc			
 ab2:	0d 10       	rrc	r13		;
 ab4:	0c 10       	rrc	r12		;

00000ab6 <__mspabi_srll_1>:
 ab6:	12 c3       	clrc			
 ab8:	0d 10       	rrc	r13		;
 aba:	0c 10       	rrc	r12		;
 abc:	30 41       	ret			

00000abe <.L12>:
 abe:	3e 53       	add	#-1,	r14	;r3 As==11
 ac0:	12 c3       	clrc			
 ac2:	0d 10       	rrc	r13		;
 ac4:	0c 10       	rrc	r12		;

00000ac6 <__mspabi_srll>:
 ac6:	0e 93       	cmp	#0,	r14	;r3 As==00
 ac8:	fa 23       	jnz	$-10     	;abs 0xabe
 aca:	30 41       	ret			

00000acc <strcmp>:
 acc:	6e 4c       	mov.b	@r12,	r14	;
 ace:	0e 93       	cmp	#0,	r14	;r3 As==00
 ad0:	03 24       	jz	$+8      	;abs 0xad8

00000ad2 <.Loc.66.1>:
 ad2:	cd 9e 00 00 	cmp.b	r14,	0(r13)	;
 ad6:	04 24       	jz	$+10     	;abs 0xae0

00000ad8 <.L3>:
 ad8:	0c 4e       	mov	r14,	r12	;

00000ada <.LVL1>:
 ada:	6d 4d       	mov.b	@r13,	r13	;

00000adc <.LVL2>:
 adc:	0c 8d       	sub	r13,	r12	;
 ade:	30 41       	ret			

00000ae0 <.L4>:
 ae0:	1c 53       	inc	r12		;

00000ae2 <.Loc.69.1>:
 ae2:	1d 53       	inc	r13		;
 ae4:	30 40 cc 0a 	br	#0x0acc		;

00000ae8 <strlen>:
 ae8:	0d 4c       	mov	r12,	r13	;

00000aea <.L2>:
 aea:	cd 93 00 00 	cmp.b	#0,	0(r13)	;r3 As==00
 aee:	03 20       	jnz	$+8      	;abs 0xaf6

00000af0 <.Loc.88.1>:
 af0:	0d 8c       	sub	r12,	r13	;

00000af2 <.LVL3>:
 af2:	0c 4d       	mov	r13,	r12	;

00000af4 <.LVL4>:
 af4:	30 41       	ret			

00000af6 <.L3>:
 af6:	1d 53       	inc	r13		;
 af8:	30 40 ea 0a 	br	#0x0aea		;

Disassembly of section .rodata:

00000afc <_etext-0x4ca>:
 afc:	0a 2d       	jc	$+534    	;abs 0xd12
 afe:	2d 2d       	jc	$+604    	;abs 0xd5a
 b00:	2d 2d       	jc	$+604    	;abs 0xd5c
 b02:	2d 2d       	jc	$+604    	;abs 0xd5e
 b04:	2d 2d       	jc	$+604    	;abs 0xd60
 b06:	2d 2d       	jc	$+604    	;abs 0xd62
 b08:	2d 2d       	jc	$+604    	;abs 0xd64
 b0a:	2d 2d       	jc	$+604    	;abs 0xd66
 b0c:	2d 2d       	jc	$+604    	;abs 0xd68
 b0e:	2d 2d       	jc	$+604    	;abs 0xd6a
 b10:	2d 2d       	jc	$+604    	;abs 0xd6c
 b12:	2d 2d       	jc	$+604    	;abs 0xd6e
 b14:	2d 2d       	jc	$+604    	;abs 0xd70
 b16:	2d 2d       	jc	$+604    	;abs 0xd72
 b18:	2d 2d       	jc	$+604    	;abs 0xd74
 b1a:	2d 2d       	jc	$+604    	;abs 0xd76
 b1c:	2d 2d       	jc	$+604    	;abs 0xd78
 b1e:	2d 2d       	jc	$+604    	;abs 0xd7a
 b20:	2d 2d       	jc	$+604    	;abs 0xd7c
 b22:	2d 0a 2d 2d 	mova	&666925,r13	;0xa2d2d
 b26:	2d 20       	jnz	$+92     	;abs 0xb82
 b28:	49 32       	jn	$-876    	;abs 0x7bc
 b2a:	43 20       	jnz	$+136    	;abs 0xbb2
 b2c:	57 69 73 68 	addc.b	26739(r9),r7	;0x06873
 b30:	62 6f       	addc.b	@r15,	r2	;
 b32:	6e 65       	addc.b	@r5,	r14	;
 b34:	20 45       	br	@r5		;
 b36:	78 70 6c 6f 	subc.b	#28524,	r8	;#0x6f6c
 b3a:	72 65       	addc.b	@r5+,	r2	;
 b3c:	72 20       	jnz	$+230    	;abs 0xc22
 b3e:	54 65 72 6d 	addc.b	28018(r5),r4	;0x06d72
 b42:	69 6e       	addc.b	@r14,	r9	;
 b44:	61 6c       	addc.b	@r12,	r1	;
 b46:	20 2d       	jc	$+578    	;abs 0xd88
 b48:	2d 0a 2d 2d 	mova	&666925,r13	;0xa2d2d
 b4c:	2d 2d       	jc	$+604    	;abs 0xda8
 b4e:	2d 2d       	jc	$+604    	;abs 0xdaa
 b50:	2d 2d       	jc	$+604    	;abs 0xdac
 b52:	2d 2d       	jc	$+604    	;abs 0xdae
 b54:	2d 2d       	jc	$+604    	;abs 0xdb0
 b56:	2d 2d       	jc	$+604    	;abs 0xdb2
 b58:	2d 2d       	jc	$+604    	;abs 0xdb4
 b5a:	2d 2d       	jc	$+604    	;abs 0xdb6
 b5c:	2d 2d       	jc	$+604    	;abs 0xdb8
 b5e:	2d 2d       	jc	$+604    	;abs 0xdba
 b60:	2d 2d       	jc	$+604    	;abs 0xdbc
 b62:	2d 2d       	jc	$+604    	;abs 0xdbe
 b64:	2d 2d       	jc	$+604    	;abs 0xdc0
 b66:	2d 2d       	jc	$+604    	;abs 0xdc2
 b68:	2d 2d       	jc	$+604    	;abs 0xdc4
 b6a:	2d 2d       	jc	$+604    	;abs 0xdc6
 b6c:	2d 2d       	jc	$+604    	;abs 0xdc8
 b6e:	2d 2d       	jc	$+604    	;abs 0xdca
 b70:	0a 0a       	mova	@r10,	r10	;
 b72:	00 45       	br	r5		;
 b74:	72 72       	subc.b	#8,	r2	;r2 As==11
 b76:	6f 72       	subc.b	#4,	r15	;r2 As==10
 b78:	21 20       	jnz	$+68     	;abs 0xbbc
 b7a:	4e 6f       	addc.b	r15,	r14	;
 b7c:	20 57       	add	@r7,	r0	;
 b7e:	69 73       	subc.b	#2,	r9	;r3 As==10
 b80:	68 62       	addc.b	#4,	r8	;r2 As==10
 b82:	6f 6e       	addc.b	@r14,	r15	;
 b84:	65 20       	jnz	$+204    	;abs 0xc50
 b86:	61 64       	addc.b	@r4,	r1	;
 b88:	61 70       	subc.b	@r0,	r1	;
 b8a:	74 65       	addc.b	@r5+,	r4	;
 b8c:	72 20       	jnz	$+230    	;abs 0xc72
 b8e:	73 79       	.word	0x7973;	????
 b90:	6e 74       	subc.b	@r4,	r14	;
 b92:	68 65       	addc.b	@r5,	r8	;
 b94:	73 69       	.word	0x6973;	????
 b96:	7a 65       	addc.b	@r5+,	r10	;
 b98:	64 21       	jnz	$+714    	;abs 0xe62
 b9a:	00 0a       	bra	@r10		;
 b9c:	45 6e       	addc.b	r14,	r5	;
 b9e:	74 65       	addc.b	@r5+,	r4	;
 ba0:	72 20       	jnz	$+230    	;abs 0xc86
 ba2:	61 20       	jnz	$+196    	;abs 0xc66
 ba4:	63 6f       	.word	0x6f63;	????
 ba6:	6d 6d       	addc.b	@r13,	r13	;
 ba8:	61 6e       	addc.b	@r14,	r1	;
 baa:	64 3a       	jl	$-822    	;abs 0x874
 bac:	3e 20       	jnz	$+126    	;abs 0xc2a
 bae:	00 0a       	bra	@r10		;
 bb0:	00 68       	addc	r8,	r0	;
 bb2:	65 6c       	addc.b	@r12,	r5	;
 bb4:	70 00 65 6e 	mova	r0,	28261(r0); PC rel. 0x07a1b
 bb8:	61 62       	addc.b	#4,	r1	;r2 As==10
 bba:	6c 65       	addc.b	@r5,	r12	;
 bbc:	00 69       	addc	r9,	r0	;
 bbe:	64 00 77 72 	mova	r0,	&291447	; 0x47277
 bc2:	69 74       	subc.b	@r4,	r9	;
 bc4:	65 00 72 65 	mova	r0,	&353650	; 0x56572
 bc8:	61 64       	addc.b	@r4,	r1	;
 bca:	00 72       	subc	r2,	r0	;
 bcc:	65 73       	subc.b	#2,	r5	;r3 As==10
 bce:	65 74       	subc.b	@r4,	r5	;
 bd0:	00 41       	br	r1		;
 bd2:	76 61       	addc.b	@r1+,	r6	;
 bd4:	69 6c       	addc.b	@r12,	r9	;
 bd6:	61 62       	addc.b	#4,	r1	;r2 As==10
 bd8:	6c 65       	addc.b	@r5,	r12	;
 bda:	20 63       	addc	#2,	r0	;r3 As==10
 bdc:	6f 6d       	addc.b	@r13,	r15	;
 bde:	6d 61       	addc.b	@r1,	r13	;
 be0:	6e 64       	addc.b	@r4,	r14	;
 be2:	73 3a       	jl	$-792    	;abs 0x8ca
 be4:	0a 20       	jnz	$+22     	;abs 0xbfa
 be6:	68 65       	addc.b	@r5,	r8	;
 be8:	6c 70       	subc.b	@r0,	r12	;
 bea:	20 20       	jnz	$+66     	;abs 0xc2c
 bec:	20 2d       	jc	$+578    	;abs 0xe2e
 bee:	20 73       	subc	#2,	r0	;r3 As==10
 bf0:	68 6f       	addc.b	@r15,	r8	;
 bf2:	77 20       	jnz	$+240    	;abs 0xce2
 bf4:	74 68       	addc.b	@r8+,	r4	;
 bf6:	69 73       	subc.b	#2,	r9	;r3 As==10
 bf8:	20 74       	subc	@r4,	r0	;
 bfa:	65 78       	subc.b	@r8,	r5	;
 bfc:	74 0a 20 65 	mova	r10,	25888(r4); 0x06520
 c00:	6e 61       	addc.b	@r1,	r14	;
 c02:	62 6c       	addc.b	@r12,	r2	;
 c04:	65 20       	jnz	$+204    	;abs 0xcd0
 c06:	2d 20       	jnz	$+92     	;abs 0xc62
 c08:	65 6e       	addc.b	@r14,	r5	;
 c0a:	61 62       	addc.b	#4,	r1	;r2 As==10
 c0c:	6c 65       	addc.b	@r5,	r12	;
 c0e:	20 49       	br	@r9		;
 c10:	32 43       	mov	#-1,	r2	;r3 As==11
 c12:	20 62       	addc	#4,	r0	;r2 As==10
 c14:	72 69       	addc.b	@r9+,	r2	;
 c16:	64 67       	addc.b	@r7,	r4	;
 c18:	65 20       	jnz	$+204    	;abs 0xce4
 c1a:	6f 6e       	addc.b	@r14,	r15	;
 c1c:	20 45       	br	@r5		;
 c1e:	6e 63       	addc.b	#2,	r14	;r3 As==10
 c20:	6c 75       	subc.b	@r5,	r12	;
 c22:	73 74       	.word	0x7473;	????
 c24:	72 61       	addc.b	@r1+,	r2	;
 c26:	0a 20       	jnz	$+22     	;abs 0xc3c
 c28:	69 64       	addc.b	@r4,	r9	;
 c2a:	20 20       	jnz	$+66     	;abs 0xc6c
 c2c:	20 20       	jnz	$+66     	;abs 0xc6e
 c2e:	20 2d       	jc	$+578    	;abs 0xe70
 c30:	20 52       	add	#4,	r0	;r2 As==10
 c32:	65 61       	addc.b	@r1,	r5	;
 c34:	64 20       	jnz	$+202    	;abs 0xcfe
 c36:	66 72       	subc.b	#4,	r6	;r2 As==10
 c38:	6f 6d       	addc.b	@r13,	r15	;
 c3a:	20 45       	br	@r5		;
 c3c:	32 34       	jge	$+102    	;abs 0xca2
 c3e:	41 41       	mov.b	r1,	r1	;
 c40:	30 32       	jn	$-926    	;abs 0x8a2
 c42:	35 45       	mov	@r5+,	r5	;
 c44:	34 38       	jl	$+106    	;abs 0xcae
 c46:	54 20       	jnz	$+170    	;abs 0xcf0
 c48:	55 6e 69 71 	addc.b	29033(r14),r5	;0x07169
 c4c:	75 65       	addc.b	@r5+,	r5	;
 c4e:	20 49       	br	@r9		;
 c50:	44 0a       	rlam.a	#3,	r4	;
 c52:	20 77       	subc	@r7,	r0	;
 c54:	72 69       	addc.b	@r9+,	r2	;
 c56:	74 65       	addc.b	@r5+,	r4	;
 c58:	20 20       	jnz	$+66     	;abs 0xc9a
 c5a:	2d 20       	jnz	$+92     	;abs 0xcb6
 c5c:	77 72       	subc.b	#8,	r7	;r2 As==11
 c5e:	69 74       	subc.b	@r4,	r9	;
 c60:	65 20       	jnz	$+204    	;abs 0xd2c
 c62:	74 6f       	addc.b	@r15+,	r4	;
 c64:	20 45       	br	@r5		;
 c66:	32 34       	jge	$+102    	;abs 0xccc
 c68:	41 41       	mov.b	r1,	r1	;
 c6a:	30 32       	jn	$-926    	;abs 0x8cc
 c6c:	35 45       	mov	@r5+,	r5	;
 c6e:	34 38       	jl	$+106    	;abs 0xcd8
 c70:	54 20       	jnz	$+170    	;abs 0xd1a
 c72:	50 52 4f 4d 	add.b	&0x4d4f,r0	;0x4d4f
 c76:	20 61       	addc	@r1,	r0	;
 c78:	72 65       	addc.b	@r5+,	r2	;
 c7a:	61 20       	jnz	$+196    	;abs 0xd3e
 c7c:	0a 20       	jnz	$+22     	;abs 0xc92
 c7e:	72 65       	addc.b	@r5+,	r2	;
 c80:	61 64       	addc.b	@r4,	r1	;
 c82:	20 20       	jnz	$+66     	;abs 0xcc4
 c84:	20 2d       	jc	$+578    	;abs 0xec6
 c86:	20 72       	subc	#4,	r0	;r2 As==10
 c88:	65 61       	addc.b	@r1,	r5	;
 c8a:	64 20       	jnz	$+202    	;abs 0xd54
 c8c:	66 72       	subc.b	#4,	r6	;r2 As==10
 c8e:	6f 6d       	addc.b	@r13,	r15	;
 c90:	20 45       	br	@r5		;
 c92:	32 34       	jge	$+102    	;abs 0xcf8
 c94:	41 41       	mov.b	r1,	r1	;
 c96:	30 32       	jn	$-926    	;abs 0x8f8
 c98:	35 45       	mov	@r5+,	r5	;
 c9a:	34 38       	jl	$+106    	;abs 0xd04
 c9c:	54 20       	jnz	$+170    	;abs 0xd46
 c9e:	50 52 4f 4d 	add.b	&0x4d4f,r0	;0x4d4f
 ca2:	20 61       	addc	@r1,	r0	;
 ca4:	72 65       	addc.b	@r5+,	r2	;
 ca6:	61 20       	jnz	$+196    	;abs 0xd6a
 ca8:	0a 20       	jnz	$+22     	;abs 0xcbe
 caa:	72 65       	addc.b	@r5+,	r2	;
 cac:	73 65       	.word	0x6573;	????
 cae:	74 20       	jnz	$+234    	;abs 0xd98
 cb0:	20 2d       	jc	$+578    	;abs 0xef2
 cb2:	20 72       	subc	#4,	r0	;r2 As==10
 cb4:	65 73       	subc.b	#2,	r5	;r3 As==10
 cb6:	65 74       	subc.b	@r4,	r5	;
 cb8:	20 43       	br	#2		;r3 As==10
 cba:	50 55 0a 00 	add.b	10(r5),	r0	;0x0000a
 cbe:	0a 55       	add	r5,	r10	;
 cc0:	49 44       	mov.b	r4,	r9	;
 cc2:	20 66       	addc	@r6,	r0	;
 cc4:	72 6f       	addc.b	@r15+,	r2	;
 cc6:	6d 20       	jnz	$+220    	;abs 0xda2
 cc8:	45 32       	jn	$-884    	;abs 0x954
 cca:	34 41       	pop	r4		;
 ccc:	41 30       	jn	$+132    	;abs 0xd50
 cce:	32 35       	jge	$+614    	;abs 0xf34
 cd0:	45 34       	jge	$+140    	;abs 0xd5c
 cd2:	38 54       	add	@r4+,	r8	;
 cd4:	20 3d       	jmp	$+578    	;abs 0xf16
 cd6:	20 00 0a 44 	bra	&17418		;0x0440a
 cda:	61 74       	subc.b	@r4,	r1	;
 cdc:	61 20       	jnz	$+196    	;abs 0xda0
 cde:	66 72       	subc.b	#4,	r6	;r2 As==10
 ce0:	6f 6d       	addc.b	@r13,	r15	;
 ce2:	20 50       	add	@r0,	r0	;
 ce4:	52 4f 4d 20 	mov.b	8269(r15),r2	;0x0204d
 ce8:	3d 20       	jnz	$+124    	;abs 0xd64
 cea:	0a 00       	mova	@r0,	r10	;
 cec:	0a 49       	mov	r9,	r10	;
 cee:	50 20       	jnz	$+162    	;abs 0xd90
 cf0:	41 64       	addc.b	r4,	r1	;
 cf2:	64 72       	subc.b	#4,	r4	;r2 As==10
 cf4:	65 73       	subc.b	#2,	r5	;r3 As==10
 cf6:	73 20       	jnz	$+232    	;abs 0xdde
 cf8:	3d 20       	jnz	$+124    	;abs 0xd74
 cfa:	31 39       	jl	$+612    	;abs 0xf5e
 cfc:	32 2e       	jc	$-922    	;abs 0x962
 cfe:	31 36       	jge	$-924    	;abs 0x962
 d00:	38 2e       	jc	$-910    	;abs 0x972
 d02:	00 2e       	.word	0x2e00;	????
 d04:	00 49       	br	r9		;
 d06:	6e 76       	subc.b	@r6,	r14	;
 d08:	61 6c       	addc.b	@r12,	r1	;
 d0a:	69 64       	addc.b	@r4,	r9	;
 d0c:	20 63       	addc	#2,	r0	;r3 As==10
 d0e:	6f 6d       	addc.b	@r13,	r15	;
 d10:	6d 61       	addc.b	@r1,	r13	;
 d12:	6e 64       	addc.b	@r4,	r14	;
 d14:	2e 20       	jnz	$+94     	;abs 0xd72
 d16:	54 79 70 65 	subc.b	25968(r9),r4	;0x06570
 d1a:	20 27       	jz	$-446    	;abs 0xb5c
 d1c:	68 65       	addc.b	@r5,	r8	;
 d1e:	6c 70       	subc.b	@r0,	r12	;
 d20:	27 20       	jnz	$+80     	;abs 0xd70
 d22:	74 6f       	addc.b	@r15+,	r4	;
 d24:	20 73       	subc	#2,	r0	;r3 As==10
 d26:	65 65       	addc.b	@r5,	r5	;
 d28:	20 61       	addc	@r1,	r0	;
 d2a:	6c 6c       	addc.b	@r12,	r12	;
 d2c:	20 63       	addc	#2,	r0	;r3 As==10
 d2e:	6f 6d       	addc.b	@r13,	r15	;
 d30:	6d 61       	addc.b	@r1,	r13	;
 d32:	6e 64       	addc.b	@r4,	r14	;
 d34:	73 2e       	jc	$-792    	;abs 0xa1c
 d36:	0a 00       	mova	@r0,	r10	;
 d38:	08 20       	jnz	$+18     	;abs 0xd4a
 d3a:	08 00       	mova	@r0,	r8	;
 d3c:	0a 43       	clr	r10		;
 d3e:	68 65       	addc.b	@r5,	r8	;
 d40:	63 6b       	.word	0x6b63;	????
 d42:	69 6e       	addc.b	@r14,	r9	;
 d44:	67 20       	jnz	$+208    	;abs 0xe14
 d46:	41 43       	clr.b	r1		;
 d48:	4b 0a       	rlam.a	#3,	r11	;
 d4a:	00 53       	add	#0,	r0	;r3 As==00
 d4c:	65 74       	subc.b	@r4,	r5	;
 d4e:	74 69       	addc.b	@r9+,	r4	;
 d50:	6e 67       	addc.b	@r7,	r14	;
 d52:	20 75       	subc	@r5,	r0	;
 d54:	70 20       	jnz	$+226    	;abs 0xe36
 d56:	49 32       	jn	$-876    	;abs 0x9ea
 d58:	43 20       	jnz	$+136    	;abs 0xde0
 d5a:	63 6f       	.word	0x6f63;	????
 d5c:	72 65       	addc.b	@r5+,	r2	;
 d5e:	00 0a       	bra	@r10		;
 d60:	53 65       	.word	0x6553;	????
 d62:	74 75       	subc.b	@r5+,	r4	;
 d64:	70 20       	jnz	$+226    	;abs 0xe46
 d66:	64 6f       	addc.b	@r15,	r4	;
 d68:	6e 65       	addc.b	@r5,	r14	;
 d6a:	2e 0a 00 0a 	mova	&657920,r14	;0xa0a00
 d6e:	52 65 61 64 	addc.b	25697(r5),r2	;0x06461
 d72:	69 6e       	addc.b	@r14,	r9	;
 d74:	67 20       	jnz	$+208    	;abs 0xe44
 d76:	46 72       	subc.b	r2,	r6	;
 d78:	6f 6d       	addc.b	@r13,	r15	;
 d7a:	20 49       	br	@r9		;
 d7c:	32 43       	mov	#-1,	r2	;r3 As==11
 d7e:	2e 0a 00 0a 	mova	&657920,r14	;0xa0a00
 d82:	72 65       	addc.b	@r5+,	r2	;
 d84:	61 64       	addc.b	@r4,	r1	;
 d86:	5f 69 32 63 	addc.b	25394(r9),r15	;0x06332
 d8a:	5f 61 64 64 	addc.b	25700(r1),r15	;0x06464
 d8e:	72 65       	addc.b	@r5+,	r2	;
 d90:	73 73       	.word	0x7373;	????
 d92:	3a 20       	jnz	$+118    	;abs 0xe08
 d94:	4e 6f       	addc.b	r15,	r14	;
 d96:	20 41       	br	@r1		;
 d98:	43 4b       	.word	0x4b43;	????
 d9a:	2e 20       	jnz	$+94     	;abs 0xdf8
 d9c:	53 65       	.word	0x6553;	????
 d9e:	6e 64       	addc.b	@r4,	r14	;
 da0:	69 6e       	addc.b	@r14,	r9	;
 da2:	67 20       	jnz	$+208    	;abs 0xe72
 da4:	53 54       	.word	0x5453;	????
 da6:	4f 50       	add.b	r0,	r15	;
 da8:	20 61       	addc	@r1,	r0	;
 daa:	6e 64       	addc.b	@r4,	r14	;
 dac:	20 74       	subc	@r4,	r0	;
 dae:	65 72       	subc.b	#4,	r5	;r2 As==10
 db0:	6d 69       	addc.b	@r9,	r13	;
 db2:	6e 61       	addc.b	@r1,	r14	;
 db4:	74 69       	addc.b	@r9+,	r4	;
 db6:	6e 67       	addc.b	@r7,	r14	;
 db8:	20 72       	subc	#4,	r0	;r2 As==10
 dba:	65 61       	addc.b	@r1,	r5	;
 dbc:	64 2e       	jc	$-822    	;abs 0xa86
 dbe:	0a 00       	mova	@r0,	r10	;
 dc0:	0a 72       	subc	r2,	r10	;
 dc2:	65 61       	addc.b	@r1,	r5	;
 dc4:	64 5f       	add.b	@r15,	r4	;
 dc6:	69 32       	jn	$-812    	;abs 0xa9a
 dc8:	63 5f       	.word	0x5f63;	????
 dca:	61 64       	addc.b	@r4,	r1	;
 dcc:	64 72       	subc.b	#4,	r4	;r2 As==10
 dce:	65 73       	subc.b	#2,	r5	;r3 As==10
 dd0:	73 3a       	jl	$-792    	;abs 0xab8
 dd2:	20 41       	br	@r1		;
 dd4:	43 4b       	.word	0x4b43;	????
 dd6:	20 3d       	jmp	$+578    	;abs 0x1018
 dd8:	20 00 0a 00 	bra	&10		;0x0000a
 ddc:	0a 57       	add	r7,	r10	;
 dde:	72 69       	addc.b	@r9+,	r2	;
 de0:	74 69       	addc.b	@r9+,	r4	;
 de2:	6e 67       	addc.b	@r7,	r14	;
 de4:	20 74       	subc	@r4,	r0	;
 de6:	6f 20       	jnz	$+224    	;abs 0xec6
 de8:	49 32       	jn	$-876    	;abs 0xa7c
 dea:	43 2e       	jc	$-888    	;abs 0xa72
 dec:	0a 00       	mova	@r0,	r10	;
 dee:	0a 77       	subc	r7,	r10	;
 df0:	72 69       	addc.b	@r9+,	r2	;
 df2:	74 65       	addc.b	@r5+,	r4	;
 df4:	5f 69 32 63 	addc.b	25394(r9),r15	;0x06332
 df8:	5f 61 64 64 	addc.b	25700(r1),r15	;0x06464
 dfc:	72 65       	addc.b	@r5+,	r2	;
 dfe:	73 73       	.word	0x7373;	????
 e00:	3a 20       	jnz	$+118    	;abs 0xe76
 e02:	4e 6f       	addc.b	r15,	r14	;
 e04:	20 41       	br	@r1		;
 e06:	43 4b       	.word	0x4b43;	????
 e08:	20 69       	addc	@r9,	r0	;
 e0a:	6e 20       	jnz	$+222    	;abs 0xee8
 e0c:	72 65       	addc.b	@r5+,	r2	;
 e0e:	73 70       	.word	0x7073;	????
 e10:	6f 6e       	addc.b	@r14,	r15	;
 e12:	73 65       	.word	0x6573;	????
 e14:	20 74       	subc	@r4,	r0	;
 e16:	6f 20       	jnz	$+224    	;abs 0xef6
 e18:	64 65       	addc.b	@r5,	r4	;
 e1a:	76 69       	addc.b	@r9+,	r6	;
 e1c:	63 65       	.word	0x6563;	????
 e1e:	2d 49       	mov	@r9,	r13	;
 e20:	44 2e       	jc	$-886    	;abs 0xaaa
 e22:	20 53       	incd	r0		;
 e24:	65 6e       	addc.b	@r14,	r5	;
 e26:	64 69       	addc.b	@r9,	r4	;
 e28:	6e 67       	addc.b	@r7,	r14	;
 e2a:	20 53       	incd	r0		;
 e2c:	54 4f 50 20 	mov.b	8272(r15),r4	;0x02050
 e30:	61 6e       	addc.b	@r14,	r1	;
 e32:	64 20       	jnz	$+202    	;abs 0xefc
 e34:	74 65       	addc.b	@r5+,	r4	;
 e36:	72 6d       	addc.b	@r13+,	r2	;
 e38:	69 6e       	addc.b	@r14,	r9	;
 e3a:	61 74       	subc.b	@r4,	r1	;
 e3c:	69 6e       	addc.b	@r14,	r9	;
 e3e:	67 2e       	jc	$-816    	;abs 0xb0e
 e40:	0a 00       	mova	@r0,	r10	;
 e42:	0a 77       	subc	r7,	r10	;
 e44:	72 69       	addc.b	@r9+,	r2	;
 e46:	74 65       	addc.b	@r5+,	r4	;
 e48:	5f 69 32 63 	addc.b	25394(r9),r15	;0x06332
 e4c:	5f 61 64 64 	addc.b	25700(r1),r15	;0x06464
 e50:	72 65       	addc.b	@r5+,	r2	;
 e52:	73 73       	.word	0x7373;	????
 e54:	3a 20       	jnz	$+118    	;abs 0xeca
 e56:	57 72 69 74 	subc.b	&0x7469,r7	;0x7469
 e5a:	69 6e       	addc.b	@r14,	r9	;
 e5c:	67 20       	jnz	$+208    	;abs 0xf2c
 e5e:	53 54       	.word	0x5453;	????
 e60:	4f 50       	add.b	r0,	r15	;
 e62:	0a 00       	mova	@r0,	r10	;
 e64:	0a 77       	subc	r7,	r10	;
 e66:	72 69       	addc.b	@r9+,	r2	;
 e68:	74 65       	addc.b	@r5+,	r4	;
 e6a:	5f 69 32 63 	addc.b	25394(r9),r15	;0x06332
 e6e:	5f 61 64 64 	addc.b	25700(r1),r15	;0x06464
 e72:	72 65       	addc.b	@r5+,	r2	;
 e74:	73 73       	.word	0x7373;	????
 e76:	3a 20       	jnz	$+118    	;abs 0xeec
 e78:	52 65 74 75 	addc.b	30068(r5),r2	;0x07574
 e7c:	72 6e       	addc.b	@r14+,	r2	;
 e7e:	69 6e       	addc.b	@r14,	r9	;
 e80:	67 20       	jnz	$+208    	;abs 0xf50
 e82:	77 69       	addc.b	@r9+,	r7	;
 e84:	74 68       	addc.b	@r8+,	r4	;
 e86:	6f 75       	subc.b	@r5,	r15	;
 e88:	74 20       	jnz	$+234    	;abs 0xf72
 e8a:	77 72       	subc.b	#8,	r7	;r2 As==11
 e8c:	69 74       	subc.b	@r4,	r9	;
 e8e:	69 6e       	addc.b	@r14,	r9	;
 e90:	67 20       	jnz	$+208    	;abs 0xf60
 e92:	53 54       	.word	0x5453;	????
 e94:	4f 50       	add.b	r0,	r15	;
 e96:	0a 00       	mova	@r0,	r10	;
 e98:	0a 45       	mov	r5,	r10	;
 e9a:	6e 61       	addc.b	@r1,	r14	;
 e9c:	62 6c       	addc.b	@r12,	r2	;
 e9e:	69 6e       	addc.b	@r14,	r9	;
 ea0:	67 20       	jnz	$+208    	;abs 0xf70
 ea2:	49 32       	jn	$-876    	;abs 0xb36
 ea4:	43 20       	jnz	$+136    	;abs 0xf2c
 ea6:	62 72       	subc.b	#4,	r2	;r2 As==10
 ea8:	69 64       	addc.b	@r4,	r9	;
 eaa:	67 65       	addc.b	@r5,	r7	;
 eac:	3a 0a 00 0a 	mova	2560(r10),r10	;0x00a00
 eb0:	57 72 69 74 	subc.b	&0x7469,r7	;0x7469
 eb4:	69 6e       	addc.b	@r14,	r9	;
 eb6:	67 20       	jnz	$+208    	;abs 0xf86
 eb8:	30 78       	subc	@r8+,	r0	;
 eba:	30 31       	jn	$+610    	;abs 0x111c
 ebc:	2c 30       	jn	$+90     	;abs 0xf16
 ebe:	78 37       	jge	$-270    	;abs 0xdb0
 ec0:	46 20       	jnz	$+142    	;abs 0xf4e
 ec2:	74 6f       	addc.b	@r15+,	r4	;
 ec4:	20 49       	br	@r9		;
 ec6:	32 43       	mov	#-1,	r2	;r3 As==11
 ec8:	42 52       	rla.b	r2		;
 eca:	49 44       	mov.b	r4,	r9	;
 ecc:	47 45       	mov.b	r5,	r7	;
 ece:	2e 20       	jnz	$+94     	;abs 0xf2c
 ed0:	53 74       	.word	0x7453;	????
 ed2:	6f 70       	subc.b	@r0,	r15	;
 ed4:	20 3d       	jmp	$+578    	;abs 0x1116
 ed6:	20 74       	subc	@r4,	r0	;
 ed8:	72 75       	subc.b	@r5+,	r2	;
 eda:	65 3a       	jl	$-820    	;abs 0xba6
 edc:	0a 00       	mova	@r0,	r10	;
 ede:	0a 57       	add	r7,	r10	;
 ee0:	72 69       	addc.b	@r9+,	r2	;
 ee2:	74 69       	addc.b	@r9+,	r4	;
 ee4:	6e 67       	addc.b	@r7,	r14	;
 ee6:	20 30       	jn	$+66     	;abs 0xf28
 ee8:	78 30       	jn	$+242    	;abs 0xfda
 eea:	31 20       	jnz	$+100    	;abs 0xf4e
 eec:	74 6f       	addc.b	@r15+,	r4	;
 eee:	20 49       	br	@r9		;
 ef0:	32 43       	mov	#-1,	r2	;r3 As==11
 ef2:	42 52       	rla.b	r2		;
 ef4:	49 44       	mov.b	r4,	r9	;
 ef6:	47 45       	mov.b	r5,	r7	;
 ef8:	2e 20       	jnz	$+94     	;abs 0xf56
 efa:	53 74       	.word	0x7453;	????
 efc:	6f 70       	subc.b	@r0,	r15	;
 efe:	20 3d       	jmp	$+578    	;abs 0x1140
 f00:	20 66       	addc	@r6,	r0	;
 f02:	61 6c       	addc.b	@r12,	r1	;
 f04:	73 65       	.word	0x6573;	????
 f06:	3a 0a 00 0a 	mova	2560(r10),r10	;0x00a00
 f0a:	52 65 61 64 	addc.b	25697(r5),r2	;0x06461
 f0e:	69 6e       	addc.b	@r14,	r9	;
 f10:	67 20       	jnz	$+208    	;abs 0xfe0
 f12:	6f 6e       	addc.b	@r14,	r15	;
 f14:	65 20       	jnz	$+204    	;abs 0xfe0
 f16:	77 6f       	addc.b	@r15+,	r7	;
 f18:	72 64       	addc.b	@r4+,	r2	;
 f1a:	20 66       	addc	@r6,	r0	;
 f1c:	72 6f       	addc.b	@r15+,	r2	;
 f1e:	6d 20       	jnz	$+220    	;abs 0xffa
 f20:	49 32       	jn	$-876    	;abs 0xbb4
 f22:	43 42       	.word	0x4243;	????
 f24:	52 49 44 47 	mov.b	18244(r9),r2	;0x04744
 f28:	45 3a       	jl	$-884    	;abs 0xbb4
 f2a:	0a 00       	mova	@r0,	r10	;
 f2c:	50 6f 73 74 	addc.b	29811(r15),r0	;0x07473
 f30:	20 52       	add	#4,	r0	;r2 As==10
 f32:	65 67       	addc.b	@r7,	r5	;
 f34:	44 69       	addc.b	r9,	r4	;
 f36:	72 3a       	jl	$-794    	;abs 0xc1c
 f38:	20 00 20 72 	bra	&29216		;0x07220
 f3c:	65 61       	addc.b	@r1,	r5	;
 f3e:	64 5f       	add.b	@r15,	r4	;
 f40:	69 32       	jn	$-812    	;abs 0xc14
 f42:	63 5f       	.word	0x5f63;	????
 f44:	70 72       	subc.b	#8,	r0	;r2 As==11
 f46:	6f 6d       	addc.b	@r13,	r15	;
 f48:	3a 20       	jnz	$+118    	;abs 0xfbe
 f4a:	57 72 69 74 	subc.b	&0x7469,r7	;0x7469
 f4e:	69 6e       	addc.b	@r14,	r9	;
 f50:	67 20       	jnz	$+208    	;abs 0x1020
 f52:	64 65       	addc.b	@r5,	r4	;
 f54:	76 69       	addc.b	@r9+,	r6	;
 f56:	63 65       	.word	0x6563;	????
 f58:	20 49       	br	@r9		;
 f5a:	44 3a       	jl	$-886    	;abs 0xbe4
 f5c:	20 00 72 65 	bra	&25970		;0x06572
 f60:	61 64       	addc.b	@r4,	r1	;
 f62:	5f 69 32 63 	addc.b	25394(r9),r15	;0x06332
 f66:	5f 70 72 6f 	subc.b	0x6f72,	r15	;PC rel. 0x7eda
 f6a:	6d 3a       	jl	$-804    	;abs 0xc46
 f6c:	20 52       	add	#4,	r0	;r2 As==10
 f6e:	65 61       	addc.b	@r1,	r5	;
 f70:	64 69       	addc.b	@r9,	r4	;
 f72:	6e 67       	addc.b	@r7,	r14	;
 f74:	20 6d       	addc	@r13,	r0	;
 f76:	65 6d       	addc.b	@r13,	r5	;
 f78:	6f 72       	subc.b	#4,	r15	;r2 As==10
 f7a:	79 20       	jnz	$+244    	;abs 0x106e
 f7c:	6f 66       	addc.b	@r6,	r15	;
 f7e:	20 45       	br	@r5		;
 f80:	45 50       	add.b	r0,	r5	;
 f82:	52 4f 4d 3a 	mov.b	14925(r15),r2	;0x03a4d
 f86:	20 00 44 61 	bra	&24900		;0x06144
 f8a:	74 61       	addc.b	@r1+,	r4	;
 f8c:	20 66       	addc	@r6,	r0	;
 f8e:	72 6f       	addc.b	@r15+,	r2	;
 f90:	6d 20       	jnz	$+220    	;abs 0x106c
 f92:	45 45       	mov.b	r5,	r5	;
 f94:	50 52 4f 4d 	add.b	&0x4d4f,r0	;0x4d4f
 f98:	0a 00       	mova	@r0,	r10	;
 f9a:	45 6e       	addc.b	r14,	r5	;
 f9c:	74 65       	addc.b	@r5+,	r4	;
 f9e:	72 20       	jnz	$+230    	;abs 0x1084
 fa0:	68 65       	addc.b	@r5,	r8	;
 fa2:	78 61       	addc.b	@r1+,	r8	;
 fa4:	64 65       	addc.b	@r5,	r4	;
 fa6:	63 69       	.word	0x6963;	????
 fa8:	6d 61       	addc.b	@r1,	r13	;
 faa:	6c 20       	jnz	$+218    	;abs 0x1084
 fac:	64 61       	addc.b	@r1,	r4	;
 fae:	74 61       	addc.b	@r1+,	r4	;
 fb0:	20 74       	subc	@r4,	r0	;
 fb2:	6f 20       	jnz	$+224    	;abs 0x1092
 fb4:	77 72       	subc.b	#8,	r7	;r2 As==11
 fb6:	69 74       	subc.b	@r4,	r9	;
 fb8:	65 20       	jnz	$+204    	;abs 0x1084
 fba:	74 6f       	addc.b	@r15+,	r4	;
 fbc:	20 50       	add	@r0,	r0	;
 fbe:	52 4f 4d 3a 	mov.b	14925(r15),r2	;0x03a4d
 fc2:	20 30       	jn	$+66     	;abs 0x1004
 fc4:	78 00 02 20 	Address 0x00000fc6 is out of bounds.
mova	r0,	-1(r8)	; 0xffffffff

Disassembly of section .bss:

0000c008 <command>:
    c008:	00 00       	beq			
    c00a:	00 00       	beq			
    c00c:	00 00       	beq			
    c00e:	00 00       	beq			
    c010:	00 00       	beq			
    c012:	00 00       	beq			
    c014:	00 00       	beq			
    c016:	00 00       	beq			

0000c018 <buffer>:
    c018:	00 00       	beq			
    c01a:	00 00       	beq			
    c01c:	00 00       	beq			
    c01e:	00 00       	beq			
    c020:	00 00       	beq			
    c022:	00 00       	beq			
    c024:	00 00       	beq			
    c026:	00 00       	beq			

Disassembly of section .MP430.attributes:

00000000 <.MP430.attributes>:
   0:	41 16       	popm.a	#5,	r5	;20-bit words
   2:	00 00       	beq			
   4:	00 6d       	addc	r13,	r0	;
   6:	73 70       	.word	0x7073;	????
   8:	61 62       	addc.b	#4,	r1	;r2 As==10
   a:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
   e:	00 00       	beq			
  10:	00 04       	bra	@r4		;
  12:	01 06       	mova	@r6,	r1	;
  14:	01 08       	mova	@r8,	r1	;
  16:	01 41       	mov	r1,	r1	;
  18:	16 00       	mova	@r0+,	r6	;
  1a:	00 00       	beq			
  1c:	6d 73       	subc.b	#2,	r13	;r3 As==10
  1e:	70 61       	addc.b	@r1+,	r0	;
  20:	62 69       	addc.b	@r9,	r2	;
  22:	00 01       	bra	@r1		;
  24:	0b 00       	mova	@r0,	r11	;
  26:	00 00       	beq			
  28:	04 01       	mova	@r1,	r4	;
  2a:	06 01       	mova	@r1,	r6	;
  2c:	08 01       	mova	@r1,	r8	;
  2e:	41 16       	popm.a	#5,	r5	;20-bit words
  30:	00 00       	beq			
  32:	00 6d       	addc	r13,	r0	;
  34:	73 70       	.word	0x7073;	????
  36:	61 62       	addc.b	#4,	r1	;r2 As==10
  38:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
  3c:	00 00       	beq			
  3e:	00 04       	bra	@r4		;
  40:	01 06       	mova	@r6,	r1	;
  42:	01 08       	mova	@r8,	r1	;
  44:	01 41       	mov	r1,	r1	;
  46:	16 00       	mova	@r0+,	r6	;
  48:	00 00       	beq			
  4a:	6d 73       	subc.b	#2,	r13	;r3 As==10
  4c:	70 61       	addc.b	@r1+,	r0	;
  4e:	62 69       	addc.b	@r9,	r2	;
  50:	00 01       	bra	@r1		;
  52:	0b 00       	mova	@r0,	r11	;
  54:	00 00       	beq			
  56:	04 01       	mova	@r1,	r4	;
  58:	06 01       	mova	@r1,	r6	;
  5a:	08 01       	mova	@r1,	r8	;
  5c:	41 16       	popm.a	#5,	r5	;20-bit words
  5e:	00 00       	beq			
  60:	00 6d       	addc	r13,	r0	;
  62:	73 70       	.word	0x7073;	????
  64:	61 62       	addc.b	#4,	r1	;r2 As==10
  66:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
  6a:	00 00       	beq			
  6c:	00 04       	bra	@r4		;
  6e:	01 06       	mova	@r6,	r1	;
  70:	01 08       	mova	@r8,	r1	;
  72:	01 41       	mov	r1,	r1	;
  74:	16 00       	mova	@r0+,	r6	;
  76:	00 00       	beq			
  78:	6d 73       	subc.b	#2,	r13	;r3 As==10
  7a:	70 61       	addc.b	@r1+,	r0	;
  7c:	62 69       	addc.b	@r9,	r2	;
  7e:	00 01       	bra	@r1		;
  80:	0b 00       	mova	@r0,	r11	;
  82:	00 00       	beq			
  84:	04 01       	mova	@r1,	r4	;
  86:	06 01       	mova	@r1,	r6	;
  88:	08 01       	mova	@r1,	r8	;
  8a:	41 16       	popm.a	#5,	r5	;20-bit words
  8c:	00 00       	beq			
  8e:	00 6d       	addc	r13,	r0	;
  90:	73 70       	.word	0x7073;	????
  92:	61 62       	addc.b	#4,	r1	;r2 As==10
  94:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
  98:	00 00       	beq			
  9a:	00 04       	bra	@r4		;
  9c:	01 06       	mova	@r6,	r1	;
  9e:	01 08       	mova	@r8,	r1	;
  a0:	01 41       	mov	r1,	r1	;
  a2:	16 00       	mova	@r0+,	r6	;
  a4:	00 00       	beq			
  a6:	6d 73       	subc.b	#2,	r13	;r3 As==10
  a8:	70 61       	addc.b	@r1+,	r0	;
  aa:	62 69       	addc.b	@r9,	r2	;
  ac:	00 01       	bra	@r1		;
  ae:	0b 00       	mova	@r0,	r11	;
  b0:	00 00       	beq			
  b2:	04 01       	mova	@r1,	r4	;
  b4:	06 01       	mova	@r1,	r6	;
  b6:	08 01       	mova	@r1,	r8	;
  b8:	41 16       	popm.a	#5,	r5	;20-bit words
  ba:	00 00       	beq			
  bc:	00 6d       	addc	r13,	r0	;
  be:	73 70       	.word	0x7073;	????
  c0:	61 62       	addc.b	#4,	r1	;r2 As==10
  c2:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
  c6:	00 00       	beq			
  c8:	00 04       	bra	@r4		;
  ca:	01 06       	mova	@r6,	r1	;
  cc:	01 08       	mova	@r8,	r1	;
  ce:	01 41       	mov	r1,	r1	;
  d0:	16 00       	mova	@r0+,	r6	;
  d2:	00 00       	beq			
  d4:	6d 73       	subc.b	#2,	r13	;r3 As==10
  d6:	70 61       	addc.b	@r1+,	r0	;
  d8:	62 69       	addc.b	@r9,	r2	;
  da:	00 01       	bra	@r1		;
  dc:	0b 00       	mova	@r0,	r11	;
  de:	00 00       	beq			
  e0:	04 01       	mova	@r1,	r4	;
  e2:	06 01       	mova	@r1,	r6	;
  e4:	08 01       	mova	@r1,	r8	;
  e6:	41 16       	popm.a	#5,	r5	;20-bit words
  e8:	00 00       	beq			
  ea:	00 6d       	addc	r13,	r0	;
  ec:	73 70       	.word	0x7073;	????
  ee:	61 62       	addc.b	#4,	r1	;r2 As==10
  f0:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
  f4:	00 00       	beq			
  f6:	00 04       	bra	@r4		;
  f8:	01 06       	mova	@r6,	r1	;
  fa:	01 08       	mova	@r8,	r1	;
  fc:	01 41       	mov	r1,	r1	;
  fe:	16 00       	mova	@r0+,	r6	;
 100:	00 00       	beq			
 102:	6d 73       	subc.b	#2,	r13	;r3 As==10
 104:	70 61       	addc.b	@r1+,	r0	;
 106:	62 69       	addc.b	@r9,	r2	;
 108:	00 01       	bra	@r1		;
 10a:	0b 00       	mova	@r0,	r11	;
 10c:	00 00       	beq			
 10e:	04 01       	mova	@r1,	r4	;
 110:	06 01       	mova	@r1,	r6	;
 112:	08 01       	mova	@r1,	r8	;
 114:	41 16       	popm.a	#5,	r5	;20-bit words
 116:	00 00       	beq			
 118:	00 6d       	addc	r13,	r0	;
 11a:	73 70       	.word	0x7073;	????
 11c:	61 62       	addc.b	#4,	r1	;r2 As==10
 11e:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 122:	00 00       	beq			
 124:	00 04       	bra	@r4		;
 126:	01 06       	mova	@r6,	r1	;
 128:	01 08       	mova	@r8,	r1	;
 12a:	01 41       	mov	r1,	r1	;
 12c:	16 00       	mova	@r0+,	r6	;
 12e:	00 00       	beq			
 130:	6d 73       	subc.b	#2,	r13	;r3 As==10
 132:	70 61       	addc.b	@r1+,	r0	;
 134:	62 69       	addc.b	@r9,	r2	;
 136:	00 01       	bra	@r1		;
 138:	0b 00       	mova	@r0,	r11	;
 13a:	00 00       	beq			
 13c:	04 01       	mova	@r1,	r4	;
 13e:	06 01       	mova	@r1,	r6	;
 140:	08 01       	mova	@r1,	r8	;
 142:	41 16       	popm.a	#5,	r5	;20-bit words
 144:	00 00       	beq			
 146:	00 6d       	addc	r13,	r0	;
 148:	73 70       	.word	0x7073;	????
 14a:	61 62       	addc.b	#4,	r1	;r2 As==10
 14c:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 150:	00 00       	beq			
 152:	00 04       	bra	@r4		;
 154:	01 06       	mova	@r6,	r1	;
 156:	01 08       	mova	@r8,	r1	;
 158:	01 41       	mov	r1,	r1	;
 15a:	16 00       	mova	@r0+,	r6	;
 15c:	00 00       	beq			
 15e:	6d 73       	subc.b	#2,	r13	;r3 As==10
 160:	70 61       	addc.b	@r1+,	r0	;
 162:	62 69       	addc.b	@r9,	r2	;
 164:	00 01       	bra	@r1		;
 166:	0b 00       	mova	@r0,	r11	;
 168:	00 00       	beq			
 16a:	04 01       	mova	@r1,	r4	;
 16c:	06 01       	mova	@r1,	r6	;
 16e:	08 01       	mova	@r1,	r8	;
 170:	41 16       	popm.a	#5,	r5	;20-bit words
 172:	00 00       	beq			
 174:	00 6d       	addc	r13,	r0	;
 176:	73 70       	.word	0x7073;	????
 178:	61 62       	addc.b	#4,	r1	;r2 As==10
 17a:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 17e:	00 00       	beq			
 180:	00 04       	bra	@r4		;
 182:	01 06       	mova	@r6,	r1	;
 184:	01 08       	mova	@r8,	r1	;
 186:	01 41       	mov	r1,	r1	;
 188:	16 00       	mova	@r0+,	r6	;
 18a:	00 00       	beq			
 18c:	6d 73       	subc.b	#2,	r13	;r3 As==10
 18e:	70 61       	addc.b	@r1+,	r0	;
 190:	62 69       	addc.b	@r9,	r2	;
 192:	00 01       	bra	@r1		;
 194:	0b 00       	mova	@r0,	r11	;
 196:	00 00       	beq			
 198:	04 01       	mova	@r1,	r4	;
 19a:	06 01       	mova	@r1,	r6	;
 19c:	08 01       	mova	@r1,	r8	;
 19e:	41 16       	popm.a	#5,	r5	;20-bit words
 1a0:	00 00       	beq			
 1a2:	00 6d       	addc	r13,	r0	;
 1a4:	73 70       	.word	0x7073;	????
 1a6:	61 62       	addc.b	#4,	r1	;r2 As==10
 1a8:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 1ac:	00 00       	beq			
 1ae:	00 04       	bra	@r4		;
 1b0:	01 06       	mova	@r6,	r1	;
 1b2:	01 08       	mova	@r8,	r1	;
 1b4:	01 41       	mov	r1,	r1	;
 1b6:	16 00       	mova	@r0+,	r6	;
 1b8:	00 00       	beq			
 1ba:	6d 73       	subc.b	#2,	r13	;r3 As==10
 1bc:	70 61       	addc.b	@r1+,	r0	;
 1be:	62 69       	addc.b	@r9,	r2	;
 1c0:	00 01       	bra	@r1		;
 1c2:	0b 00       	mova	@r0,	r11	;
 1c4:	00 00       	beq			
 1c6:	04 01       	mova	@r1,	r4	;
 1c8:	06 01       	mova	@r1,	r6	;
 1ca:	08 01       	mova	@r1,	r8	;
 1cc:	41 16       	popm.a	#5,	r5	;20-bit words
 1ce:	00 00       	beq			
 1d0:	00 6d       	addc	r13,	r0	;
 1d2:	73 70       	.word	0x7073;	????
 1d4:	61 62       	addc.b	#4,	r1	;r2 As==10
 1d6:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 1da:	00 00       	beq			
 1dc:	00 04       	bra	@r4		;
 1de:	01 06       	mova	@r6,	r1	;
 1e0:	01 08       	mova	@r8,	r1	;
 1e2:	01 41       	mov	r1,	r1	;
 1e4:	16 00       	mova	@r0+,	r6	;
 1e6:	00 00       	beq			
 1e8:	6d 73       	subc.b	#2,	r13	;r3 As==10
 1ea:	70 61       	addc.b	@r1+,	r0	;
 1ec:	62 69       	addc.b	@r9,	r2	;
 1ee:	00 01       	bra	@r1		;
 1f0:	0b 00       	mova	@r0,	r11	;
 1f2:	00 00       	beq			
 1f4:	04 01       	mova	@r1,	r4	;
 1f6:	06 01       	mova	@r1,	r6	;
 1f8:	08 01       	mova	@r1,	r8	;
 1fa:	41 16       	popm.a	#5,	r5	;20-bit words
 1fc:	00 00       	beq			
 1fe:	00 6d       	addc	r13,	r0	;
 200:	73 70       	.word	0x7073;	????
 202:	61 62       	addc.b	#4,	r1	;r2 As==10
 204:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 208:	00 00       	beq			
 20a:	00 04       	bra	@r4		;
 20c:	01 06       	mova	@r6,	r1	;
 20e:	01 08       	mova	@r8,	r1	;
 210:	01 41       	mov	r1,	r1	;
 212:	16 00       	mova	@r0+,	r6	;
 214:	00 00       	beq			
 216:	6d 73       	subc.b	#2,	r13	;r3 As==10
 218:	70 61       	addc.b	@r1+,	r0	;
 21a:	62 69       	addc.b	@r9,	r2	;
 21c:	00 01       	bra	@r1		;
 21e:	0b 00       	mova	@r0,	r11	;
 220:	00 00       	beq			
 222:	04 01       	mova	@r1,	r4	;
 224:	06 01       	mova	@r1,	r6	;
 226:	08 01       	mova	@r1,	r8	;
 228:	41 16       	popm.a	#5,	r5	;20-bit words
 22a:	00 00       	beq			
 22c:	00 6d       	addc	r13,	r0	;
 22e:	73 70       	.word	0x7073;	????
 230:	61 62       	addc.b	#4,	r1	;r2 As==10
 232:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 236:	00 00       	beq			
 238:	00 04       	bra	@r4		;
 23a:	01 06       	mova	@r6,	r1	;
 23c:	01 08       	mova	@r8,	r1	;
 23e:	01 41       	mov	r1,	r1	;
 240:	16 00       	mova	@r0+,	r6	;
 242:	00 00       	beq			
 244:	6d 73       	subc.b	#2,	r13	;r3 As==10
 246:	70 61       	addc.b	@r1+,	r0	;
 248:	62 69       	addc.b	@r9,	r2	;
 24a:	00 01       	bra	@r1		;
 24c:	0b 00       	mova	@r0,	r11	;
 24e:	00 00       	beq			
 250:	04 01       	mova	@r1,	r4	;
 252:	06 01       	mova	@r1,	r6	;
 254:	08 01       	mova	@r1,	r8	;
 256:	41 16       	popm.a	#5,	r5	;20-bit words
 258:	00 00       	beq			
 25a:	00 6d       	addc	r13,	r0	;
 25c:	73 70       	.word	0x7073;	????
 25e:	61 62       	addc.b	#4,	r1	;r2 As==10
 260:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 264:	00 00       	beq			
 266:	00 04       	bra	@r4		;
 268:	01 06       	mova	@r6,	r1	;
 26a:	01 08       	mova	@r8,	r1	;
 26c:	01 41       	mov	r1,	r1	;
 26e:	16 00       	mova	@r0+,	r6	;
 270:	00 00       	beq			
 272:	6d 73       	subc.b	#2,	r13	;r3 As==10
 274:	70 61       	addc.b	@r1+,	r0	;
 276:	62 69       	addc.b	@r9,	r2	;
 278:	00 01       	bra	@r1		;
 27a:	0b 00       	mova	@r0,	r11	;
 27c:	00 00       	beq			
 27e:	04 01       	mova	@r1,	r4	;
 280:	06 01       	mova	@r1,	r6	;
 282:	08 01       	mova	@r1,	r8	;
 284:	41 16       	popm.a	#5,	r5	;20-bit words
 286:	00 00       	beq			
 288:	00 6d       	addc	r13,	r0	;
 28a:	73 70       	.word	0x7073;	????
 28c:	61 62       	addc.b	#4,	r1	;r2 As==10
 28e:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 292:	00 00       	beq			
 294:	00 04       	bra	@r4		;
 296:	01 06       	mova	@r6,	r1	;
 298:	01 08       	mova	@r8,	r1	;
 29a:	01 41       	mov	r1,	r1	;
 29c:	16 00       	mova	@r0+,	r6	;
 29e:	00 00       	beq			
 2a0:	6d 73       	subc.b	#2,	r13	;r3 As==10
 2a2:	70 61       	addc.b	@r1+,	r0	;
 2a4:	62 69       	addc.b	@r9,	r2	;
 2a6:	00 01       	bra	@r1		;
 2a8:	0b 00       	mova	@r0,	r11	;
 2aa:	00 00       	beq			
 2ac:	04 01       	mova	@r1,	r4	;
 2ae:	06 01       	mova	@r1,	r6	;
 2b0:	08 01       	mova	@r1,	r8	;
 2b2:	41 16       	popm.a	#5,	r5	;20-bit words
 2b4:	00 00       	beq			
 2b6:	00 6d       	addc	r13,	r0	;
 2b8:	73 70       	.word	0x7073;	????
 2ba:	61 62       	addc.b	#4,	r1	;r2 As==10
 2bc:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 2c0:	00 00       	beq			
 2c2:	00 04       	bra	@r4		;
 2c4:	01 06       	mova	@r6,	r1	;
 2c6:	01 08       	mova	@r8,	r1	;
 2c8:	01 41       	mov	r1,	r1	;
 2ca:	16 00       	mova	@r0+,	r6	;
 2cc:	00 00       	beq			
 2ce:	6d 73       	subc.b	#2,	r13	;r3 As==10
 2d0:	70 61       	addc.b	@r1+,	r0	;
 2d2:	62 69       	addc.b	@r9,	r2	;
 2d4:	00 01       	bra	@r1		;
 2d6:	0b 00       	mova	@r0,	r11	;
 2d8:	00 00       	beq			
 2da:	04 01       	mova	@r1,	r4	;
 2dc:	06 01       	mova	@r1,	r6	;
 2de:	08 01       	mova	@r1,	r8	;
 2e0:	41 16       	popm.a	#5,	r5	;20-bit words
 2e2:	00 00       	beq			
 2e4:	00 6d       	addc	r13,	r0	;
 2e6:	73 70       	.word	0x7073;	????
 2e8:	61 62       	addc.b	#4,	r1	;r2 As==10
 2ea:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 2ee:	00 00       	beq			
 2f0:	00 04       	bra	@r4		;
 2f2:	01 06       	mova	@r6,	r1	;
 2f4:	01 08       	mova	@r8,	r1	;
 2f6:	01 41       	mov	r1,	r1	;
 2f8:	16 00       	mova	@r0+,	r6	;
 2fa:	00 00       	beq			
 2fc:	6d 73       	subc.b	#2,	r13	;r3 As==10
 2fe:	70 61       	addc.b	@r1+,	r0	;
 300:	62 69       	addc.b	@r9,	r2	;
 302:	00 01       	bra	@r1		;
 304:	0b 00       	mova	@r0,	r11	;
 306:	00 00       	beq			
 308:	04 01       	mova	@r1,	r4	;
 30a:	06 01       	mova	@r1,	r6	;
 30c:	08 01       	mova	@r1,	r8	;
 30e:	41 16       	popm.a	#5,	r5	;20-bit words
 310:	00 00       	beq			
 312:	00 6d       	addc	r13,	r0	;
 314:	73 70       	.word	0x7073;	????
 316:	61 62       	addc.b	#4,	r1	;r2 As==10
 318:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
 31c:	00 00       	beq			
 31e:	00 04       	bra	@r4		;
 320:	01 06       	mova	@r6,	r1	;
 322:	01 08       	mova	@r8,	r1	;
 324:	01 41       	mov	r1,	r1	;
 326:	16 00       	mova	@r0+,	r6	;
 328:	00 00       	beq			
 32a:	6d 73       	subc.b	#2,	r13	;r3 As==10
 32c:	70 61       	addc.b	@r1+,	r0	;
 32e:	62 69       	addc.b	@r9,	r2	;
 330:	00 01       	bra	@r1		;
 332:	0b 00       	mova	@r0,	r11	;
 334:	00 00       	beq			
 336:	04 01       	mova	@r1,	r4	;
 338:	06 01       	mova	@r1,	r6	;
 33a:	08 01       	mova	@r1,	r8	;

Disassembly of section .comment:

00000000 <.comment>:
   0:	47 43       	clr.b	r7		;
   2:	43 3a       	jl	$-888    	;abs 0xfffffc8a
   4:	20 28       	jnc	$+66     	;abs 0x46
   6:	53 4f       	.word	0x4f53;	????
   8:	4d 4e       	mov.b	r14,	r13	;
   a:	49 55       	add.b	r5,	r9	;
   c:	4d 20       	jnz	$+156    	;abs 0xa8
   e:	54 65 63 68 	addc.b	26723(r5),r4	;0x06863
  12:	6e 6f       	addc.b	@r15,	r14	;
  14:	6c 6f       	addc.b	@r15,	r12	;
  16:	67 69       	addc.b	@r9,	r7	;
  18:	65 73       	subc.b	#2,	r5	;r3 As==10
  1a:	20 4c       	br	@r12		;
  1c:	69 6d       	addc.b	@r13,	r9	;
  1e:	69 74       	subc.b	@r4,	r9	;
  20:	65 64       	addc.b	@r4,	r5	;
  22:	20 2d       	jc	$+578    	;abs 0x264
  24:	20 6d       	addc	@r13,	r0	;
  26:	73 70       	.word	0x7073;	????
  28:	34 33       	jn	$-406    	;abs 0xfffffe92
  2a:	30 2d       	jc	$+610    	;abs 0x28c
  2c:	67 63       	addc.b	#2,	r7	;r3 As==10
  2e:	63 20       	jnz	$+200    	;abs 0xf6
  30:	36 2e       	jc	$-914    	;abs 0xfffffc9e
  32:	32 2e       	jc	$-922    	;abs 0xfffffc98
  34:	31 2e       	jc	$-924    	;abs 0xfffffc98
  36:	31 36       	jge	$-924    	;abs 0xfffffc9a
  38:	29 20       	jnz	$+84     	;abs 0x8c
  3a:	36 2e       	jc	$-914    	;abs 0xfffffca8
  3c:	32 2e       	jc	$-922    	;abs 0xfffffca2
  3e:	31 20       	jnz	$+100    	;abs 0xa2
  40:	32 30       	jn	$+102    	;abs 0xa6
  42:	31 36       	jge	$-924    	;abs 0xfffffca6
  44:	31 32       	jn	$-924    	;abs 0xfffffca8
  46:	31 32       	jn	$-924    	;abs 0xfffffcaa
  48:	00 72       	Address 0x00000048 is out of bounds.
.word	0xffff;	????
