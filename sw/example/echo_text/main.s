
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
  30:	35 40 80 02 	mov	#640,	r5	;#0x0280
  34:	36 40 80 02 	mov	#640,	r6	;#0x0280
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
  74:	3c 40 00 4b 	mov	#19200,	r12	;#0x4b00
  78:	4d 43       	clr.b	r13		;
  7a:	b0 12 a6 00 	call	#166		;#0x00a6
  7e:	3a 40 40 01 	mov	#320,	r10	;#0x0140
  82:	3c 40 34 02 	mov	#564,	r12	;#0x0234
  86:	8a 12       	call	r10		;
  88:	3c 40 65 02 	mov	#613,	r12	;#0x0265
  8c:	8a 12       	call	r10		;
  8e:	37 40 34 01 	mov	#308,	r7	;#0x0134
  92:	38 40 20 01 	mov	#288,	r8	;#0x0120
  96:	39 40 7e 02 	mov	#638,	r9	;#0x027e

0000009a <.L2>:
  9a:	87 12       	call	r7		;
  9c:	88 12       	call	r8		;
  9e:	0c 49       	mov	r9,	r12	;
  a0:	8a 12       	call	r10		;
  a2:	30 40 9a 00 	br	#0x009a		;

000000a6 <neo430_uart_setup>:
  a6:	0a 12       	push	r10		;
  a8:	09 12       	push	r9		;
  aa:	1a 42 fc ff 	mov	&0xfffc,r10	;0xfffc
  ae:	1b 42 fe ff 	mov	&0xfffe,r11	;0xfffe
  b2:	0e 4c       	mov	r12,	r14	;
  b4:	0e 5c       	add	r12,	r14	;
  b6:	0f 4d       	mov	r13,	r15	;
  b8:	0f 6d       	addc	r13,	r15	;
  ba:	4c 43       	clr.b	r12		;
  bc:	09 4f       	mov	r15,	r9	;

000000be <.L2>:
  be:	0b 9f       	cmp	r15,	r11	;
  c0:	04 28       	jnc	$+10     	;abs 0xca
  c2:	09 9b       	cmp	r11,	r9	;
  c4:	19 20       	jnz	$+52     	;abs 0xf8
  c6:	0a 9e       	cmp	r14,	r10	;
  c8:	17 2c       	jc	$+48     	;abs 0xf8

000000ca <.L10>:
  ca:	4a 43       	clr.b	r10		;

000000cc <.L5>:
  cc:	7d 40 ff 00 	mov.b	#255,	r13	;#0x00ff
  d0:	0d 9c       	cmp	r12,	r13	;
  d2:	17 28       	jnc	$+48     	;abs 0x102
  d4:	82 43 a0 ff 	mov	#0,	&0xffa0	;r3 As==00
  d8:	0d 4a       	mov	r10,	r13	;
  da:	0d 5a       	add	r10,	r13	;
  dc:	0d 5d       	rla	r13		;
  de:	0d 5d       	rla	r13		;
  e0:	0d 5d       	rla	r13		;
  e2:	0d 5d       	rla	r13		;
  e4:	0d 5d       	rla	r13		;
  e6:	0d 5d       	rla	r13		;
  e8:	0d 5d       	rla	r13		;
  ea:	3c d0 00 10 	bis	#4096,	r12	;#0x1000
  ee:	0d dc       	bis	r12,	r13	;
  f0:	82 4d a0 ff 	mov	r13,	&0xffa0	;
  f4:	30 40 7a 01 	br	#0x017a		;

000000f8 <.L3>:
  f8:	0a 8e       	sub	r14,	r10	;
  fa:	0b 7f       	subc	r15,	r11	;
  fc:	1c 53       	inc	r12		;
  fe:	30 40 be 00 	br	#0x00be		;

00000102 <.L9>:
 102:	6a 93       	cmp.b	#2,	r10	;r3 As==10
 104:	02 24       	jz	$+6      	;abs 0x10a
 106:	6a 92       	cmp.b	#4,	r10	;r2 As==10
 108:	07 20       	jnz	$+16     	;abs 0x118

0000010a <.L6>:
 10a:	b0 12 b0 01 	call	#432		;#0x01b0

0000010e <.L8>:
 10e:	5a 53       	inc.b	r10		;
 110:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
 114:	30 40 cc 00 	br	#0x00cc		;

00000118 <.L7>:
 118:	b0 12 b8 01 	call	#440		;#0x01b8
 11c:	30 40 0e 01 	br	#0x010e		;

00000120 <neo430_uart_putc>:
 120:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 124:	3e 40 a0 ff 	mov	#65440,	r14	;#0xffa0

00000128 <.L15>:
 128:	2d 4e       	mov	@r14,	r13	;
 12a:	0d 93       	cmp	#0,	r13	;r3 As==00
 12c:	fd 3b       	jl	$-4      	;abs 0x128
 12e:	82 4c a2 ff 	mov	r12,	&0xffa2	;
 132:	30 41       	ret			

00000134 <neo430_uart_getc>:
 134:	3d 40 a2 ff 	mov	#65442,	r13	;#0xffa2

00000138 <.L18>:
 138:	2c 4d       	mov	@r13,	r12	;
 13a:	0c 93       	cmp	#0,	r12	;r3 As==00
 13c:	fd 37       	jge	$-4      	;abs 0x138
 13e:	30 41       	ret			

00000140 <neo430_uart_br_print>:
 140:	0a 12       	push	r10		;
 142:	09 12       	push	r9		;
 144:	08 12       	push	r8		;
 146:	07 12       	push	r7		;
 148:	09 4c       	mov	r12,	r9	;
 14a:	38 40 20 01 	mov	#288,	r8	;#0x0120
 14e:	77 40 0d 00 	mov.b	#13,	r7	;#0x000d

00000152 <.L26>:
 152:	6a 49       	mov.b	@r9,	r10	;
 154:	0a 93       	cmp	#0,	r10	;r3 As==00
 156:	02 20       	jnz	$+6      	;abs 0x15c
 158:	30 40 76 01 	br	#0x0176		;

0000015c <.L28>:
 15c:	3a 90 0a 00 	cmp	#10,	r10	;#0x000a
 160:	02 20       	jnz	$+6      	;abs 0x166
 162:	4c 47       	mov.b	r7,	r12	;
 164:	88 12       	call	r8		;

00000166 <.L27>:
 166:	4c 4a       	mov.b	r10,	r12	;
 168:	88 12       	call	r8		;
 16a:	19 53       	inc	r9		;
 16c:	30 40 52 01 	br	#0x0152		;

00000170 <__mspabi_func_epilog_7>:
 170:	34 41       	pop	r4		;

00000172 <__mspabi_func_epilog_6>:
 172:	35 41       	pop	r5		;

00000174 <__mspabi_func_epilog_5>:
 174:	36 41       	pop	r6		;

00000176 <__mspabi_func_epilog_4>:
 176:	37 41       	pop	r7		;

00000178 <__mspabi_func_epilog_3>:
 178:	38 41       	pop	r8		;

0000017a <__mspabi_func_epilog_2>:
 17a:	39 41       	pop	r9		;

0000017c <__mspabi_func_epilog_1>:
 17c:	3a 41       	pop	r10		;
 17e:	30 41       	ret			

00000180 <__mspabi_srli_15>:
 180:	12 c3       	clrc			
 182:	0c 10       	rrc	r12		;

00000184 <__mspabi_srli_14>:
 184:	12 c3       	clrc			
 186:	0c 10       	rrc	r12		;

00000188 <__mspabi_srli_13>:
 188:	12 c3       	clrc			
 18a:	0c 10       	rrc	r12		;

0000018c <__mspabi_srli_12>:
 18c:	12 c3       	clrc			
 18e:	0c 10       	rrc	r12		;

00000190 <__mspabi_srli_11>:
 190:	12 c3       	clrc			
 192:	0c 10       	rrc	r12		;

00000194 <__mspabi_srli_10>:
 194:	12 c3       	clrc			
 196:	0c 10       	rrc	r12		;

00000198 <__mspabi_srli_9>:
 198:	12 c3       	clrc			
 19a:	0c 10       	rrc	r12		;

0000019c <__mspabi_srli_8>:
 19c:	12 c3       	clrc			
 19e:	0c 10       	rrc	r12		;

000001a0 <__mspabi_srli_7>:
 1a0:	12 c3       	clrc			
 1a2:	0c 10       	rrc	r12		;

000001a4 <__mspabi_srli_6>:
 1a4:	12 c3       	clrc			
 1a6:	0c 10       	rrc	r12		;

000001a8 <__mspabi_srli_5>:
 1a8:	12 c3       	clrc			
 1aa:	0c 10       	rrc	r12		;

000001ac <__mspabi_srli_4>:
 1ac:	12 c3       	clrc			
 1ae:	0c 10       	rrc	r12		;

000001b0 <__mspabi_srli_3>:
 1b0:	12 c3       	clrc			
 1b2:	0c 10       	rrc	r12		;

000001b4 <__mspabi_srli_2>:
 1b4:	12 c3       	clrc			
 1b6:	0c 10       	rrc	r12		;

000001b8 <__mspabi_srli_1>:
 1b8:	12 c3       	clrc			
 1ba:	0c 10       	rrc	r12		;
 1bc:	30 41       	ret			

000001be <.L11>:
 1be:	3d 53       	add	#-1,	r13	;r3 As==11
 1c0:	12 c3       	clrc			
 1c2:	0c 10       	rrc	r12		;

000001c4 <__mspabi_srli>:
 1c4:	0d 93       	cmp	#0,	r13	;r3 As==00
 1c6:	fb 23       	jnz	$-8      	;abs 0x1be
 1c8:	30 41       	ret			

000001ca <__mspabi_srll_15>:
 1ca:	12 c3       	clrc			
 1cc:	0d 10       	rrc	r13		;
 1ce:	0c 10       	rrc	r12		;

000001d0 <__mspabi_srll_14>:
 1d0:	12 c3       	clrc			
 1d2:	0d 10       	rrc	r13		;
 1d4:	0c 10       	rrc	r12		;

000001d6 <__mspabi_srll_13>:
 1d6:	12 c3       	clrc			
 1d8:	0d 10       	rrc	r13		;
 1da:	0c 10       	rrc	r12		;

000001dc <__mspabi_srll_12>:
 1dc:	12 c3       	clrc			
 1de:	0d 10       	rrc	r13		;
 1e0:	0c 10       	rrc	r12		;

000001e2 <__mspabi_srll_11>:
 1e2:	12 c3       	clrc			
 1e4:	0d 10       	rrc	r13		;
 1e6:	0c 10       	rrc	r12		;

000001e8 <__mspabi_srll_10>:
 1e8:	12 c3       	clrc			
 1ea:	0d 10       	rrc	r13		;
 1ec:	0c 10       	rrc	r12		;

000001ee <__mspabi_srll_9>:
 1ee:	12 c3       	clrc			
 1f0:	0d 10       	rrc	r13		;
 1f2:	0c 10       	rrc	r12		;

000001f4 <__mspabi_srll_8>:
 1f4:	12 c3       	clrc			
 1f6:	0d 10       	rrc	r13		;
 1f8:	0c 10       	rrc	r12		;

000001fa <__mspabi_srll_7>:
 1fa:	12 c3       	clrc			
 1fc:	0d 10       	rrc	r13		;
 1fe:	0c 10       	rrc	r12		;

00000200 <__mspabi_srll_6>:
 200:	12 c3       	clrc			
 202:	0d 10       	rrc	r13		;
 204:	0c 10       	rrc	r12		;

00000206 <__mspabi_srll_5>:
 206:	12 c3       	clrc			
 208:	0d 10       	rrc	r13		;
 20a:	0c 10       	rrc	r12		;

0000020c <__mspabi_srll_4>:
 20c:	12 c3       	clrc			
 20e:	0d 10       	rrc	r13		;
 210:	0c 10       	rrc	r12		;

00000212 <__mspabi_srll_3>:
 212:	12 c3       	clrc			
 214:	0d 10       	rrc	r13		;
 216:	0c 10       	rrc	r12		;

00000218 <__mspabi_srll_2>:
 218:	12 c3       	clrc			
 21a:	0d 10       	rrc	r13		;
 21c:	0c 10       	rrc	r12		;

0000021e <__mspabi_srll_1>:
 21e:	12 c3       	clrc			
 220:	0d 10       	rrc	r13		;
 222:	0c 10       	rrc	r12		;
 224:	30 41       	ret			

00000226 <.L12>:
 226:	3e 53       	add	#-1,	r14	;r3 As==11
 228:	12 c3       	clrc			
 22a:	0d 10       	rrc	r13		;
 22c:	0c 10       	rrc	r12		;

0000022e <__mspabi_srll>:
 22e:	0e 93       	cmp	#0,	r14	;r3 As==00
 230:	fa 23       	jnz	$-10     	;abs 0x226
 232:	30 41       	ret			

Disassembly of section .rodata:

00000234 <_etext-0x4c>:
 234:	0a 0a       	mova	@r10,	r10	;
 236:	45 63       	adc.b	r5		;
 238:	68 6f       	addc.b	@r15,	r8	;
 23a:	20 74       	subc	@r4,	r0	;
 23c:	65 78       	subc.b	@r8,	r5	;
 23e:	74 20       	jnz	$+234    	;abs 0x328
 240:	2d 20       	jnz	$+92     	;abs 0x29c
 242:	77 61       	addc.b	@r1+,	r7	;
 244:	69 74       	subc.b	@r4,	r9	;
 246:	73 20       	jnz	$+232    	;abs 0x32e
 248:	66 6f       	addc.b	@r15,	r6	;
 24a:	72 20       	jnz	$+230    	;abs 0x330
 24c:	61 20       	jnz	$+196    	;abs 0x310
 24e:	6b 65       	addc.b	@r5,	r11	;
 250:	79 20       	jnz	$+244    	;abs 0x344
 252:	74 68       	addc.b	@r8+,	r4	;
 254:	65 6e       	addc.b	@r14,	r5	;
 256:	20 70       	subc	@r0,	r0	;
 258:	72 69       	addc.b	@r9+,	r2	;
 25a:	6e 74       	subc.b	@r4,	r14	;
 25c:	73 20       	jnz	$+232    	;abs 0x344
 25e:	76 61       	addc.b	@r1+,	r6	;
 260:	6c 75       	subc.b	@r5,	r12	;
 262:	65 0a 00 50 	mova	r10,	&348160	; 0x55000
 266:	72 65       	addc.b	@r5+,	r2	;
 268:	73 73       	.word	0x7373;	????
 26a:	20 61       	addc	@r1,	r0	;
 26c:	6e 79       	subc.b	@r9,	r14	;
 26e:	20 6b       	addc	@r11,	r0	;
 270:	65 79       	subc.b	@r9,	r5	;
 272:	20 74       	subc	@r4,	r0	;
 274:	6f 20       	jnz	$+224    	;abs 0x354
 276:	73 74       	.word	0x7473;	????
 278:	61 72       	subc.b	#4,	r1	;r2 As==10
 27a:	74 2e       	jc	$-790    	;abs 0xffffff64
 27c:	0a 00       	mova	@r0,	r10	;
 27e:	0a 00       	mova	@r0,	r10	;

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
 2c8:	01 00       	Address 0x000002c8 is out of bounds.
.word	0xffff;	????

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
  48:	00 00       	Address 0x00000048 is out of bounds.
.word	0xffff;	????
