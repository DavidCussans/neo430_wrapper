
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
  2e:	35 40 b2 05 	mov	#1458,	r5	;#0x05b2

00000032 <.Loc.77.1>:
    mov  #__data_end_rom, r6
  32:	36 40 b2 05 	mov	#1458,	r6	;#0x05b2

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
  58:	b0 12 3a 03 	call	#826		;#0x033a

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
  96:	30 40 9c 04 	br	#0x049c		;

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

000000ae <uart_print_hex_char>:
  ae:	7c f0 0f 00 	and.b	#15,	r12	;#0x000f
  b2:	7d 40 09 00 	mov.b	#9,	r13	;
  b6:	4d 9c       	cmp.b	r12,	r13	;
  b8:	07 28       	jnc	$+16     	;abs 0xc8
  ba:	7c 50 30 00 	add.b	#48,	r12	;#0x0030

000000be <.L11>:
  be:	3c f0 ff 00 	and	#255,	r12	;#0x00ff
  c2:	b0 12 6a 00 	call	#106		;#0x006a
  c6:	30 41       	ret			

000000c8 <.L9>:
  c8:	7c 50 37 00 	add.b	#55,	r12	;#0x0037
  cc:	30 40 be 00 	br	#0x00be		;

000000d0 <_itoa>:
  d0:	0a 12       	push	r10		;
  d2:	09 12       	push	r9		;
  d4:	08 12       	push	r8		;
  d6:	07 12       	push	r7		;
  d8:	06 12       	push	r6		;
  da:	05 12       	push	r5		;
  dc:	04 12       	push	r4		;
  de:	31 80 16 00 	sub	#22,	r1	;#0x0016
  e2:	08 4c       	mov	r12,	r8	;
  e4:	09 4d       	mov	r13,	r9	;
  e6:	c1 43 0a 00 	mov.b	#0,	10(r1)	;r3 As==00, 0x000a
  ea:	c1 43 15 00 	mov.b	#0,	21(r1)	;r3 As==00, 0x0015
  ee:	4a 43       	clr.b	r10		;
  f0:	35 40 a7 05 	mov	#1447,	r5	;#0x05a7
  f4:	34 40 88 04 	mov	#1160,	r4	;#0x0488
  f8:	37 40 7a 04 	mov	#1146,	r7	;#0x047a

000000fc <.L13>:
  fc:	46 43       	clr.b	r6		;
  fe:	06 51       	add	r1,	r6	;
 100:	06 5a       	add	r10,	r6	;
 102:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
 106:	4f 43       	clr.b	r15		;
 108:	0c 48       	mov	r8,	r12	;
 10a:	0d 49       	mov	r9,	r13	;
 10c:	84 12       	call	r4		;
 10e:	0c 55       	add	r5,	r12	;
 110:	e6 4c 00 00 	mov.b	@r12,	0(r6)	;
 114:	7e 40 0a 00 	mov.b	#10,	r14	;#0x000a
 118:	4f 43       	clr.b	r15		;
 11a:	0c 48       	mov	r8,	r12	;
 11c:	0d 49       	mov	r9,	r13	;
 11e:	87 12       	call	r7		;
 120:	08 4c       	mov	r12,	r8	;
 122:	09 4d       	mov	r13,	r9	;
 124:	1a 53       	inc	r10		;
 126:	3a 90 0a 00 	cmp	#10,	r10	;#0x000a
 12a:	e8 23       	jnz	$-46     	;abs 0xfc
 12c:	0c 41       	mov	r1,	r12	;
 12e:	3c 50 09 00 	add	#9,	r12	;
 132:	7d 40 09 00 	mov.b	#9,	r13	;

00000136 <.L15>:
 136:	fc 90 30 00 	cmp.b	#48,	0(r12)	;#0x0030
 13a:	00 00 
 13c:	08 20       	jnz	$+18     	;abs 0x14e
 13e:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00
 142:	7d 53       	add.b	#-1,	r13	;r3 As==11
 144:	3d f0 ff 00 	and	#255,	r13	;#0x00ff
 148:	3c 53       	add	#-1,	r12	;r3 As==11
 14a:	0d 93       	cmp	#0,	r13	;r3 As==00
 14c:	f4 23       	jnz	$-22     	;abs 0x136

0000014e <.L14>:
 14e:	4e 43       	clr.b	r14		;
 150:	0e 51       	add	r1,	r14	;
 152:	0e 5d       	add	r13,	r14	;
 154:	4c 43       	clr.b	r12		;

00000156 <.L17>:
 156:	6f 4e       	mov.b	@r14,	r15	;
 158:	0f 93       	cmp	#0,	r15	;r3 As==00
 15a:	09 24       	jz	$+20     	;abs 0x16e
 15c:	4a 4c       	mov.b	r12,	r10	;
 15e:	5a 53       	inc.b	r10		;
 160:	79 40 0b 00 	mov.b	#11,	r9	;#0x000b
 164:	09 51       	add	r1,	r9	;
 166:	0c 59       	add	r9,	r12	;
 168:	cc 4f 00 00 	mov.b	r15,	0(r12)	;
 16c:	4c 4a       	mov.b	r10,	r12	;

0000016e <.L16>:
 16e:	4f 4d       	mov.b	r13,	r15	;
 170:	7f 53       	add.b	#-1,	r15	;r3 As==11
 172:	4d 4f       	mov.b	r15,	r13	;
 174:	3e 53       	add	#-1,	r14	;r3 As==11
 176:	7f 93       	cmp.b	#-1,	r15	;r3 As==11
 178:	ee 23       	jnz	$-34     	;abs 0x156
 17a:	7d 40 0b 00 	mov.b	#11,	r13	;#0x000b
 17e:	0d 51       	add	r1,	r13	;
 180:	0c 5d       	add	r13,	r12	;
 182:	cc 43 00 00 	mov.b	#0,	0(r12)	;r3 As==00
 186:	0c 4d       	mov	r13,	r12	;
 188:	b0 12 7e 00 	call	#126		;#0x007e
 18c:	31 50 16 00 	add	#22,	r1	;#0x0016
 190:	30 40 96 04 	br	#0x0496		;

00000194 <uart_print_hex_word>:
 194:	0a 12       	push	r10		;
 196:	09 12       	push	r9		;
 198:	08 12       	push	r8		;
 19a:	09 4c       	mov	r12,	r9	;
 19c:	b0 12 c2 04 	call	#1218		;#0x04c2
 1a0:	48 4c       	mov.b	r12,	r8	;
 1a2:	0c 48       	mov	r8,	r12	;
 1a4:	b0 12 d2 04 	call	#1234		;#0x04d2
 1a8:	3a 40 ae 00 	mov	#174,	r10	;#0x00ae
 1ac:	8a 12       	call	r10		;
 1ae:	4c 48       	mov.b	r8,	r12	;
 1b0:	8a 12       	call	r10		;
 1b2:	39 f0 ff 00 	and	#255,	r9	;#0x00ff
 1b6:	0c 49       	mov	r9,	r12	;
 1b8:	b0 12 d2 04 	call	#1234		;#0x04d2
 1bc:	8a 12       	call	r10		;
 1be:	4c 49       	mov.b	r9,	r12	;
 1c0:	8a 12       	call	r10		;
 1c2:	30 40 9e 04 	br	#0x049e		;

000001c6 <_printf>:
 1c6:	0a 12       	push	r10		;
 1c8:	09 12       	push	r9		;
 1ca:	08 12       	push	r8		;
 1cc:	07 12       	push	r7		;
 1ce:	06 12       	push	r6		;
 1d0:	05 12       	push	r5		;
 1d2:	04 12       	push	r4		;
 1d4:	16 41 10 00 	mov	16(r1),	r6	;0x00010
 1d8:	0a 41       	mov	r1,	r10	;
 1da:	3a 50 12 00 	add	#18,	r10	;#0x0012
 1de:	37 40 6a 00 	mov	#106,	r7	;#0x006a

000001e2 <.L26>:
 1e2:	64 46       	mov.b	@r6,	r4	;
 1e4:	04 93       	cmp	#0,	r4	;r3 As==00
 1e6:	35 24       	jz	$+108    	;abs 0x252
 1e8:	74 90 25 00 	cmp.b	#37,	r4	;#0x0025
 1ec:	9b 20       	jnz	$+312    	;abs 0x324
 1ee:	05 46       	mov	r6,	r5	;
 1f0:	25 53       	incd	r5		;
 1f2:	5c 46 01 00 	mov.b	1(r6),	r12	;
 1f6:	7c 90 6c 00 	cmp.b	#108,	r12	;#0x006c
 1fa:	73 24       	jz	$+232    	;abs 0x2e2
 1fc:	7d 40 6c 00 	mov.b	#108,	r13	;#0x006c
 200:	4d 9c       	cmp.b	r12,	r13	;
 202:	1d 28       	jnc	$+60     	;abs 0x23e
 204:	7c 90 63 00 	cmp.b	#99,	r12	;#0x0063
 208:	43 24       	jz	$+136    	;abs 0x290
 20a:	7c 90 69 00 	cmp.b	#105,	r12	;#0x0069
 20e:	49 24       	jz	$+148    	;abs 0x2a2
 210:	7c 90 58 00 	cmp.b	#88,	r12	;#0x0058
 214:	1e 20       	jnz	$+62     	;abs 0x252
 216:	1a 53       	inc	r10		;
 218:	0d 4a       	mov	r10,	r13	;
 21a:	1d c3       	bic	#1,	r13	;r3 As==01
 21c:	0a 4d       	mov	r13,	r10	;
 21e:	2a 52       	add	#4,	r10	;r2 As==10
 220:	24 4d       	mov	@r13,	r4	;
 222:	0c 44       	mov	r4,	r12	;
 224:	1d 4d 02 00 	mov	2(r13),	r13	;
 228:	7e 40 10 00 	mov.b	#16,	r14	;#0x0010
 22c:	b0 12 54 05 	call	#1364		;#0x0554
 230:	36 40 94 01 	mov	#404,	r6	;#0x0194
 234:	86 12       	call	r6		;
 236:	0c 44       	mov	r4,	r12	;
 238:	86 12       	call	r6		;
 23a:	30 40 84 02 	br	#0x0284		;

0000023e <.L30>:
 23e:	7c 90 73 00 	cmp.b	#115,	r12	;#0x0073
 242:	19 24       	jz	$+52     	;abs 0x276
 244:	7d 40 73 00 	mov.b	#115,	r13	;#0x0073
 248:	4d 9c       	cmp.b	r12,	r13	;
 24a:	05 28       	jnc	$+12     	;abs 0x256
 24c:	7c 90 6e 00 	cmp.b	#110,	r12	;#0x006e
 250:	5f 24       	jz	$+192    	;abs 0x310

00000252 <.L25>:
 252:	30 40 96 04 	br	#0x0496		;

00000256 <.L35>:
 256:	7c 90 75 00 	cmp.b	#117,	r12	;#0x0075
 25a:	3a 24       	jz	$+118    	;abs 0x2d0
 25c:	7c 90 78 00 	cmp.b	#120,	r12	;#0x0078
 260:	f8 23       	jnz	$-14     	;abs 0x252
 262:	1a 53       	inc	r10		;
 264:	0c 4a       	mov	r10,	r12	;
 266:	1c c3       	bic	#1,	r12	;r3 As==01
 268:	0a 4c       	mov	r12,	r10	;
 26a:	2a 53       	incd	r10		;
 26c:	2c 4c       	mov	@r12,	r12	;
 26e:	b0 12 94 01 	call	#404		;#0x0194
 272:	30 40 84 02 	br	#0x0284		;

00000276 <.L34>:
 276:	26 4a       	mov	@r10,	r6	;
 278:	2a 53       	incd	r10		;

0000027a <.L39>:
 27a:	16 53       	inc	r6		;
 27c:	5c 46 ff ff 	mov.b	-1(r6),	r12	;
 280:	0c 93       	cmp	#0,	r12	;r3 As==00
 282:	03 20       	jnz	$+8      	;abs 0x28a

00000284 <.L41>:
 284:	06 45       	mov	r5,	r6	;
 286:	30 40 e2 01 	br	#0x01e2		;

0000028a <.L40>:
 28a:	87 12       	call	r7		;
 28c:	30 40 7a 02 	br	#0x027a		;

00000290 <.L31>:
 290:	1a 53       	inc	r10		;
 292:	0c 4a       	mov	r10,	r12	;
 294:	1c c3       	bic	#1,	r12	;r3 As==01
 296:	0a 4c       	mov	r12,	r10	;
 298:	2a 53       	incd	r10		;
 29a:	6c 4c       	mov.b	@r12,	r12	;

0000029c <.L47>:
 29c:	87 12       	call	r7		;
 29e:	30 40 84 02 	br	#0x0284		;

000002a2 <.L32>:
 2a2:	1a 53       	inc	r10		;
 2a4:	0c 4a       	mov	r10,	r12	;
 2a6:	1c c3       	bic	#1,	r12	;r3 As==01
 2a8:	0a 4c       	mov	r12,	r10	;
 2aa:	2a 53       	incd	r10		;
 2ac:	26 4c       	mov	@r12,	r6	;
 2ae:	06 93       	cmp	#0,	r6	;r3 As==00
 2b0:	06 34       	jge	$+14     	;abs 0x2be
 2b2:	4c 43       	clr.b	r12		;
 2b4:	0c 86       	sub	r6,	r12	;
 2b6:	06 4c       	mov	r12,	r6	;
 2b8:	7c 40 2d 00 	mov.b	#45,	r12	;#0x002d
 2bc:	87 12       	call	r7		;

000002be <.L42>:
 2be:	0c 46       	mov	r6,	r12	;
 2c0:	3c b0 00 80 	bit	#32768,	r12	;#0x8000
 2c4:	0d 7d       	subc	r13,	r13	;
 2c6:	3d e3       	inv	r13		;

000002c8 <.L48>:
 2c8:	b0 12 d0 00 	call	#208		;#0x00d0
 2cc:	30 40 84 02 	br	#0x0284		;

000002d0 <.L37>:
 2d0:	1a 53       	inc	r10		;
 2d2:	0c 4a       	mov	r10,	r12	;
 2d4:	1c c3       	bic	#1,	r12	;r3 As==01
 2d6:	0a 4c       	mov	r12,	r10	;
 2d8:	2a 53       	incd	r10		;
 2da:	2c 4c       	mov	@r12,	r12	;
 2dc:	4d 43       	clr.b	r13		;
 2de:	30 40 c8 02 	br	#0x02c8		;

000002e2 <.L29>:
 2e2:	1a 53       	inc	r10		;
 2e4:	0c 4a       	mov	r10,	r12	;
 2e6:	1c c3       	bic	#1,	r12	;r3 As==01
 2e8:	0a 4c       	mov	r12,	r10	;
 2ea:	2a 52       	add	#4,	r10	;r2 As==10
 2ec:	28 4c       	mov	@r12,	r8	;
 2ee:	19 4c 02 00 	mov	2(r12),	r9	;
 2f2:	09 93       	cmp	#0,	r9	;r3 As==00
 2f4:	09 34       	jge	$+20     	;abs 0x308
 2f6:	4c 43       	clr.b	r12		;
 2f8:	4d 43       	clr.b	r13		;
 2fa:	0c 88       	sub	r8,	r12	;
 2fc:	0d 79       	subc	r9,	r13	;
 2fe:	08 4c       	mov	r12,	r8	;
 300:	09 4d       	mov	r13,	r9	;
 302:	7c 40 2d 00 	mov.b	#45,	r12	;#0x002d
 306:	87 12       	call	r7		;

00000308 <.L43>:
 308:	0c 48       	mov	r8,	r12	;
 30a:	0d 49       	mov	r9,	r13	;
 30c:	30 40 c8 02 	br	#0x02c8		;

00000310 <.L36>:
 310:	1a 53       	inc	r10		;
 312:	0c 4a       	mov	r10,	r12	;
 314:	1c c3       	bic	#1,	r12	;r3 As==01
 316:	0a 4c       	mov	r12,	r10	;
 318:	2a 52       	add	#4,	r10	;r2 As==10
 31a:	1d 4c 02 00 	mov	2(r12),	r13	;
 31e:	2c 4c       	mov	@r12,	r12	;
 320:	30 40 c8 02 	br	#0x02c8		;

00000324 <.L27>:
 324:	74 90 0a 00 	cmp.b	#10,	r4	;#0x000a
 328:	03 20       	jnz	$+8      	;abs 0x330
 32a:	7c 40 0d 00 	mov.b	#13,	r12	;#0x000d
 32e:	87 12       	call	r7		;

00000330 <.L45>:
 330:	05 46       	mov	r6,	r5	;
 332:	15 53       	inc	r5		;
 334:	4c 44       	mov.b	r4,	r12	;
 336:	30 40 9c 02 	br	#0x029c		;

0000033a <main>:
 33a:	0a 12       	push	r10		;
 33c:	09 12       	push	r9		;
 33e:	08 12       	push	r8		;
 340:	07 12       	push	r7		;
 342:	21 83       	decd	r1		;
 344:	1e 42 ec ff 	mov	&0xffec,r14	;0xffec
 348:	1f 42 ee ff 	mov	&0xffee,r15	;0xffee
 34c:	4c 43       	clr.b	r12		;

0000034e <.L50>:
 34e:	0a 4f       	mov	r15,	r10	;
 350:	0f 93       	cmp	#0,	r15	;r3 As==00
 352:	36 20       	jnz	$+110    	;abs 0x3c0
 354:	3d 40 ff 95 	mov	#38399,	r13	;#0x95ff
 358:	0d 9e       	cmp	r14,	r13	;
 35a:	32 28       	jnc	$+102    	;abs 0x3c0

0000035c <.L53>:
 35c:	7d 40 ff 00 	mov.b	#255,	r13	;#0x00ff
 360:	0d 9c       	cmp	r12,	r13	;
 362:	34 28       	jnc	$+106    	;abs 0x3cc
 364:	0d 4a       	mov	r10,	r13	;
 366:	0d 5a       	add	r10,	r13	;
 368:	0d 5d       	rla	r13		;
 36a:	0d 5d       	rla	r13		;
 36c:	0d 5d       	rla	r13		;
 36e:	0d 5d       	rla	r13		;
 370:	0d 5d       	rla	r13		;
 372:	0d 5d       	rla	r13		;
 374:	0d 5d       	rla	r13		;
 376:	0d dc       	bis	r12,	r13	;
 378:	82 4d a6 ff 	mov	r13,	&0xffa6	;
 37c:	92 43 a0 ff 	mov	#1,	&0xffa0	;r3 As==01
 380:	82 43 b4 ff 	mov	#0,	&0xffb4	;r3 As==00
 384:	b1 40 5a 05 	mov	#1370,	0(r1)	;#0x055a
 388:	00 00 
 38a:	3a 40 c6 01 	mov	#454,	r10	;#0x01c6
 38e:	8a 12       	call	r10		;
 390:	b1 40 8a 05 	mov	#1418,	0(r1)	;#0x058a
 394:	00 00 
 396:	8a 12       	call	r10		;
 398:	37 40 a4 ff 	mov	#65444,	r7	;#0xffa4
 39c:	38 40 6a 00 	mov	#106,	r8	;#0x006a
 3a0:	39 40 7e 00 	mov	#126,	r9	;#0x007e

000003a4 <.L58>:
 3a4:	2a 47       	mov	@r7,	r10	;
 3a6:	0a 93       	cmp	#0,	r10	;r3 As==00
 3a8:	fd 37       	jge	$-4      	;abs 0x3a4
 3aa:	4c 4a       	mov.b	r10,	r12	;
 3ac:	88 12       	call	r8		;
 3ae:	3c 40 a5 05 	mov	#1445,	r12	;#0x05a5
 3b2:	89 12       	call	r9		;
 3b4:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
 3b8:	82 4a b4 ff 	mov	r10,	&0xffb4	;
 3bc:	30 40 a4 03 	br	#0x03a4		;

000003c0 <.L51>:
 3c0:	3e 50 00 6a 	add	#27136,	r14	;#0x6a00
 3c4:	3f 63       	addc	#-1,	r15	;r3 As==11
 3c6:	1c 53       	inc	r12		;
 3c8:	30 40 4e 03 	br	#0x034e		;

000003cc <.L57>:
 3cc:	6a 93       	cmp.b	#2,	r10	;r3 As==10
 3ce:	02 24       	jz	$+6      	;abs 0x3d4
 3d0:	6a 92       	cmp.b	#4,	r10	;r2 As==10
 3d2:	07 20       	jnz	$+16     	;abs 0x3e2

000003d4 <.L54>:
 3d4:	b0 12 d6 04 	call	#1238		;#0x04d6

000003d8 <.L56>:
 3d8:	5a 53       	inc.b	r10		;
 3da:	3a f0 ff 00 	and	#255,	r10	;#0x00ff
 3de:	30 40 5c 03 	br	#0x035c		;

000003e2 <.L55>:
 3e2:	b0 12 de 04 	call	#1246		;#0x04de
 3e6:	30 40 d8 03 	br	#0x03d8		;

000003ea <udivmodsi4>:
 3ea:	0a 12       	push	r10		;

000003ec <.LCFI0>:
 3ec:	09 12       	push	r9		;

000003ee <.LCFI1>:
 3ee:	08 12       	push	r8		;

000003f0 <.LCFI2>:
 3f0:	07 12       	push	r7		;

000003f2 <.LCFI3>:
 3f2:	06 12       	push	r6		;

000003f4 <.LCFI4>:
 3f4:	05 12       	push	r5		;

000003f6 <.LCFI5>:
 3f6:	0a 4c       	mov	r12,	r10	;
 3f8:	0b 4d       	mov	r13,	r11	;

000003fa <.LVL1>:
 3fa:	7d 40 21 00 	mov.b	#33,	r13	;#0x0021

000003fe <.Loc.35.1>:
 3fe:	58 43       	mov.b	#1,	r8	;r3 As==01
 400:	49 43       	clr.b	r9		;

00000402 <.Loc.38.1>:
 402:	07 4b       	mov	r11,	r7	;

00000404 <.L2>:
 404:	0f 9b       	cmp	r11,	r15	;
 406:	11 28       	jnc	$+36     	;abs 0x42a
 408:	07 9f       	cmp	r15,	r7	;
 40a:	02 20       	jnz	$+6      	;abs 0x410
 40c:	0e 9a       	cmp	r10,	r14	;
 40e:	0d 28       	jnc	$+28     	;abs 0x42a

00000410 <.L20>:
 410:	4c 43       	clr.b	r12		;

00000412 <.LVL3>:
 412:	0d 4c       	mov	r12,	r13	;

00000414 <.L5>:
 414:	07 48       	mov	r8,	r7	;
 416:	07 d9       	bis	r9,	r7	;
 418:	07 93       	cmp	#0,	r7	;r3 As==00
 41a:	1a 20       	jnz	$+54     	;abs 0x450

0000041c <.L6>:
 41c:	81 93 0e 00 	cmp	#0,	14(r1)	;r3 As==00, 0x000e
 420:	02 24       	jz	$+6      	;abs 0x426
 422:	0c 4a       	mov	r10,	r12	;
 424:	0d 4b       	mov	r11,	r13	;

00000426 <.L1>:
 426:	30 40 98 04 	br	#0x0498		;

0000042a <.L3>:
 42a:	3d 53       	add	#-1,	r13	;r3 As==11

0000042c <.Loc.38.1>:
 42c:	0d 93       	cmp	#0,	r13	;r3 As==00
 42e:	22 24       	jz	$+70     	;abs 0x474

00000430 <.Loc.38.1>:
 430:	0f 93       	cmp	#0,	r15	;r3 As==00
 432:	ee 3b       	jl	$-34     	;abs 0x410

00000434 <.Loc.40.1>:
 434:	05 4e       	mov	r14,	r5	;
 436:	06 4f       	mov	r15,	r6	;
 438:	05 5e       	add	r14,	r5	;
 43a:	06 6f       	addc	r15,	r6	;
 43c:	0e 45       	mov	r5,	r14	;

0000043e <.LVL7>:
 43e:	0f 46       	mov	r6,	r15	;

00000440 <.LVL8>:
 440:	05 48       	mov	r8,	r5	;
 442:	06 49       	mov	r9,	r6	;
 444:	05 58       	add	r8,	r5	;
 446:	06 69       	addc	r9,	r6	;
 448:	08 45       	mov	r5,	r8	;

0000044a <.LVL9>:
 44a:	09 46       	mov	r6,	r9	;

0000044c <.LVL10>:
 44c:	30 40 04 04 	br	#0x0404		;

00000450 <.L12>:
 450:	0b 9f       	cmp	r15,	r11	;
 452:	08 28       	jnc	$+18     	;abs 0x464
 454:	0f 9b       	cmp	r11,	r15	;
 456:	02 20       	jnz	$+6      	;abs 0x45c
 458:	0a 9e       	cmp	r14,	r10	;
 45a:	04 28       	jnc	$+10     	;abs 0x464

0000045c <.L16>:
 45c:	0a 8e       	sub	r14,	r10	;
 45e:	0b 7f       	subc	r15,	r11	;

00000460 <.Loc.48.1>:
 460:	0c d8       	bis	r8,	r12	;

00000462 <.LVL13>:
 462:	0d d9       	bis	r9,	r13	;

00000464 <.L10>:
 464:	12 c3       	clrc			
 466:	09 10       	rrc	r9		;
 468:	08 10       	rrc	r8		;

0000046a <.Loc.51.1>:
 46a:	12 c3       	clrc			
 46c:	0f 10       	rrc	r15		;
 46e:	0e 10       	rrc	r14		;
 470:	30 40 14 04 	br	#0x0414		;

00000474 <.L14>:
 474:	0c 4d       	mov	r13,	r12	;

00000476 <.LVL18>:
 476:	30 40 1c 04 	br	#0x041c		;

0000047a <__mspabi_divlu>:
 47a:	21 83       	decd	r1		;

0000047c <.LCFI19>:
 47c:	81 43 00 00 	mov	#0,	0(r1)	;r3 As==00
 480:	b0 12 ea 03 	call	#1002		;#0x03ea

00000484 <.LVL46>:
 484:	21 53       	incd	r1		;
 486:	30 41       	ret			

00000488 <__mspabi_remul>:
 488:	21 83       	decd	r1		;

0000048a <.LCFI20>:
 48a:	91 43 00 00 	mov	#1,	0(r1)	;r3 As==01
 48e:	b0 12 ea 03 	call	#1002		;#0x03ea

00000492 <.LVL48>:
 492:	21 53       	incd	r1		;
 494:	30 41       	ret			

00000496 <__mspabi_func_epilog_7>:
 496:	34 41       	pop	r4		;

00000498 <__mspabi_func_epilog_6>:
 498:	35 41       	pop	r5		;

0000049a <__mspabi_func_epilog_5>:
 49a:	36 41       	pop	r6		;

0000049c <__mspabi_func_epilog_4>:
 49c:	37 41       	pop	r7		;

0000049e <__mspabi_func_epilog_3>:
 49e:	38 41       	pop	r8		;

000004a0 <__mspabi_func_epilog_2>:
 4a0:	39 41       	pop	r9		;

000004a2 <__mspabi_func_epilog_1>:
 4a2:	3a 41       	pop	r10		;
 4a4:	30 41       	ret			

000004a6 <__mspabi_srli_15>:
 4a6:	12 c3       	clrc			
 4a8:	0c 10       	rrc	r12		;

000004aa <__mspabi_srli_14>:
 4aa:	12 c3       	clrc			
 4ac:	0c 10       	rrc	r12		;

000004ae <__mspabi_srli_13>:
 4ae:	12 c3       	clrc			
 4b0:	0c 10       	rrc	r12		;

000004b2 <__mspabi_srli_12>:
 4b2:	12 c3       	clrc			
 4b4:	0c 10       	rrc	r12		;

000004b6 <__mspabi_srli_11>:
 4b6:	12 c3       	clrc			
 4b8:	0c 10       	rrc	r12		;

000004ba <__mspabi_srli_10>:
 4ba:	12 c3       	clrc			
 4bc:	0c 10       	rrc	r12		;

000004be <__mspabi_srli_9>:
 4be:	12 c3       	clrc			
 4c0:	0c 10       	rrc	r12		;

000004c2 <__mspabi_srli_8>:
 4c2:	12 c3       	clrc			
 4c4:	0c 10       	rrc	r12		;

000004c6 <__mspabi_srli_7>:
 4c6:	12 c3       	clrc			
 4c8:	0c 10       	rrc	r12		;

000004ca <__mspabi_srli_6>:
 4ca:	12 c3       	clrc			
 4cc:	0c 10       	rrc	r12		;

000004ce <__mspabi_srli_5>:
 4ce:	12 c3       	clrc			
 4d0:	0c 10       	rrc	r12		;

000004d2 <__mspabi_srli_4>:
 4d2:	12 c3       	clrc			
 4d4:	0c 10       	rrc	r12		;

000004d6 <__mspabi_srli_3>:
 4d6:	12 c3       	clrc			
 4d8:	0c 10       	rrc	r12		;

000004da <__mspabi_srli_2>:
 4da:	12 c3       	clrc			
 4dc:	0c 10       	rrc	r12		;

000004de <__mspabi_srli_1>:
 4de:	12 c3       	clrc			
 4e0:	0c 10       	rrc	r12		;
 4e2:	30 41       	ret			

000004e4 <.L11>:
 4e4:	3d 53       	add	#-1,	r13	;r3 As==11
 4e6:	12 c3       	clrc			
 4e8:	0c 10       	rrc	r12		;

000004ea <__mspabi_srli>:
 4ea:	0d 93       	cmp	#0,	r13	;r3 As==00
 4ec:	fb 23       	jnz	$-8      	;abs 0x4e4
 4ee:	30 41       	ret			

000004f0 <__mspabi_srll_15>:
 4f0:	12 c3       	clrc			
 4f2:	0d 10       	rrc	r13		;
 4f4:	0c 10       	rrc	r12		;

000004f6 <__mspabi_srll_14>:
 4f6:	12 c3       	clrc			
 4f8:	0d 10       	rrc	r13		;
 4fa:	0c 10       	rrc	r12		;

000004fc <__mspabi_srll_13>:
 4fc:	12 c3       	clrc			
 4fe:	0d 10       	rrc	r13		;
 500:	0c 10       	rrc	r12		;

00000502 <__mspabi_srll_12>:
 502:	12 c3       	clrc			
 504:	0d 10       	rrc	r13		;
 506:	0c 10       	rrc	r12		;

00000508 <__mspabi_srll_11>:
 508:	12 c3       	clrc			
 50a:	0d 10       	rrc	r13		;
 50c:	0c 10       	rrc	r12		;

0000050e <__mspabi_srll_10>:
 50e:	12 c3       	clrc			
 510:	0d 10       	rrc	r13		;
 512:	0c 10       	rrc	r12		;

00000514 <__mspabi_srll_9>:
 514:	12 c3       	clrc			
 516:	0d 10       	rrc	r13		;
 518:	0c 10       	rrc	r12		;

0000051a <__mspabi_srll_8>:
 51a:	12 c3       	clrc			
 51c:	0d 10       	rrc	r13		;
 51e:	0c 10       	rrc	r12		;

00000520 <__mspabi_srll_7>:
 520:	12 c3       	clrc			
 522:	0d 10       	rrc	r13		;
 524:	0c 10       	rrc	r12		;

00000526 <__mspabi_srll_6>:
 526:	12 c3       	clrc			
 528:	0d 10       	rrc	r13		;
 52a:	0c 10       	rrc	r12		;

0000052c <__mspabi_srll_5>:
 52c:	12 c3       	clrc			
 52e:	0d 10       	rrc	r13		;
 530:	0c 10       	rrc	r12		;

00000532 <__mspabi_srll_4>:
 532:	12 c3       	clrc			
 534:	0d 10       	rrc	r13		;
 536:	0c 10       	rrc	r12		;

00000538 <__mspabi_srll_3>:
 538:	12 c3       	clrc			
 53a:	0d 10       	rrc	r13		;
 53c:	0c 10       	rrc	r12		;

0000053e <__mspabi_srll_2>:
 53e:	12 c3       	clrc			
 540:	0d 10       	rrc	r13		;
 542:	0c 10       	rrc	r12		;

00000544 <__mspabi_srll_1>:
 544:	12 c3       	clrc			
 546:	0d 10       	rrc	r13		;
 548:	0c 10       	rrc	r12		;
 54a:	30 41       	ret			

0000054c <.L12>:
 54c:	3e 53       	add	#-1,	r14	;r3 As==11
 54e:	12 c3       	clrc			
 550:	0d 10       	rrc	r13		;
 552:	0c 10       	rrc	r12		;

00000554 <__mspabi_srll>:
 554:	0e 93       	cmp	#0,	r14	;r3 As==00
 556:	fa 23       	jnz	$-10     	;abs 0x54c
 558:	30 41       	ret			

Disassembly of section .rodata:

0000055a <numbers.2337-0x4d>:
 55a:	0a 0a       	mova	@r10,	r10	;
 55c:	45 63       	adc.b	r5		;
 55e:	68 6f       	addc.b	@r15,	r8	;
 560:	20 74       	subc	@r4,	r0	;
 562:	65 78       	subc.b	@r8,	r5	;
 564:	74 20       	jnz	$+234    	;abs 0x64e
 566:	2d 20       	jnz	$+92     	;abs 0x5c2
 568:	77 61       	addc.b	@r1+,	r7	;
 56a:	69 74       	subc.b	@r4,	r9	;
 56c:	73 20       	jnz	$+232    	;abs 0x654
 56e:	66 6f       	addc.b	@r15,	r6	;
 570:	72 20       	jnz	$+230    	;abs 0x656
 572:	61 20       	jnz	$+196    	;abs 0x636
 574:	6b 65       	addc.b	@r5,	r11	;
 576:	79 20       	jnz	$+244    	;abs 0x66a
 578:	74 68       	addc.b	@r8+,	r4	;
 57a:	65 6e       	addc.b	@r14,	r5	;
 57c:	20 70       	subc	@r0,	r0	;
 57e:	72 69       	addc.b	@r9+,	r2	;
 580:	6e 74       	subc.b	@r4,	r14	;
 582:	73 20       	jnz	$+232    	;abs 0x66a
 584:	76 61       	addc.b	@r1+,	r6	;
 586:	6c 75       	subc.b	@r5,	r12	;
 588:	65 00 2e 0a 	mova	r0,	&330286	; 0x50a2e
 58c:	50 72 65 73 	subc.b	&0x7365,r0	;0x7365
 590:	73 20       	jnz	$+232    	;abs 0x678
 592:	61 6e       	addc.b	@r14,	r1	;
 594:	79 20       	jnz	$+244    	;abs 0x688
 596:	6b 65       	addc.b	@r5,	r11	;
 598:	79 20       	jnz	$+244    	;abs 0x68c
 59a:	74 6f       	addc.b	@r15+,	r4	;
 59c:	20 73       	subc	#2,	r0	;r3 As==10
 59e:	74 61       	addc.b	@r1+,	r4	;
 5a0:	72 74       	subc.b	@r4+,	r2	;
 5a2:	2e 0a 00 0a 	mova	&657920,r14	;0xa0a00
 5a6:	00 30       	jn	$+2      	;abs 0x5a8

000005a7 <numbers.2337>:
 5a7:	30 31       	jn	$+610    	;abs 0x809
 5a9:	32 33       	jn	$-410    	;abs 0x40f
 5ab:	34 35       	jge	$+618    	;abs 0x815
 5ad:	36 37       	jge	$-402    	;abs 0x41b
 5af:	38 39       	jl	$+626    	;abs 0x821
 5b1:	00 01       	Address 0x000005b1 is out of bounds.
.word	0xffff;	????

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
  fc:	01 00       	Address 0x000000fc is out of bounds.
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
  48:	00 06       	Address 0x00000048 is out of bounds.
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
 11a:	01 00       	Address 0x0000011a is out of bounds.
.word	0xffff;	????
