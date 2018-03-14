
main.elf:     file format elf32-msp430


Disassembly of section .text:

00000000 <L0>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	18 42 e8 ff 	mov	&0xffe8,r8	;0xffe8

00000004 <.Loc.34.1>:
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	11 42 ea ff 	mov	&0xffea,r1	;0xffea

00000008 <.Loc.40.1>:


; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
   8:	02 43       	clr	r2		;

0000000a <.Loc.41.1>:
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	01 58       	add	r8,	r1	;

0000000c <.Loc.42.1>:
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   c:	b2 40 00 47 	mov	#18176,	&0xffd0	;#0x4700
  10:	d0 ff 

00000012 <.Loc.51.1>:
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	39 40 80 ff 	mov	#65408,	r9	;#0xff80

00000016 <__crt0_clr_io>:
__crt0_clr_io:
      tst  r9 ; until the end -> wrap-arounf to 0
  16:	09 93       	cmp	#0,	r9	;r3 As==00

00000018 <.Loc.54.1>:
      jeq  __crt0_clr_io_end
  18:	04 24       	jz	$+10     	;abs 0x22

0000001a <.Loc.55.1>:
      mov  #0, 0(r9) ; clear entry
  1a:	89 43 00 00 	mov	#0,	0(r9)	;r3 As==00

0000001e <.Loc.56.1>:
      incd r9
  1e:	29 53       	incd	r9		;

00000020 <.Loc.57.1>:
      jmp  __crt0_clr_io
  20:	fa 3f       	jmp	$-10     	;abs 0x16

00000022 <__crt0_clr_dmem>:

; -----------------------------------------------------------
; Clear complete DMEM (including .bss section)
; -----------------------------------------------------------
__crt0_clr_dmem:
      cmp  r8, r1 ; base address equal to end of RAM?
  22:	01 98       	cmp	r8,	r1	;

00000024 <.Loc.66.1>:
      jeq  __crt0_clr_dmem_end
  24:	04 24       	jz	$+10     	;abs 0x2e

00000026 <.Loc.67.1>:
      mov  #0, 0(r8) ; clear entry
  26:	88 43 00 00 	mov	#0,	0(r8)	;r3 As==00

0000002a <.Loc.68.1>:
      incd r8
  2a:	28 53       	incd	r8		;

0000002c <.Loc.69.1>:
      jmp  __crt0_clr_dmem
  2c:	fa 3f       	jmp	$-10     	;abs 0x22

0000002e <__crt0_clr_dmem_end>:


; -----------------------------------------------------------
; Copy initialized .data section from ROM to RAM
; -----------------------------------------------------------
    mov  #__data_start_rom, r5
  2e:	35 40 dc 06 	mov	#1756,	r5	;#0x06dc

00000032 <.Loc.77.1>:
    mov  #__data_end_rom, r6
  32:	36 40 dc 06 	mov	#1756,	r6	;#0x06dc

00000036 <.Loc.78.1>:
    mov  #__data_start, r7
  36:	37 40 00 80 	mov	#32768,	r7	;#0x8000

0000003a <__crt0_cpy_data>:
__crt0_cpy_data:
      cmp  r5, r6
  3a:	06 95       	cmp	r5,	r6	;

0000003c <.Loc.81.1>:
      jeq  __crt0_cpy_data_end
  3c:	04 24       	jz	$+10     	;abs 0x46

0000003e <.Loc.82.1>:
      mov  @r5+, 0(r7)
  3e:	b7 45 00 00 	mov	@r5+,	0(r7)	;

00000042 <.Loc.83.1>:
      incd r7
  42:	27 53       	incd	r7		;

00000044 <.Loc.84.1>:
      jmp  __crt0_cpy_data
  44:	fa 3f       	jmp	$-10     	;abs 0x3a

00000046 <__crt0_cpy_data_end>:


; -----------------------------------------------------------
; Re-init SR and clear all pending IRQs from buffer
; -----------------------------------------------------------
    mov  #(1<<14), r2 ; this flag auto clears
  46:	32 40 00 40 	mov	#16384,	r2	;#0x4000

0000004a <.Loc.97.1>:


; -----------------------------------------------------------
; Initialize all remaining registers
; -----------------------------------------------------------
    mov  #0, r4
  4a:	04 43       	clr	r4		;

0000004c <.Loc.103.1>:
;   mov  #0, r5 ; -- is already initialized
;   mov  #0, r6 ; -- is already initialized
;   mov  #0, r7 ; -- is already initialized
;   mov  #0, r8 ; -- is already initialized
;   mov  #0, r9 ; -- is already initialized
    mov  #0, r10
  4c:	0a 43       	clr	r10		;

0000004e <.Loc.104.1>:
    mov  #0, r11
  4e:	0b 43       	clr	r11		;

00000050 <.Loc.105.1>:
    mov  #0, r12 ; set argc = 0
  50:	0c 43       	clr	r12		;

00000052 <.Loc.106.1>:
    mov  #0, r13
  52:	0d 43       	clr	r13		;

00000054 <.Loc.107.1>:
    mov  #0, r14
  54:	0e 43       	clr	r14		;

00000056 <.Loc.108.1>:
    mov  #0, r15
  56:	0f 43       	clr	r15		;

00000058 <__crt0_start_main>:

; -----------------------------------------------------------
; This is where the actual application is started
; -----------------------------------------------------------
__crt0_start_main:
    call  #main
  58:	b0 12 96 01 	call	#406		;#0x0196

0000005c <__crt0_this_is_the_end>:

; -----------------------------------------------------------
; Go to endless sleep mode if main returns
; -----------------------------------------------------------
__crt0_this_is_the_end:
    mov  #0, r2 ; deactivate IRQs
  5c:	02 43       	clr	r2		;

0000005e <.Loc.123.1>:
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
  5e:	b2 40 00 47 	mov	#18176,	&0xffd0	;#0x4700
  62:	d0 ff 

00000064 <.Loc.124.1>:
    mov  #(1<<4), r2 ; set CPU to sleep mode
  64:	32 40 10 00 	mov	#16,	r2	;#0x0010

00000068 <.Loc.125.1>:
    nop
  68:	03 43       	nop			

0000006a <uart_putc>:
  6a:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
  6e:	3d 40 a0 ff 	mov	#65440,	r13	;#0xffa0

00000072 <.L2>:
  72:	bd b2 00 00 	bit	#8,	0(r13)	;r2 As==11
  76:	fd 23       	jnz	$-4      	;abs 0x72
  78:	82 4c a4 ff 	mov	r12,	&0xffa4	;
  7c:	30 41       	ret			

0000007e <uart_br_print>:
  7e:	0a 12       	push	r10		;
  80:	09 12       	push	r9		;
  82:	08 12       	push	r8		;
  84:	07 12       	push	r7		;
  86:	09 4c       	mov	r12,	r9	;
  88:	38 40 6a 00 	mov	#106,	r8	;#0x006a
  8c:	77 40 0d 00 	mov.b	#13,	r7	;#0x000d

00000090 <.L5>:
  90:	6a 49       	mov.b	@r9,	r10	;
  92:	0a 93       	cmp	#0,	r10	;r3 As==00
  94:	02 20       	jnz	$+6      	;abs 0x9a
  96:	30 40 68 04 	br	#0x0468		;

0000009a <.L7>:
  9a:	3a 90 0a 00 	cmp	#10,	r10	;#0x000a
  9e:	02 20       	jnz	$+6      	;abs 0xa4
  a0:	4c 47       	mov.b	r7,	r12	;
  a2:	88 12       	call	r8		;

000000a4 <.L6>:
  a4:	4c 4a       	mov.b	r10,	r12	;
  a6:	88 12       	call	r8		;
  a8:	19 53       	inc	r9		;
  aa:	30 40 90 00 	br	#0x0090		;

000000ae <wishbone_write8>:
  ae:	0a 12       	push	r10		;
  b0:	09 12       	push	r9		;
  b2:	08 12       	push	r8		;
  b4:	07 12       	push	r7		;
  b6:	08 4c       	mov	r12,	r8	;
  b8:	09 4d       	mov	r13,	r9	;
  ba:	47 4e       	mov.b	r14,	r7	;
  bc:	0a 4c       	mov	r12,	r10	;
  be:	7a f0 03 00 	and.b	#3,	r10	;
  c2:	5c 43       	mov.b	#1,	r12	;r3 As==01
  c4:	0d 4a       	mov	r10,	r13	;
  c6:	b0 12 96 04 	call	#1174		;#0x0496
  ca:	3d 40 90 ff 	mov	#65424,	r13	;#0xff90
  ce:	8d 4c 00 00 	mov	r12,	0(r13)	;
  d2:	ca 47 9a ff 	mov.b	r7,	-102(r10); 0xff9a
  d6:	82 48 96 ff 	mov	r8,	&0xff96	;
  da:	82 49 98 ff 	mov	r9,	&0xff98	;

000000de <.L9>:
  de:	2c 4d       	mov	@r13,	r12	;
  e0:	0c 93       	cmp	#0,	r12	;r3 As==00
  e2:	fd 3b       	jl	$-4      	;abs 0xde
  e4:	30 40 68 04 	br	#0x0468		;

000000e8 <uart_print_hex_byte>:
  e8:	0a 12       	push	r10		;
  ea:	09 12       	push	r9		;
  ec:	4a 4c       	mov.b	r12,	r10	;
  ee:	0c 4a       	mov	r10,	r12	;
  f0:	b0 12 12 05 	call	#1298		;#0x0512
  f4:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
  f8:	7d 40 09 00 	mov.b	#9,	r13	;
  fc:	4d 9c       	cmp.b	r12,	r13	;
  fe:	15 28       	jnc	$+44     	;abs 0x12a
 100:	7c 50 30 00 	add.b	#48,	r12	;#0x0030

00000104 <.L16>:
 104:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 108:	39 40 6a 00 	mov	#106,	r9	;#0x006a
 10c:	89 12       	call	r9		;
 10e:	4c 4a       	mov.b	r10,	r12	;
 110:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f
 114:	7d 40 09 00 	mov.b	#9,	r13	;
 118:	4d 9c       	cmp.b	r12,	r13	;
 11a:	0b 28       	jnc	$+24     	;abs 0x132
 11c:	7c 50 30 00 	add.b	#48,	r12	;#0x0030

00000120 <.L17>:
 120:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 124:	89 12       	call	r9		;
 126:	30 40 6c 04 	br	#0x046c		;

0000012a <.L12>:
 12a:	7c 50 37 00 	add.b	#55,	r12	;#0x0037
 12e:	30 40 04 01 	br	#0x0104		;

00000132 <.L14>:
 132:	7c 50 37 00 	add.b	#55,	r12	;#0x0037
 136:	30 40 20 01 	br	#0x0120		;

0000013a <checkack>:
 13a:	0a 12       	push	r10		;
 13c:	09 12       	push	r9		;
 13e:	08 12       	push	r8		;
 140:	07 12       	push	r7		;
 142:	06 12       	push	r6		;
 144:	3c 40 9a 05 	mov	#1434,	r12	;#0x059a
 148:	b0 12 7e 00 	call	#126		;#0x007e
 14c:	38 40 90 ff 	mov	#65424,	r8	;#0xff90
 150:	37 40 9a ff 	mov	#65434,	r7	;#0xff9a
 154:	36 40 e8 00 	mov	#232,	r6	;#0x00e8

00000158 <.L19>:
 158:	4c 43       	clr.b	r12		;

0000015a <.L20>:
 15a:	03 43       	nop			
 15c:	1c 53       	inc	r12		;
 15e:	3c 90 00 08 	cmp	#2048,	r12	;#0x0800
 162:	fb 23       	jnz	$-8      	;abs 0x15a
 164:	92 43 90 ff 	mov	#1,	&0xff90	;r3 As==01
 168:	b2 40 10 00 	mov	#16,	&0xff92	;#0x0010
 16c:	92 ff 
 16e:	82 43 94 ff 	mov	#0,	&0xff94	;r3 As==00

00000172 <.L21>:
 172:	2c 48       	mov	@r8,	r12	;
 174:	0c 93       	cmp	#0,	r12	;r3 As==00
 176:	fd 3b       	jl	$-4      	;abs 0x172
 178:	69 47       	mov.b	@r7,	r9	;
 17a:	4c 49       	mov.b	r9,	r12	;
 17c:	7c e3       	xor.b	#-1,	r12	;r3 As==11
 17e:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
 182:	b0 12 06 05 	call	#1286		;#0x0506
 186:	4a 4c       	mov.b	r12,	r10	;
 188:	4c 4a       	mov.b	r10,	r12	;
 18a:	86 12       	call	r6		;
 18c:	29 b3       	bit	#2,	r9	;r3 As==10
 18e:	e4 23       	jnz	$-54     	;abs 0x158
 190:	4c 4a       	mov.b	r10,	r12	;
 192:	30 40 66 04 	br	#0x0466		;

00000196 <main>:
 196:	0a 12       	push	r10		;
 198:	09 12       	push	r9		;
 19a:	08 12       	push	r8		;
 19c:	07 12       	push	r7		;
 19e:	06 12       	push	r6		;
 1a0:	05 12       	push	r5		;
 1a2:	04 12       	push	r4		;
 1a4:	31 80 12 00 	sub	#18,	r1	;#0x0012
 1a8:	1e 42 ec ff 	mov	&0xffec,r14	;0xffec
 1ac:	1f 42 ee ff 	mov	&0xffee,r15	;0xffee
 1b0:	4c 43       	clr.b	r12		;

000001b2 <.L26>:
 1b2:	0a 4f       	mov	r15,	r10	;
 1b4:	0f 93       	cmp	#0,	r15	;r3 As==00
 1b6:	3d 20       	jnz	$+124    	;abs 0x232
 1b8:	3d 40 ff 95 	mov	#38399,	r13	;#0x95ff
 1bc:	0d 9e       	cmp	r14,	r13	;
 1be:	39 28       	jnc	$+116    	;abs 0x232

000001c0 <.L29>:
 1c0:	7d 40 ff 00 	mov.b	#255,	r13	;#0x00ff
 1c4:	0d 9c       	cmp	r12,	r13	;
 1c6:	3b 28       	jnc	$+120    	;abs 0x23e
 1c8:	0d 4a       	mov	r10,	r13	;
 1ca:	0d 5a       	add	r10,	r13	;
 1cc:	0d 5d       	rla	r13		;
 1ce:	0d 5d       	rla	r13		;
 1d0:	0d 5d       	rla	r13		;
 1d2:	0d 5d       	rla	r13		;
 1d4:	0d 5d       	rla	r13		;
 1d6:	0d 5d       	rla	r13		;
 1d8:	0d 5d       	rla	r13		;
 1da:	0d dc       	bis	r12,	r13	;
 1dc:	82 4d a6 ff 	mov	r13,	&0xffa6	;
 1e0:	92 43 a0 ff 	mov	#1,	&0xffa0	;r3 As==01
 1e4:	3a 40 7e 00 	mov	#126,	r10	;#0x007e
 1e8:	3c 40 a9 05 	mov	#1449,	r12	;#0x05a9
 1ec:	8a 12       	call	r10		;
 1ee:	09 4a       	mov	r10,	r9	;
 1f0:	a2 b3 e2 ff 	bit	#2,	&0xffe2	;r3 As==10
 1f4:	2e 25       	jz	$+606    	;abs 0x452
 1f6:	35 40 6a 00 	mov	#106,	r5	;#0x006a

000001fa <.L69>:
 1fa:	3c 40 49 06 	mov	#1609,	r12	;#0x0649
 1fe:	89 12       	call	r9		;
 200:	47 43       	clr.b	r7		;
 202:	08 41       	mov	r1,	r8	;
 204:	28 53       	incd	r8		;

00000206 <.L36>:
 206:	3c 40 a4 ff 	mov	#65444,	r12	;#0xffa4
 20a:	2a 4c       	mov	@r12,	r10	;
 20c:	0a 93       	cmp	#0,	r10	;r3 As==00
 20e:	fb 37       	jge	$-8      	;abs 0x206
 210:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
 214:	7a 92       	cmp.b	#8,	r10	;r2 As==11
 216:	25 20       	jnz	$+76     	;abs 0x262
 218:	07 93       	cmp	#0,	r7	;r3 As==00
 21a:	f5 27       	jz	$-20     	;abs 0x206
 21c:	3a 40 60 06 	mov	#1632,	r10	;#0x0660

00000220 <.L39>:
 220:	1a 53       	inc	r10		;
 222:	5c 4a ff ff 	mov.b	-1(r10),r12	;
 226:	0c 93       	cmp	#0,	r12	;r3 As==00
 228:	19 20       	jnz	$+52     	;abs 0x25c
 22a:	38 53       	add	#-1,	r8	;r3 As==11
 22c:	37 53       	add	#-1,	r7	;r3 As==11
 22e:	30 40 06 02 	br	#0x0206		;

00000232 <.L27>:
 232:	3e 50 00 6a 	add	#27136,	r14	;#0x6a00
 236:	3f 63       	addc	#-1,	r15	;r3 As==11
 238:	1c 53       	inc	r12		;
 23a:	30 40 b2 01 	br	#0x01b2		;

0000023e <.L33>:
 23e:	6a 93       	cmp.b	#2,	r10	;r3 As==10
 240:	02 24       	jz	$+6      	;abs 0x246
 242:	6a 92       	cmp.b	#4,	r10	;r2 As==10
 244:	07 20       	jnz	$+16     	;abs 0x254

00000246 <.L30>:
 246:	b0 12 16 05 	call	#1302		;#0x0516

0000024a <.L32>:
 24a:	5a 53       	inc.b	r10		;
 24c:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
 250:	30 40 c0 01 	br	#0x01c0		;

00000254 <.L31>:
 254:	b0 12 1e 05 	call	#1310		;#0x051e
 258:	30 40 4a 02 	br	#0x024a		;

0000025c <.L40>:
 25c:	85 12       	call	r5		;
 25e:	30 40 20 02 	br	#0x0220		;

00000262 <.L37>:
 262:	7a 90 0d 00 	cmp.b	#13,	r10	;#0x000d
 266:	13 24       	jz	$+40     	;abs 0x28e
 268:	4c 4a       	mov.b	r10,	r12	;
 26a:	7c 50 e0 ff 	add.b	#65504,	r12	;#0xffe0
 26e:	7d 40 5e 00 	mov.b	#94,	r13	;#0x005e
 272:	4d 9c       	cmp.b	r12,	r13	;
 274:	c8 2b       	jnc	$-110    	;abs 0x206
 276:	7c 40 0e 00 	mov.b	#14,	r12	;#0x000e
 27a:	0c 97       	cmp	r7,	r12	;
 27c:	c4 2b       	jnc	$-118    	;abs 0x206
 27e:	4c 4a       	mov.b	r10,	r12	;
 280:	85 12       	call	r5		;
 282:	c8 4a 00 00 	mov.b	r10,	0(r8)	;
 286:	17 53       	inc	r7		;
 288:	18 53       	inc	r8		;
 28a:	30 40 06 02 	br	#0x0206		;

0000028e <.L41>:
 28e:	c8 43 00 00 	mov.b	#0,	0(r8)	;r3 As==00
 292:	3c 40 64 06 	mov	#1636,	r12	;#0x0664
 296:	89 12       	call	r9		;
 298:	3c 40 66 06 	mov	#1638,	r12	;#0x0666
 29c:	89 12       	call	r9		;
 29e:	3a 40 ae 00 	mov	#174,	r10	;#0x00ae
 2a2:	4e 43       	clr.b	r14		;
 2a4:	7c 42       	mov.b	#8,	r12	;r2 As==11
 2a6:	4d 43       	clr.b	r13		;
 2a8:	8a 12       	call	r10		;
 2aa:	4e 43       	clr.b	r14		;
 2ac:	4c 43       	clr.b	r12		;
 2ae:	4d 43       	clr.b	r13		;
 2b0:	8a 12       	call	r10		;
 2b2:	6e 42       	mov.b	#4,	r14	;r2 As==10
 2b4:	6c 42       	mov.b	#4,	r12	;r2 As==10
 2b6:	4d 43       	clr.b	r13		;
 2b8:	8a 12       	call	r10		;
 2ba:	7e 40 80 ff 	mov.b	#65408,	r14	;#0xff80
 2be:	7c 42       	mov.b	#8,	r12	;r2 As==11
 2c0:	4d 43       	clr.b	r13		;
 2c2:	8a 12       	call	r10		;
 2c4:	3c 40 7a 06 	mov	#1658,	r12	;#0x067a
 2c8:	89 12       	call	r9		;
 2ca:	4e 43       	clr.b	r14		;
 2cc:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 2d0:	4d 43       	clr.b	r13		;
 2d2:	8a 12       	call	r10		;
 2d4:	7e 40 90 ff 	mov.b	#65424,	r14	;#0xff90
 2d8:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 2dc:	4d 43       	clr.b	r13		;
 2de:	8a 12       	call	r10		;
 2e0:	7e 40 40 00 	mov.b	#64,	r14	;#0x0040
 2e4:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 2e8:	4d 43       	clr.b	r13		;
 2ea:	8a 12       	call	r10		;
 2ec:	4c 43       	clr.b	r12		;

000002ee <.L42>:
 2ee:	03 43       	nop			
 2f0:	1c 53       	inc	r12		;
 2f2:	3c 90 e8 03 	cmp	#1000,	r12	;#0x03e8
 2f6:	fb 23       	jnz	$-8      	;abs 0x2ee
 2f8:	3c 40 9c 06 	mov	#1692,	r12	;#0x069c
 2fc:	89 12       	call	r9		;
 2fe:	37 40 00 80 	mov	#32768,	r7	;#0x8000
 302:	e2 43 00 80 	mov.b	#2,	&0x8000	;r3 As==10
 306:	c2 43 01 80 	mov.b	#0,	&0x8001	;r3 As==00
 30a:	3c 40 aa 06 	mov	#1706,	r12	;#0x06aa
 30e:	89 12       	call	r9		;
 310:	7e 40 c8 ff 	mov.b	#65480,	r14	;#0xffc8
 314:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 318:	4d 43       	clr.b	r13		;
 31a:	8a 12       	call	r10		;
 31c:	7e 40 90 ff 	mov.b	#65424,	r14	;#0xff90
 320:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 324:	4d 43       	clr.b	r13		;
 326:	8a 12       	call	r10		;
 328:	38 40 3a 01 	mov	#314,	r8	;#0x013a
 32c:	3c 40 00 08 	mov	#2048,	r12	;#0x0800
 330:	88 12       	call	r8		;
 332:	4c 93       	cmp.b	#0,	r12	;r3 As==00
 334:	0b 20       	jnz	$+24     	;abs 0x34c
 336:	3c 40 bc 06 	mov	#1724,	r12	;#0x06bc
 33a:	89 12       	call	r9		;

0000033c <.L45>:
 33c:	7e 40 40 00 	mov.b	#64,	r14	;#0x0040
 340:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 344:	4d 43       	clr.b	r13		;
 346:	8a 12       	call	r10		;
 348:	30 40 8e 03 	br	#0x038e		;

0000034c <.L43>:
 34c:	6e 47       	mov.b	@r7,	r14	;
 34e:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 352:	4d 43       	clr.b	r13		;
 354:	8a 12       	call	r10		;
 356:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 35a:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 35e:	4d 43       	clr.b	r13		;
 360:	8a 12       	call	r10		;
 362:	3c 40 00 08 	mov	#2048,	r12	;#0x0800
 366:	88 12       	call	r8		;
 368:	4c 93       	cmp.b	#0,	r12	;r3 As==00
 36a:	e8 27       	jz	$-46     	;abs 0x33c
 36c:	5e 47 01 00 	mov.b	1(r7),	r14	;
 370:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 374:	4d 43       	clr.b	r13		;
 376:	8a 12       	call	r10		;
 378:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 37c:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 380:	4d 43       	clr.b	r13		;
 382:	8a 12       	call	r10		;
 384:	3c 40 00 08 	mov	#2048,	r12	;#0x0800
 388:	88 12       	call	r8		;
 38a:	4c 93       	cmp.b	#0,	r12	;r3 As==00
 38c:	d7 27       	jz	$-80     	;abs 0x33c

0000038e <.L44>:
 38e:	7e 40 c9 ff 	mov.b	#65481,	r14	;#0xffc9
 392:	7c 40 0c 00 	mov.b	#12,	r12	;#0x000c
 396:	4d 43       	clr.b	r13		;
 398:	8a 12       	call	r10		;
 39a:	7e 40 90 ff 	mov.b	#65424,	r14	;#0xff90
 39e:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 3a2:	4d 43       	clr.b	r13		;
 3a4:	8a 12       	call	r10		;
 3a6:	3c 40 00 08 	mov	#2048,	r12	;#0x0800
 3aa:	88 12       	call	r8		;
 3ac:	37 40 e8 00 	mov	#232,	r7	;#0x00e8
 3b0:	4c 93       	cmp.b	#0,	r12	;r3 As==00
 3b2:	1e 20       	jnz	$+62     	;abs 0x3f0
 3b4:	3c 40 bc 06 	mov	#1724,	r12	;#0x06bc
 3b8:	89 12       	call	r9		;
 3ba:	7e 40 40 00 	mov.b	#64,	r14	;#0x0040
 3be:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 3c2:	4d 43       	clr.b	r13		;
 3c4:	8a 12       	call	r10		;

000003c6 <.L47>:
 3c6:	44 43       	clr.b	r4		;
 3c8:	36 40 64 06 	mov	#1636,	r6	;#0x0664
 3cc:	4a 44       	mov.b	r4,	r10	;

000003ce <.L52>:
 3ce:	0c 46       	mov	r6,	r12	;
 3d0:	89 12       	call	r9		;
 3d2:	58 44 00 80 	mov.b	-32768(r4),r8	;0xffff8000
 3d6:	4c 4a       	mov.b	r10,	r12	;
 3d8:	87 12       	call	r7		;
 3da:	4c 4a       	mov.b	r10,	r12	;
 3dc:	87 12       	call	r7		;
 3de:	4c 4a       	mov.b	r10,	r12	;
 3e0:	87 12       	call	r7		;
 3e2:	4c 48       	mov.b	r8,	r12	;
 3e4:	87 12       	call	r7		;
 3e6:	14 53       	inc	r4		;
 3e8:	24 92       	cmp	#4,	r4	;r2 As==10
 3ea:	f1 23       	jnz	$-28     	;abs 0x3ce
 3ec:	30 40 fa 01 	br	#0x01fa		;

000003f0 <.L46>:
 3f0:	46 43       	clr.b	r6		;
 3f2:	34 40 9a ff 	mov	#65434,	r4	;#0xff9a

000003f6 <.L51>:
 3f6:	36 90 03 00 	cmp	#3,	r6	;
 3fa:	27 24       	jz	$+80     	;abs 0x44a
 3fc:	7e 40 20 00 	mov.b	#32,	r14	;#0x0020

00000400 <.L71>:
 400:	7c 40 10 00 	mov.b	#16,	r12	;#0x0010
 404:	4d 43       	clr.b	r13		;
 406:	8a 12       	call	r10		;
 408:	3c 40 00 08 	mov	#2048,	r12	;#0x0800
 40c:	88 12       	call	r8		;
 40e:	c1 4c 01 00 	mov.b	r12,	1(r1)	;
 412:	3c 40 d4 06 	mov	#1748,	r12	;#0x06d4
 416:	89 12       	call	r9		;
 418:	5c 41 01 00 	mov.b	1(r1),	r12	;
 41c:	87 12       	call	r7		;
 41e:	3c 40 64 06 	mov	#1636,	r12	;#0x0664
 422:	89 12       	call	r9		;
 424:	92 43 90 ff 	mov	#1,	&0xff90	;r3 As==01
 428:	b2 40 0c 00 	mov	#12,	&0xff92	;#0x000c
 42c:	92 ff 
 42e:	82 43 94 ff 	mov	#0,	&0xff94	;r3 As==00

00000432 <.L50>:
 432:	3d 40 90 ff 	mov	#65424,	r13	;#0xff90
 436:	2c 4d       	mov	@r13,	r12	;
 438:	0c 93       	cmp	#0,	r12	;r3 As==00
 43a:	fb 3b       	jl	$-8      	;abs 0x432
 43c:	e6 44 00 80 	mov.b	@r4,	-32768(r6); 0x8000
 440:	16 53       	inc	r6		;
 442:	26 92       	cmp	#4,	r6	;r2 As==10
 444:	d8 23       	jnz	$-78     	;abs 0x3f6
 446:	30 40 c6 03 	br	#0x03c6		;

0000044a <.L48>:
 44a:	7e 40 68 00 	mov.b	#104,	r14	;#0x0068
 44e:	30 40 00 04 	br	#0x0400		;

00000452 <.L70>:
 452:	3c 40 21 06 	mov	#1569,	r12	;#0x0621
 456:	8a 12       	call	r10		;
 458:	5c 43       	mov.b	#1,	r12	;r3 As==01
 45a:	31 50 12 00 	add	#18,	r1	;#0x0012
 45e:	30 40 62 04 	br	#0x0462		;

00000462 <__mspabi_func_epilog_7>:
 462:	34 41       	pop	r4		;

00000464 <__mspabi_func_epilog_6>:
 464:	35 41       	pop	r5		;

00000466 <__mspabi_func_epilog_5>:
 466:	36 41       	pop	r6		;

00000468 <__mspabi_func_epilog_4>:
 468:	37 41       	pop	r7		;

0000046a <__mspabi_func_epilog_3>:
 46a:	38 41       	pop	r8		;

0000046c <__mspabi_func_epilog_2>:
 46c:	39 41       	pop	r9		;

0000046e <__mspabi_func_epilog_1>:
 46e:	3a 41       	pop	r10		;
 470:	30 41       	ret			

00000472 <__mspabi_slli_15>:
 472:	0c 5c       	rla	r12		;

00000474 <__mspabi_slli_14>:
 474:	0c 5c       	rla	r12		;

00000476 <__mspabi_slli_13>:
 476:	0c 5c       	rla	r12		;

00000478 <__mspabi_slli_12>:
 478:	0c 5c       	rla	r12		;

0000047a <__mspabi_slli_11>:
 47a:	0c 5c       	rla	r12		;

0000047c <__mspabi_slli_10>:
 47c:	0c 5c       	rla	r12		;

0000047e <__mspabi_slli_9>:
 47e:	0c 5c       	rla	r12		;

00000480 <__mspabi_slli_8>:
 480:	0c 5c       	rla	r12		;

00000482 <__mspabi_slli_7>:
 482:	0c 5c       	rla	r12		;

00000484 <__mspabi_slli_6>:
 484:	0c 5c       	rla	r12		;

00000486 <__mspabi_slli_5>:
 486:	0c 5c       	rla	r12		;

00000488 <__mspabi_slli_4>:
 488:	0c 5c       	rla	r12		;

0000048a <__mspabi_slli_3>:
 48a:	0c 5c       	rla	r12		;

0000048c <__mspabi_slli_2>:
 48c:	0c 5c       	rla	r12		;

0000048e <__mspabi_slli_1>:
 48e:	0c 5c       	rla	r12		;
 490:	30 41       	ret			

00000492 <.L11>:
 492:	3d 53       	add	#-1,	r13	;r3 As==11
 494:	0c 5c       	rla	r12		;

00000496 <__mspabi_slli>:
 496:	0d 93       	cmp	#0,	r13	;r3 As==00
 498:	fc 23       	jnz	$-6      	;abs 0x492
 49a:	30 41       	ret			

0000049c <__mspabi_slll_15>:
 49c:	0c 5c       	rla	r12		;
 49e:	0d 6d       	rlc	r13		;

000004a0 <__mspabi_slll_14>:
 4a0:	0c 5c       	rla	r12		;
 4a2:	0d 6d       	rlc	r13		;

000004a4 <__mspabi_slll_13>:
 4a4:	0c 5c       	rla	r12		;
 4a6:	0d 6d       	rlc	r13		;

000004a8 <__mspabi_slll_12>:
 4a8:	0c 5c       	rla	r12		;
 4aa:	0d 6d       	rlc	r13		;

000004ac <__mspabi_slll_11>:
 4ac:	0c 5c       	rla	r12		;
 4ae:	0d 6d       	rlc	r13		;

000004b0 <__mspabi_slll_10>:
 4b0:	0c 5c       	rla	r12		;
 4b2:	0d 6d       	rlc	r13		;

000004b4 <__mspabi_slll_9>:
 4b4:	0c 5c       	rla	r12		;
 4b6:	0d 6d       	rlc	r13		;

000004b8 <__mspabi_slll_8>:
 4b8:	0c 5c       	rla	r12		;
 4ba:	0d 6d       	rlc	r13		;

000004bc <__mspabi_slll_7>:
 4bc:	0c 5c       	rla	r12		;
 4be:	0d 6d       	rlc	r13		;

000004c0 <__mspabi_slll_6>:
 4c0:	0c 5c       	rla	r12		;
 4c2:	0d 6d       	rlc	r13		;

000004c4 <__mspabi_slll_5>:
 4c4:	0c 5c       	rla	r12		;
 4c6:	0d 6d       	rlc	r13		;

000004c8 <__mspabi_slll_4>:
 4c8:	0c 5c       	rla	r12		;
 4ca:	0d 6d       	rlc	r13		;

000004cc <__mspabi_slll_3>:
 4cc:	0c 5c       	rla	r12		;
 4ce:	0d 6d       	rlc	r13		;

000004d0 <__mspabi_slll_2>:
 4d0:	0c 5c       	rla	r12		;
 4d2:	0d 6d       	rlc	r13		;

000004d4 <__mspabi_slll_1>:
 4d4:	0c 5c       	rla	r12		;
 4d6:	0d 6d       	rlc	r13		;
 4d8:	30 41       	ret			

000004da <.L12>:
 4da:	3e 53       	add	#-1,	r14	;r3 As==11
 4dc:	0c 5c       	rla	r12		;
 4de:	0d 6d       	rlc	r13		;

000004e0 <__mspabi_slll>:
 4e0:	0e 93       	cmp	#0,	r14	;r3 As==00
 4e2:	fb 23       	jnz	$-8      	;abs 0x4da
 4e4:	30 41       	ret			

000004e6 <__mspabi_srli_15>:
 4e6:	12 c3       	clrc			
 4e8:	0c 10       	rrc	r12		;

000004ea <__mspabi_srli_14>:
 4ea:	12 c3       	clrc			
 4ec:	0c 10       	rrc	r12		;

000004ee <__mspabi_srli_13>:
 4ee:	12 c3       	clrc			
 4f0:	0c 10       	rrc	r12		;

000004f2 <__mspabi_srli_12>:
 4f2:	12 c3       	clrc			
 4f4:	0c 10       	rrc	r12		;

000004f6 <__mspabi_srli_11>:
 4f6:	12 c3       	clrc			
 4f8:	0c 10       	rrc	r12		;

000004fa <__mspabi_srli_10>:
 4fa:	12 c3       	clrc			
 4fc:	0c 10       	rrc	r12		;

000004fe <__mspabi_srli_9>:
 4fe:	12 c3       	clrc			
 500:	0c 10       	rrc	r12		;

00000502 <__mspabi_srli_8>:
 502:	12 c3       	clrc			
 504:	0c 10       	rrc	r12		;

00000506 <__mspabi_srli_7>:
 506:	12 c3       	clrc			
 508:	0c 10       	rrc	r12		;

0000050a <__mspabi_srli_6>:
 50a:	12 c3       	clrc			
 50c:	0c 10       	rrc	r12		;

0000050e <__mspabi_srli_5>:
 50e:	12 c3       	clrc			
 510:	0c 10       	rrc	r12		;

00000512 <__mspabi_srli_4>:
 512:	12 c3       	clrc			
 514:	0c 10       	rrc	r12		;

00000516 <__mspabi_srli_3>:
 516:	12 c3       	clrc			
 518:	0c 10       	rrc	r12		;

0000051a <__mspabi_srli_2>:
 51a:	12 c3       	clrc			
 51c:	0c 10       	rrc	r12		;

0000051e <__mspabi_srli_1>:
 51e:	12 c3       	clrc			
 520:	0c 10       	rrc	r12		;
 522:	30 41       	ret			

00000524 <.L11>:
 524:	3d 53       	add	#-1,	r13	;r3 As==11
 526:	12 c3       	clrc			
 528:	0c 10       	rrc	r12		;

0000052a <__mspabi_srli>:
 52a:	0d 93       	cmp	#0,	r13	;r3 As==00
 52c:	fb 23       	jnz	$-8      	;abs 0x524
 52e:	30 41       	ret			

00000530 <__mspabi_srll_15>:
 530:	12 c3       	clrc			
 532:	0d 10       	rrc	r13		;
 534:	0c 10       	rrc	r12		;

00000536 <__mspabi_srll_14>:
 536:	12 c3       	clrc			
 538:	0d 10       	rrc	r13		;
 53a:	0c 10       	rrc	r12		;

0000053c <__mspabi_srll_13>:
 53c:	12 c3       	clrc			
 53e:	0d 10       	rrc	r13		;
 540:	0c 10       	rrc	r12		;

00000542 <__mspabi_srll_12>:
 542:	12 c3       	clrc			
 544:	0d 10       	rrc	r13		;
 546:	0c 10       	rrc	r12		;

00000548 <__mspabi_srll_11>:
 548:	12 c3       	clrc			
 54a:	0d 10       	rrc	r13		;
 54c:	0c 10       	rrc	r12		;

0000054e <__mspabi_srll_10>:
 54e:	12 c3       	clrc			
 550:	0d 10       	rrc	r13		;
 552:	0c 10       	rrc	r12		;

00000554 <__mspabi_srll_9>:
 554:	12 c3       	clrc			
 556:	0d 10       	rrc	r13		;
 558:	0c 10       	rrc	r12		;

0000055a <__mspabi_srll_8>:
 55a:	12 c3       	clrc			
 55c:	0d 10       	rrc	r13		;
 55e:	0c 10       	rrc	r12		;

00000560 <__mspabi_srll_7>:
 560:	12 c3       	clrc			
 562:	0d 10       	rrc	r13		;
 564:	0c 10       	rrc	r12		;

00000566 <__mspabi_srll_6>:
 566:	12 c3       	clrc			
 568:	0d 10       	rrc	r13		;
 56a:	0c 10       	rrc	r12		;

0000056c <__mspabi_srll_5>:
 56c:	12 c3       	clrc			
 56e:	0d 10       	rrc	r13		;
 570:	0c 10       	rrc	r12		;

00000572 <__mspabi_srll_4>:
 572:	12 c3       	clrc			
 574:	0d 10       	rrc	r13		;
 576:	0c 10       	rrc	r12		;

00000578 <__mspabi_srll_3>:
 578:	12 c3       	clrc			
 57a:	0d 10       	rrc	r13		;
 57c:	0c 10       	rrc	r12		;

0000057e <__mspabi_srll_2>:
 57e:	12 c3       	clrc			
 580:	0d 10       	rrc	r13		;
 582:	0c 10       	rrc	r12		;

00000584 <__mspabi_srll_1>:
 584:	12 c3       	clrc			
 586:	0d 10       	rrc	r13		;
 588:	0c 10       	rrc	r12		;
 58a:	30 41       	ret			

0000058c <.L12>:
 58c:	3e 53       	add	#-1,	r14	;r3 As==11
 58e:	12 c3       	clrc			
 590:	0d 10       	rrc	r13		;
 592:	0c 10       	rrc	r12		;

00000594 <__mspabi_srll>:
 594:	0e 93       	cmp	#0,	r14	;r3 As==00
 596:	fa 23       	jnz	$-10     	;abs 0x58c
 598:	30 41       	ret			

Disassembly of section .rodata:

0000059a <_etext-0x142>:
 59a:	0a 43       	clr	r10		;
 59c:	68 65       	addc.b	@r5,	r8	;
 59e:	63 6b       	.word	0x6b63;	????
 5a0:	69 6e       	addc.b	@r14,	r9	;
 5a2:	67 20       	jnz	$+208    	;abs 0x672
 5a4:	41 43       	clr.b	r1		;
 5a6:	4b 0a       	rlam.a	#3,	r11	;
 5a8:	00 0a       	bra	@r10		;
 5aa:	2d 2d       	jc	$+604    	;abs 0x806
 5ac:	2d 2d       	jc	$+604    	;abs 0x808
 5ae:	2d 2d       	jc	$+604    	;abs 0x80a
 5b0:	2d 2d       	jc	$+604    	;abs 0x80c
 5b2:	2d 2d       	jc	$+604    	;abs 0x80e
 5b4:	2d 2d       	jc	$+604    	;abs 0x810
 5b6:	2d 2d       	jc	$+604    	;abs 0x812
 5b8:	2d 2d       	jc	$+604    	;abs 0x814
 5ba:	2d 2d       	jc	$+604    	;abs 0x816
 5bc:	2d 2d       	jc	$+604    	;abs 0x818
 5be:	2d 2d       	jc	$+604    	;abs 0x81a
 5c0:	2d 2d       	jc	$+604    	;abs 0x81c
 5c2:	2d 2d       	jc	$+604    	;abs 0x81e
 5c4:	2d 2d       	jc	$+604    	;abs 0x820
 5c6:	2d 2d       	jc	$+604    	;abs 0x822
 5c8:	2d 2d       	jc	$+604    	;abs 0x824
 5ca:	2d 2d       	jc	$+604    	;abs 0x826
 5cc:	2d 2d       	jc	$+604    	;abs 0x828
 5ce:	2d 2d       	jc	$+604    	;abs 0x82a
 5d0:	0a 2d       	jc	$+534    	;abs 0x7e6
 5d2:	2d 2d       	jc	$+604    	;abs 0x82e
 5d4:	20 49       	br	@r9		;
 5d6:	32 43       	mov	#-1,	r2	;r3 As==11
 5d8:	2f 20       	jnz	$+96     	;abs 0x638
 5da:	57 69 73 68 	addc.b	26739(r9),r7	;0x06873
 5de:	62 6f       	addc.b	@r15,	r2	;
 5e0:	6e 65       	addc.b	@r5,	r14	;
 5e2:	20 45       	br	@r5		;
 5e4:	78 70 6c 6f 	subc.b	#28524,	r8	;#0x6f6c
 5e8:	72 65       	addc.b	@r5+,	r2	;
 5ea:	72 20       	jnz	$+230    	;abs 0x6d0
 5ec:	54 65 72 6d 	addc.b	28018(r5),r4	;0x06d72
 5f0:	69 6e       	addc.b	@r14,	r9	;
 5f2:	61 6c       	addc.b	@r12,	r1	;
 5f4:	20 2d       	jc	$+578    	;abs 0x836
 5f6:	2d 0a 2d 2d 	mova	&666925,r13	;0xa2d2d
 5fa:	2d 2d       	jc	$+604    	;abs 0x856
 5fc:	2d 2d       	jc	$+604    	;abs 0x858
 5fe:	2d 2d       	jc	$+604    	;abs 0x85a
 600:	2d 2d       	jc	$+604    	;abs 0x85c
 602:	2d 2d       	jc	$+604    	;abs 0x85e
 604:	2d 2d       	jc	$+604    	;abs 0x860
 606:	2d 2d       	jc	$+604    	;abs 0x862
 608:	2d 2d       	jc	$+604    	;abs 0x864
 60a:	2d 2d       	jc	$+604    	;abs 0x866
 60c:	2d 2d       	jc	$+604    	;abs 0x868
 60e:	2d 2d       	jc	$+604    	;abs 0x86a
 610:	2d 2d       	jc	$+604    	;abs 0x86c
 612:	2d 2d       	jc	$+604    	;abs 0x86e
 614:	2d 2d       	jc	$+604    	;abs 0x870
 616:	2d 2d       	jc	$+604    	;abs 0x872
 618:	2d 2d       	jc	$+604    	;abs 0x874
 61a:	2d 2d       	jc	$+604    	;abs 0x876
 61c:	2d 2d       	jc	$+604    	;abs 0x878
 61e:	0a 0a       	mova	@r10,	r10	;
 620:	00 45       	br	r5		;
 622:	72 72       	subc.b	#8,	r2	;r2 As==11
 624:	6f 72       	subc.b	#4,	r15	;r2 As==10
 626:	21 20       	jnz	$+68     	;abs 0x66a
 628:	4e 6f       	addc.b	r15,	r14	;
 62a:	20 57       	add	@r7,	r0	;
 62c:	69 73       	subc.b	#2,	r9	;r3 As==10
 62e:	68 62       	addc.b	#4,	r8	;r2 As==10
 630:	6f 6e       	addc.b	@r14,	r15	;
 632:	65 20       	jnz	$+204    	;abs 0x6fe
 634:	61 64       	addc.b	@r4,	r1	;
 636:	61 70       	subc.b	@r0,	r1	;
 638:	74 65       	addc.b	@r5+,	r4	;
 63a:	72 20       	jnz	$+230    	;abs 0x720
 63c:	73 79       	.word	0x7973;	????
 63e:	6e 74       	subc.b	@r4,	r14	;
 640:	68 65       	addc.b	@r5,	r8	;
 642:	73 69       	.word	0x6973;	????
 644:	7a 65       	addc.b	@r5+,	r10	;
 646:	64 21       	jnz	$+714    	;abs 0x910
 648:	00 0a       	bra	@r10		;
 64a:	50 72 65 73 	subc.b	&0x7365,r0	;0x7365
 64e:	73 20       	jnz	$+232    	;abs 0x736
 650:	61 20       	jnz	$+196    	;abs 0x714
 652:	6b 65       	addc.b	@r5,	r11	;
 654:	79 20       	jnz	$+244    	;abs 0x748
 656:	74 6f       	addc.b	@r15+,	r4	;
 658:	20 73       	subc	#2,	r0	;r3 As==10
 65a:	74 61       	addc.b	@r1+,	r4	;
 65c:	72 74       	subc.b	@r4+,	r2	;
 65e:	0a 00       	mova	@r0,	r10	;
 660:	08 20       	jnz	$+18     	;abs 0x672
 662:	08 00       	mova	@r0,	r8	;
 664:	0a 00       	mova	@r0,	r10	;
 666:	53 65       	.word	0x6553;	????
 668:	74 74       	subc.b	@r4+,	r4	;
 66a:	69 6e       	addc.b	@r14,	r9	;
 66c:	67 20       	jnz	$+208    	;abs 0x73c
 66e:	75 70 20 49 	subc.b	#18720,	r5	;#0x4920
 672:	32 43       	mov	#-1,	r2	;r3 As==11
 674:	20 63       	addc	#2,	r0	;r3 As==10
 676:	6f 72       	subc.b	#4,	r15	;r2 As==10
 678:	65 00 0a 54 	mova	r0,	&349194	; 0x5540a
 67c:	61 6b       	addc.b	@r11,	r1	;
 67e:	65 20       	jnz	$+204    	;abs 0x74a
 680:	53 44       	.word	0x4453;	????
 682:	41 20       	jnz	$+132    	;abs 0x706
 684:	6c 6f       	addc.b	@r15,	r12	;
 686:	77 20       	jnz	$+240    	;abs 0x776
 688:	74 6f       	addc.b	@r15+,	r4	;
 68a:	20 77       	subc	@r7,	r0	;
 68c:	61 6b       	addc.b	@r11,	r1	;
 68e:	65 20       	jnz	$+204    	;abs 0x75a
 690:	75 70 20 45 	subc.b	#17696,	r5	;#0x4520
 694:	45 50       	add.b	r0,	r5	;
 696:	52 4f 4d 2e 	mov.b	11853(r15),r2	;0x02e4d
 69a:	0a 00       	mova	@r0,	r10	;
 69c:	0a 53       	add	#0,	r10	;r3 As==00
 69e:	65 74       	subc.b	@r4,	r5	;
 6a0:	75 70 20 64 	subc.b	#25632,	r5	;#0x6420
 6a4:	6f 6e       	addc.b	@r14,	r15	;
 6a6:	65 2e       	jc	$-820    	;abs 0x372
 6a8:	0a 00       	mova	@r0,	r10	;
 6aa:	0a 57       	add	r7,	r10	;
 6ac:	72 69       	addc.b	@r9+,	r2	;
 6ae:	74 69       	addc.b	@r9+,	r4	;
 6b0:	6e 67       	addc.b	@r7,	r14	;
 6b2:	20 74       	subc	@r4,	r0	;
 6b4:	6f 20       	jnz	$+224    	;abs 0x794
 6b6:	49 32       	jn	$-876    	;abs 0x34a
 6b8:	43 2e       	jc	$-888    	;abs 0x340
 6ba:	0a 00       	mova	@r0,	r10	;
 6bc:	0a 4e       	mov	r14,	r10	;
 6be:	6f 20       	jnz	$+224    	;abs 0x79e
 6c0:	41 43       	clr.b	r1		;
 6c2:	4b 2e       	jc	$-872    	;abs 0x35a
 6c4:	20 53       	incd	r0		;
 6c6:	65 6e       	addc.b	@r14,	r5	;
 6c8:	64 69       	addc.b	@r9,	r4	;
 6ca:	6e 67       	addc.b	@r7,	r14	;
 6cc:	20 53       	incd	r0		;
 6ce:	54 4f 50 2e 	mov.b	11856(r15),r4	;0x02e50
 6d2:	0a 00       	mova	@r0,	r10	;
 6d4:	0a 41       	mov	r1,	r10	;
 6d6:	43 4b       	.word	0x4b43;	????
 6d8:	20 3d       	jmp	$+578    	;abs 0x91a
 6da:	20 00 06 12 	Address 0x000006dc is out of bounds.
bra	&65535		;0x0ffff

Disassembly of section .bss:

00008000 <__bssstart>:
    8000:	00 00       	beq			
    8002:	00 00       	beq			
    8004:	00 00       	beq			
    8006:	00 00       	beq			
    8008:	00 00       	beq			
    800a:	00 00       	beq			
    800c:	00 00       	beq			
    800e:	00 00       	beq			

Disassembly of section .MP430.attributes:

00000000 <.MP430.attributes>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	41 16       	popm.a	#5,	r5	;20-bit words
   2:	00 00       	beq			
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	00 6d       	addc	r13,	r0	;
   6:	73 70       	.word	0x7073;	????


; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
   8:	61 62       	addc.b	#4,	r1	;r2 As==10
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   e:	00 00       	beq			
  10:	00 04       	bra	@r4		;
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	01 06       	mova	@r6,	r1	;
  14:	01 08       	mova	@r8,	r1	;
__crt0_clr_io:
      tst  r9 ; until the end -> wrap-arounf to 0
  16:	01 41       	mov	r1,	r1	;
      jeq  __crt0_clr_io_end
  18:	16 00       	mova	@r0+,	r6	;
      mov  #0, 0(r9) ; clear entry
  1a:	00 00       	beq			
  1c:	6d 73       	subc.b	#2,	r13	;r3 As==10
      incd r9
  1e:	70 61       	addc.b	@r1+,	r0	;
      jmp  __crt0_clr_io
  20:	62 69       	addc.b	@r9,	r2	;

; -----------------------------------------------------------
; Clear complete DMEM (including .bss section)
; -----------------------------------------------------------
__crt0_clr_dmem:
      cmp  r8, r1 ; base address equal to end of RAM?
  22:	00 01       	bra	@r1		;
      jeq  __crt0_clr_dmem_end
  24:	0b 00       	mova	@r0,	r11	;
      mov  #0, 0(r8) ; clear entry
  26:	00 00       	beq			
  28:	04 01       	mova	@r1,	r4	;
      incd r8
  2a:	06 01       	mova	@r1,	r6	;
      jmp  __crt0_clr_dmem
  2c:	08 01       	mova	@r1,	r8	;


; -----------------------------------------------------------
; Copy initialized .data section from ROM to RAM
; -----------------------------------------------------------
    mov  #__data_start_rom, r5
  2e:	41 16       	popm.a	#5,	r5	;20-bit words
  30:	00 00       	beq			
    mov  #__data_end_rom, r6
  32:	00 6d       	addc	r13,	r0	;
  34:	73 70       	.word	0x7073;	????
    mov  #__data_start, r7
  36:	61 62       	addc.b	#4,	r1	;r2 As==10
  38:	69 00 01 0b 	mova	r0,	&592641	; 0x90b01
__crt0_cpy_data:
      cmp  r5, r6
      jeq  __crt0_cpy_data_end
  3c:	00 00       	beq			
      mov  @r5+, 0(r7)
  3e:	00 04       	bra	@r4		;
  40:	01 06       	mova	@r6,	r1	;
      incd r7
  42:	01 08       	mova	@r8,	r1	;
      jmp  __crt0_cpy_data
  44:	01 41       	mov	r1,	r1	;


; -----------------------------------------------------------
; Re-init SR and clear all pending IRQs from buffer
; -----------------------------------------------------------
    mov  #(1<<14), r2 ; this flag auto clears
  46:	16 00       	mova	@r0+,	r6	;
  48:	00 00       	beq			


; -----------------------------------------------------------
; Initialize all remaining registers
; -----------------------------------------------------------
    mov  #0, r4
  4a:	6d 73       	subc.b	#2,	r13	;r3 As==10
;   mov  #0, r5 ; -- is already initialized
;   mov  #0, r6 ; -- is already initialized
;   mov  #0, r7 ; -- is already initialized
;   mov  #0, r8 ; -- is already initialized
;   mov  #0, r9 ; -- is already initialized
    mov  #0, r10
  4c:	70 61       	addc.b	@r1+,	r0	;
    mov  #0, r11
  4e:	62 69       	addc.b	@r9,	r2	;
    mov  #0, r12 ; set argc = 0
  50:	00 01       	bra	@r1		;
    mov  #0, r13
  52:	0b 00       	mova	@r0,	r11	;
    mov  #0, r14
  54:	00 00       	beq			
    mov  #0, r15
  56:	04 01       	mova	@r1,	r4	;

; -----------------------------------------------------------
; This is where the actual application is started
; -----------------------------------------------------------
__crt0_start_main:
    call  #main
  58:	06 01       	mova	@r1,	r6	;
  5a:	08 01       	mova	@r1,	r8	;

; -----------------------------------------------------------
; Go to endless sleep mode if main returns
; -----------------------------------------------------------
__crt0_this_is_the_end:
    mov  #0, r2 ; deactivate IRQs
  5c:	41 16       	popm.a	#5,	r5	;20-bit words
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
  5e:	00 00       	beq			
  60:	00 6d       	addc	r13,	r0	;
  62:	73 70       	.word	0x7073;	????
    mov  #(1<<4), r2 ; set CPU to sleep mode
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
 12a:	01 00       	Address 0x0000012a is out of bounds.
.word	0xffff;	????

Disassembly of section .comment:

00000000 <.comment>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	47 43       	clr.b	r7		;
   2:	43 3a       	jl	$-888    	;abs 0xfffffc8a
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	20 28       	jnc	$+66     	;abs 0x46
   6:	53 4f       	.word	0x4f53;	????


; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
   8:	4d 4e       	mov.b	r14,	r13	;
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	49 55       	add.b	r5,	r9	;
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   c:	4d 20       	jnz	$+156    	;abs 0xa8
   e:	54 65 63 68 	addc.b	26723(r5),r4	;0x06863
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	6e 6f       	addc.b	@r15,	r14	;
  14:	6c 6f       	addc.b	@r15,	r12	;
__crt0_clr_io:
      tst  r9 ; until the end -> wrap-arounf to 0
  16:	67 69       	addc.b	@r9,	r7	;
      jeq  __crt0_clr_io_end
  18:	65 73       	subc.b	#2,	r5	;r3 As==10
      mov  #0, 0(r9) ; clear entry
  1a:	20 4c       	br	@r12		;
  1c:	69 6d       	addc.b	@r13,	r9	;
      incd r9
  1e:	69 74       	subc.b	@r4,	r9	;
      jmp  __crt0_clr_io
  20:	65 64       	addc.b	@r4,	r5	;

; -----------------------------------------------------------
; Clear complete DMEM (including .bss section)
; -----------------------------------------------------------
__crt0_clr_dmem:
      cmp  r8, r1 ; base address equal to end of RAM?
  22:	20 2d       	jc	$+578    	;abs 0x264
      jeq  __crt0_clr_dmem_end
  24:	20 6d       	addc	@r13,	r0	;
      mov  #0, 0(r8) ; clear entry
  26:	73 70       	.word	0x7073;	????
  28:	34 33       	jn	$-406    	;abs 0xfffffe92
      incd r8
  2a:	30 2d       	jc	$+610    	;abs 0x28c
      jmp  __crt0_clr_dmem
  2c:	67 63       	addc.b	#2,	r7	;r3 As==10


; -----------------------------------------------------------
; Copy initialized .data section from ROM to RAM
; -----------------------------------------------------------
    mov  #__data_start_rom, r5
  2e:	63 20       	jnz	$+200    	;abs 0xf6
  30:	36 2e       	jc	$-914    	;abs 0xfffffc9e
    mov  #__data_end_rom, r6
  32:	32 2e       	jc	$-922    	;abs 0xfffffc98
  34:	31 2e       	jc	$-924    	;abs 0xfffffc98
    mov  #__data_start, r7
  36:	31 36       	jge	$-924    	;abs 0xfffffc9a
  38:	29 20       	jnz	$+84     	;abs 0x8c
__crt0_cpy_data:
      cmp  r5, r6
  3a:	36 2e       	jc	$-914    	;abs 0xfffffca8
      jeq  __crt0_cpy_data_end
  3c:	32 2e       	jc	$-922    	;abs 0xfffffca2
      mov  @r5+, 0(r7)
  3e:	31 20       	jnz	$+100    	;abs 0xa2
  40:	32 30       	jn	$+102    	;abs 0xa6
      incd r7
  42:	31 36       	jge	$-924    	;abs 0xfffffca6
      jmp  __crt0_cpy_data
  44:	31 32       	jn	$-924    	;abs 0xfffffca8


; -----------------------------------------------------------
; Re-init SR and clear all pending IRQs from buffer
; -----------------------------------------------------------
    mov  #(1<<14), r2 ; this flag auto clears
  46:	31 32       	jn	$-924    	;abs 0xfffffcaa
  48:	00 40       	Address 0x00000048 is out of bounds.
.word	0xffff;	????

Disassembly of section .debug_aranges:

00000000 <L0>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	1c 00       	mova	@r0+,	r12	;
   2:	00 00       	beq			
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	02 00       	mova	@r0,	r2	;
   6:	00 00       	beq			


; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
   8:	00 00       	beq			
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	04 00       	mova	@r0,	r4	;
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   c:	00 00       	beq			
   e:	00 00       	beq			
  10:	00 00       	beq			
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	00 00       	beq			
  14:	6a 00 00 00 	mova	r0,	&655360	; 0xa0000
__crt0_clr_io:
      tst  r9 ; until the end -> wrap-arounf to 0
      jeq  __crt0_clr_io_end
  18:	00 00       	beq			
      mov  #0, 0(r9) ; clear entry
  1a:	00 00       	beq			
  1c:	00 00       	beq			
      incd r9
  1e:	00 00       	beq			

Disassembly of section .debug_info:

00000000 <L0>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	73 00 00 00 	mova	r0,	0(r3)	;
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	02 00       	mova	@r0,	r2	;
   6:	00 00       	beq			


; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
   8:	00 00       	beq			
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	04 01       	mova	@r1,	r4	;
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   c:	00 00       	beq			
   e:	00 00       	beq			
  10:	00 00       	beq			
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	00 00       	beq			
  14:	6a 00 00 00 	mova	r0,	&655360	; 0xa0000
__crt0_clr_io:
      tst  r9 ; until the end -> wrap-arounf to 0
      jeq  __crt0_clr_io_end
  18:	2e 2e       	jc	$-930    	;abs 0xfffffc76
      mov  #0, 0(r9) ; clear entry
  1a:	2f 63       	addc	#2,	r15	;r3 As==10
  1c:	6f 6d       	addc.b	@r13,	r15	;
      incd r9
  1e:	6d 6f       	addc.b	@r15,	r13	;
      jmp  __crt0_clr_io
  20:	6e 2f       	jc	$-290    	;abs 0xfffffefe

; -----------------------------------------------------------
; Clear complete DMEM (including .bss section)
; -----------------------------------------------------------
__crt0_clr_dmem:
      cmp  r8, r1 ; base address equal to end of RAM?
  22:	63 72       	.word	0x7263;	????
      jeq  __crt0_clr_dmem_end
  24:	74 30       	jn	$+234    	;abs 0x10e
      mov  #0, 0(r8) ; clear entry
  26:	2e 61       	addc	@r1,	r14	;
  28:	73 6d       	.word	0x6d73;	????
      incd r8
  2a:	00 2f       	jc	$-510    	;abs 0xfffffe2c
      jmp  __crt0_clr_dmem
  2c:	75 73       	subc.b	#-1,	r5	;r3 As==11


; -----------------------------------------------------------
; Copy initialized .data section from ROM to RAM
; -----------------------------------------------------------
    mov  #__data_start_rom, r5
  2e:	65 72       	subc.b	#4,	r5	;r2 As==10
  30:	73 2f       	jc	$-280    	;abs 0xffffff18
    mov  #__data_end_rom, r6
  32:	70 68       	addc.b	@r8+,	r0	;
  34:	64 67       	addc.b	@r7,	r4	;
    mov  #__data_start, r7
  36:	63 2f       	jc	$-312    	;abs 0xfffffefe
  38:	44 6f       	addc.b	r15,	r4	;
__crt0_cpy_data:
      cmp  r5, r6
  3a:	63 75       	.word	0x7563;	????
      jeq  __crt0_cpy_data_end
  3c:	6d 65       	addc.b	@r5,	r13	;
      mov  @r5+, 0(r7)
  3e:	6e 74       	subc.b	@r4,	r14	;
  40:	73 2f       	jc	$-280    	;abs 0xffffff28
      incd r7
  42:	6e 65       	addc.b	@r5,	r14	;
      jmp  __crt0_cpy_data
  44:	6f 34       	jge	$+224    	;abs 0x124


; -----------------------------------------------------------
; Re-init SR and clear all pending IRQs from buffer
; -----------------------------------------------------------
    mov  #(1<<14), r2 ; this flag auto clears
  46:	33 30       	jn	$+104    	;abs 0xae
  48:	2f 77       	subc	@r7,	r15	;


; -----------------------------------------------------------
; Initialize all remaining registers
; -----------------------------------------------------------
    mov  #0, r4
  4a:	6f 72       	subc.b	#4,	r15	;r2 As==10
;   mov  #0, r5 ; -- is already initialized
;   mov  #0, r6 ; -- is already initialized
;   mov  #0, r7 ; -- is already initialized
;   mov  #0, r8 ; -- is already initialized
;   mov  #0, r9 ; -- is already initialized
    mov  #0, r10
  4c:	6b 2f       	jc	$-296    	;abs 0xffffff24
    mov  #0, r11
  4e:	62 75       	subc.b	@r5,	r2	;
    mov  #0, r12 ; set argc = 0
  50:	69 6c       	addc.b	@r12,	r9	;
    mov  #0, r13
  52:	64 2f       	jc	$-310    	;abs 0xffffff1c
    mov  #0, r14
  54:	73 72       	.word	0x7273;	????
    mov  #0, r15
  56:	63 2f       	jc	$-312    	;abs 0xffffff1e

; -----------------------------------------------------------
; This is where the actual application is started
; -----------------------------------------------------------
__crt0_start_main:
    call  #main
  58:	6e 65       	addc.b	@r5,	r14	;
  5a:	6f 34       	jge	$+224    	;abs 0x13a

; -----------------------------------------------------------
; Go to endless sleep mode if main returns
; -----------------------------------------------------------
__crt0_this_is_the_end:
    mov  #0, r2 ; deactivate IRQs
  5c:	33 30       	jn	$+104    	;abs 0xc4
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
  5e:	2f 73       	subc	#2,	r15	;r3 As==10
  60:	77 2f       	jc	$-272    	;abs 0xffffff50
  62:	63 6f       	.word	0x6f63;	????
    mov  #(1<<4), r2 ; set CPU to sleep mode
  64:	6d 6d       	addc.b	@r13,	r13	;
  66:	6f 6e       	addc.b	@r14,	r15	;
    nop
  68:	00 47       	br	r7		;
  6a:	4e 55       	add.b	r5,	r14	;
  6c:	20 41       	br	@r1		;
  6e:	53 20       	jnz	$+168    	;abs 0x116
  70:	32 2e       	jc	$-922    	;abs 0xfffffcd6
  72:	32 36       	jge	$-922    	;abs 0xfffffcd8
  74:	00 01       	bra	@r1		;
  76:	80 00       	Address 0x00000076 is out of bounds.
.word	0xffff;	????

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	01 11       	rra	r1		;
   2:	00 10       	rrc	r0		;
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	06 11       	rra	r6		;
   6:	01 12       	push	r1		;


; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
   8:	01 03       	mova	@r3,	r1	;
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	08 1b 08 25 	rpt #9 { jzx.?	$+530    	;abs 0x21e, Reserved use of A/L and B/W bits detected
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   e:	08 13       	reti			;return from interupt
  10:	05 00       	mova	@r0,	r5	;
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	00 00       	beq			

Disassembly of section .debug_line:

00000000 <L0>:

__crt0_begin:
; -----------------------------------------------------------
; Get required system info
; -----------------------------------------------------------
    mov  &0xFFE8, r8 ; = DMEM (RAM) base address
   0:	17 01       	mova	@r1+,	r7	;
   2:	00 00       	beq			
    mov  &0xFFEA, r1 ; = DMEM (RAM) size in byte
   4:	02 00       	mova	@r0,	r2	;
   6:	29 00 00 00 	mova	&0,	r9	;

0000000a <L0>:

; -----------------------------------------------------------
; Minimal required hardware setup
; -----------------------------------------------------------
    mov  #0, r2           ; clear status register & disable interrupts
    add  r8, r1           ; r1 = stack pointer = end of RAM
   a:	01 01       	mova	@r1,	r1	;
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
   c:	fb 0e       	suba	r14,	r11	;
   e:	0d 00       	mova	@r0,	r13	;
  10:	01 01       	mova	@r1,	r1	;
; Initialize all IO device registers (set to zero)
; -----------------------------------------------------------
; This loop does not trigger any operations as the CTRL registers, which are located
; at offset 0 of the according device, are set to zero resulting in disabling the
; specific device.
    mov  #0xFF80, r9 ; beginning of IO section
  12:	01 01       	mova	@r1,	r1	;
  14:	00 00       	beq			
__crt0_clr_io:
      tst  r9 ; until the end -> wrap-arounf to 0
  16:	00 01       	bra	@r1		;
      jeq  __crt0_clr_io_end
  18:	00 00       	beq			
      mov  #0, 0(r9) ; clear entry
  1a:	01 2e       	jc	$-1020   	;abs 0xfffffc1e
  1c:	2e 2f       	jc	$-418    	;abs 0xfffffe7a
      incd r9
  1e:	63 6f       	.word	0x6f63;	????
      jmp  __crt0_clr_io
  20:	6d 6d       	addc.b	@r13,	r13	;

; -----------------------------------------------------------
; Clear complete DMEM (including .bss section)
; -----------------------------------------------------------
__crt0_clr_dmem:
      cmp  r8, r1 ; base address equal to end of RAM?
  22:	6f 6e       	addc.b	@r14,	r15	;
      jeq  __crt0_clr_dmem_end
  24:	00 00       	beq			
      mov  #0, 0(r8) ; clear entry
  26:	63 72       	.word	0x7263;	????
  28:	74 30       	jn	$+234    	;abs 0x112
      incd r8
  2a:	2e 61       	addc	@r1,	r14	;
      jmp  __crt0_clr_dmem
  2c:	73 6d       	.word	0x6d73;	????


; -----------------------------------------------------------
; Copy initialized .data section from ROM to RAM
; -----------------------------------------------------------
    mov  #__data_start_rom, r5
  2e:	00 01       	bra	@r1		;
  30:	00 00       	beq			
    mov  #__data_end_rom, r6
  32:	00 00       	beq			
  34:	05 02       	mova	@r2,	r5	;
    mov  #__data_start, r7
  36:	00 00       	beq			
  38:	00 00       	beq			
__crt0_cpy_data:
      cmp  r5, r6
  3a:	03 20       	jnz	$+8      	;abs 0x42
      jeq  __crt0_cpy_data_end
  3c:	01 03       	mova	@r3,	r1	;
      mov  @r5+, 0(r7)
  3e:	01 09       	mova	@r9,	r1	;
  40:	04 00       	mova	@r0,	r4	;
      incd r7
  42:	01 03       	mova	@r3,	r1	;
      jmp  __crt0_cpy_data
  44:	06 09       	mova	@r9,	r6	;


; -----------------------------------------------------------
; Re-init SR and clear all pending IRQs from buffer
; -----------------------------------------------------------
    mov  #(1<<14), r2 ; this flag auto clears
  46:	04 00       	mova	@r0,	r4	;
  48:	01 03       	mova	@r3,	r1	;


; -----------------------------------------------------------
; Initialize all remaining registers
; -----------------------------------------------------------
    mov  #0, r4
  4a:	01 09       	mova	@r9,	r1	;
;   mov  #0, r5 ; -- is already initialized
;   mov  #0, r6 ; -- is already initialized
;   mov  #0, r7 ; -- is already initialized
;   mov  #0, r8 ; -- is already initialized
;   mov  #0, r9 ; -- is already initialized
    mov  #0, r10
  4c:	02 00       	mova	@r0,	r2	;
    mov  #0, r11
  4e:	01 03       	mova	@r3,	r1	;
    mov  #0, r12 ; set argc = 0
  50:	01 09       	mova	@r9,	r1	;
    mov  #0, r13
  52:	02 00       	mova	@r0,	r2	;
    mov  #0, r14
  54:	01 03       	mova	@r3,	r1	;
    mov  #0, r15
  56:	09 09       	mova	@r9,	r9	;

; -----------------------------------------------------------
; This is where the actual application is started
; -----------------------------------------------------------
__crt0_start_main:
    call  #main
  58:	06 00       	mova	@r0,	r6	;
  5a:	01 03       	mova	@r3,	r1	;

; -----------------------------------------------------------
; Go to endless sleep mode if main returns
; -----------------------------------------------------------
__crt0_this_is_the_end:
    mov  #0, r2 ; deactivate IRQs
  5c:	02 09       	mova	@r9,	r2	;
    mov  #0x4700, &0xFFD0 ; deactivate watchdog
  5e:	04 00       	mova	@r0,	r4	;
  60:	01 03       	mova	@r3,	r1	;
  62:	01 09       	mova	@r9,	r1	;
    mov  #(1<<4), r2 ; set CPU to sleep mode
  64:	02 00       	mova	@r0,	r2	;
  66:	01 03       	mova	@r3,	r1	;
    nop
  68:	01 09       	mova	@r9,	r1	;
  6a:	02 00       	mova	@r0,	r2	;
  6c:	01 03       	mova	@r3,	r1	;
  6e:	01 09       	mova	@r9,	r1	;
  70:	04 00       	mova	@r0,	r4	;
  72:	01 03       	mova	@r3,	r1	;
  74:	01 09       	mova	@r9,	r1	;
  76:	02 00       	mova	@r0,	r2	;
  78:	01 03       	mova	@r3,	r1	;
  7a:	08 09       	mova	@r9,	r8	;
  7c:	02 00       	mova	@r0,	r2	;
  7e:	01 03       	mova	@r3,	r1	;
  80:	01 09       	mova	@r9,	r1	;
  82:	02 00       	mova	@r0,	r2	;
  84:	01 03       	mova	@r3,	r1	;
  86:	01 09       	mova	@r9,	r1	;
  88:	02 00       	mova	@r0,	r2	;
  8a:	01 03       	mova	@r3,	r1	;
  8c:	01 09       	mova	@r9,	r1	;
  8e:	04 00       	mova	@r0,	r4	;
  90:	01 03       	mova	@r3,	r1	;
  92:	01 09       	mova	@r9,	r1	;
  94:	02 00       	mova	@r0,	r2	;
  96:	01 03       	mova	@r3,	r1	;
  98:	07 09       	mova	@r9,	r7	;
  9a:	02 00       	mova	@r0,	r2	;
  9c:	01 03       	mova	@r3,	r1	;
  9e:	01 09       	mova	@r9,	r1	;
  a0:	04 00       	mova	@r0,	r4	;
  a2:	01 03       	mova	@r3,	r1	;
  a4:	01 09       	mova	@r9,	r1	;
  a6:	04 00       	mova	@r0,	r4	;
  a8:	01 03       	mova	@r3,	r1	;
  aa:	02 09       	mova	@r9,	r2	;
  ac:	04 00       	mova	@r0,	r4	;
  ae:	01 03       	mova	@r3,	r1	;
  b0:	01 09       	mova	@r9,	r1	;
  b2:	02 00       	mova	@r0,	r2	;
  b4:	01 03       	mova	@r3,	r1	;
  b6:	01 09       	mova	@r9,	r1	;
  b8:	02 00       	mova	@r0,	r2	;
  ba:	01 03       	mova	@r3,	r1	;
  bc:	01 09       	mova	@r9,	r1	;
  be:	04 00       	mova	@r0,	r4	;
  c0:	01 03       	mova	@r3,	r1	;
  c2:	01 09       	mova	@r9,	r1	;
  c4:	02 00       	mova	@r0,	r2	;
  c6:	01 03       	mova	@r3,	r1	;
  c8:	07 09       	mova	@r9,	r7	;
  ca:	02 00       	mova	@r0,	r2	;
  cc:	01 03       	mova	@r3,	r1	;
  ce:	06 09       	mova	@r9,	r6	;
  d0:	04 00       	mova	@r0,	r4	;
  d2:	01 03       	mova	@r3,	r1	;
  d4:	06 09       	mova	@r9,	r6	;
  d6:	02 00       	mova	@r0,	r2	;
  d8:	01 03       	mova	@r3,	r1	;
  da:	01 09       	mova	@r9,	r1	;
  dc:	02 00       	mova	@r0,	r2	;
  de:	01 03       	mova	@r3,	r1	;
  e0:	01 09       	mova	@r9,	r1	;
  e2:	02 00       	mova	@r0,	r2	;
  e4:	01 03       	mova	@r3,	r1	;
  e6:	01 09       	mova	@r9,	r1	;
  e8:	02 00       	mova	@r0,	r2	;
  ea:	01 03       	mova	@r3,	r1	;
  ec:	01 09       	mova	@r9,	r1	;
  ee:	02 00       	mova	@r0,	r2	;
  f0:	01 03       	mova	@r3,	r1	;
  f2:	01 09       	mova	@r9,	r1	;
  f4:	02 00       	mova	@r0,	r2	;
  f6:	01 03       	mova	@r3,	r1	;
  f8:	07 09       	mova	@r9,	r7	;
  fa:	02 00       	mova	@r0,	r2	;
  fc:	01 03       	mova	@r3,	r1	;
  fe:	07 09       	mova	@r9,	r7	;
 100:	04 00       	mova	@r0,	r4	;
 102:	01 03       	mova	@r3,	r1	;
 104:	01 09       	mova	@r9,	r1	;
 106:	02 00       	mova	@r0,	r2	;
 108:	01 03       	mova	@r3,	r1	;
 10a:	01 09       	mova	@r9,	r1	;
 10c:	06 00       	mova	@r0,	r6	;
 10e:	01 03       	mova	@r3,	r1	;
 110:	01 09       	mova	@r9,	r1	;
 112:	04 00       	mova	@r0,	r4	;
 114:	01 09       	mova	@r9,	r1	;
 116:	02 00       	mova	@r0,	r2	;
 118:	00 01       	bra	@r1		;
 11a:	01 93       	Address 0x0000011a is out of bounds.
.word	0xffff;	????
