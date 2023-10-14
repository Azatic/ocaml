	.file	""
	.data
	.globl	_camlA.data_begin
_camlA.data_begin:
	.text
	.globl	_camlA.code_begin
_camlA.code_begin:
	nop
	.align	3
	.data
	.align	3
	.data
	.align	3
	.quad	3063
	.globl	_camlA.7
_camlA.7:
	.quad	_camlA.fac_269
	.quad	72057594037927941
	.data
	.align	3
	.quad	1792
	.globl	_camlA
	.globl	_camlA
_camlA:
	.quad	1
	.data
	.align	3
	.globl	_camlA.gc_roots
	.globl	_camlA.gc_roots
_camlA.gc_roots:
	.quad	_camlA
	.quad	0
	.text
	.align	3
	.globl	_camlA.fac_269
L102:
	mov	x16, #34
	stp	x16, x30, [sp, #-16]!
	bl	_caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
_camlA.fac_269:
	.cfi_startproc
	ldr	x16, [x28, #40]
	add	x16, x16, #328
	cmp	sp, x16
	bcc	L102
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.cfi_offset 30, -8
	str	x30, [sp, #8]
L101:
	cmp	x0, #3
	b.gt	L100
	orr	x0, xzr, #3
	ldr	x30, [sp, #8]
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ret
	.cfi_adjust_cfa_offset	16
L100:
	str	x0, [sp, #0]
	sub	x0, x0, #2
	bl	_camlA.fac_269
L103:
	asr	x3, x0, #1
	ldr	x8, [sp, #0]
	sub	x4, x8, #1
	mul	x5, x4, x3
	add	x0, x5, #1
	ldr	x30, [sp, #8]
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ret
	.cfi_adjust_cfa_offset	16
	.cfi_endproc
	.data
	.align	3
	.quad	2045
	.globl	_camlA.6
_camlA.6:
	.quad	0x4010000000000000
	.data
	.align	3
	.quad	2816
	.globl	_camlA.5
_camlA.5:
	.quad	_camlA.3
	.quad	_camlA.4
	.data
	.align	3
	.quad	2044
	.globl	_camlA.4
_camlA.4:
	.ascii  "%d\12"
	.space	4
	.byte	4
	.data
	.align	3
	.quad	4868
	.globl	_camlA.3
_camlA.3:
	.quad	1
	.quad	1
	.quad	1
	.quad	_camlA.2
	.data
	.align	3
	.quad	2828
	.globl	_camlA.2
_camlA.2:
	.quad	21
	.quad	1
	.data
	.align	3
	.quad	2044
	.globl	_camlA.1
_camlA.1:
	.ascii  "hello"
	.space	2
	.byte	2
	.text
	.align	3
	.globl	_camlA.entry
L105:
	mov	x16, #34
	stp	x16, x30, [sp, #-16]!
	bl	_caml_call_realloc_stack
	ldp	x16, x30, [sp], #16
_camlA.entry:
	.cfi_startproc
	ldr	x16, [x28, #40]
	add	x16, x16, #328
	cmp	sp, x16
	bcc	L105
	sub	sp, sp, #16
	.cfi_adjust_cfa_offset	16
	.cfi_offset 30, -8
	str	x30, [sp, #8]
L104:
	adrp	x1, _camlA.7@GOTPAGE
	ldr	x1, [x1, _camlA.7@GOTPAGEOFF]
	adrp	x0, _camlA@GOTPAGE
	ldr	x0, [x0, _camlA@GOTPAGEOFF]
	mov	x29, sp
	.cfi_remember_state
	.cfi_def_cfa_register 29
	ldr	x16, [x28, 64]
	mov	sp, x16
	bl	_caml_initialize
	mov	sp, x29
	.cfi_restore_state
	movz	x0, #11, lsl #0
	bl	_camlA.fac_269
L106:
	bl	_camlStdlib.string_of_int_175
L107:
	mov	x1, x0
	adrp	x5, _camlStdlib@GOTPAGE
	ldr	x5, [x5, _camlStdlib@GOTPAGEOFF]
	ldr	x0, [x5, #304]
	bl	_camlStdlib.output_string_253
L108:
	adrp	x0, _camlA.1@GOTPAGE
	ldr	x0, [x0, _camlA.1@GOTPAGEOFF]
	adrp	x8, _caml_check@GOTPAGE
	ldr	x8, [x8, _caml_check@GOTPAGEOFF]
	bl	_caml_c_call
L109:
	bl	_camlStdlib.string_of_int_175
L110:
	mov	x1, x0
	adrp	x10, _camlStdlib@GOTPAGE
	ldr	x10, [x10, _camlStdlib@GOTPAGEOFF]
	ldr	x0, [x10, #304]
	bl	_camlStdlib.output_string_253
L111:
	orr	x0, xzr, #1
	bl	_camlStdlib.print_newline_372
L112:
	movz	x0, #49, lsl #0
	adrp	x8, _popcount@GOTPAGE
	ldr	x8, [x8, _popcount@GOTPAGEOFF]
	bl	_caml_c_call
L113:
	str	x0, [sp, #0]
	adrp	x1, _camlA.5@GOTPAGE
	ldr	x1, [x1, _camlA.5@GOTPAGEOFF]
	adrp	x19, _camlStdlib@GOTPAGE
	ldr	x19, [x19, _camlStdlib@GOTPAGEOFF]
	ldr	x0, [x19, #304]
	bl	_camlStdlib__Printf.fprintf_424
L114:
	mov	x1, x0
	ldr	x22, [x1, #0]
	ldr	x0, [sp, #0]
	blr	x22
L115:
	orr	x0, xzr, #1
	bl	_camlStdlib.print_newline_372
L116:
	movz	x0, #11, lsl #0
	adrp	x8, _caml_fac@GOTPAGE
	ldr	x8, [x8, _caml_fac@GOTPAGEOFF]
	bl	_caml_c_call
L117:
	bl	_camlStdlib.string_of_int_175
L118:
	mov	x1, x0
	adrp	x2, _camlStdlib@GOTPAGE
	ldr	x2, [x2, _camlStdlib@GOTPAGEOFF]
	ldr	x0, [x2, #304]
	bl	_camlStdlib.output_string_253
L119:
	fmov	d0, #4.0000000
	fsqrt	d1, d0
	bl	_caml_alloc1
L120:	add	x0, x27, #8
	movz	x4, #1277, lsl #0
	str	x4, [x0, #-8]
	str	d1, [x0, #0]
	bl	_camlStdlib.string_of_float_189
L121:
	mov	x1, x0
	adrp	x6, _camlStdlib@GOTPAGE
	ldr	x6, [x6, _camlStdlib@GOTPAGEOFF]
	ldr	x0, [x6, #304]
	bl	_camlStdlib.output_string_253
L122:
	orr	x0, xzr, #1
	ldr	x30, [sp, #8]
	add	sp, sp, #16
	.cfi_adjust_cfa_offset	-16
	ret
	.cfi_adjust_cfa_offset	16
	.cfi_endproc
	.data
	.align	3
	.quad	_caml_fac
	.quad	_caml_check
	.quad	_popcount
	.text
	.globl	_camlA.code_end
_camlA.code_end:
	.data
	.quad	0
	.globl	_camlA.data_end
_camlA.data_end:
	.quad	0
	.align	3
	.globl	_camlA.frametable
_camlA.frametable:
	.quad	18
	.quad	L122
	.short	17
	.short	0
	.align	2
	.long	L123 - . + 0x0
	.align	3
	.quad	L121
	.short	17
	.short	0
	.align	2
	.long	L124 - . + 0x0
	.align	3
	.quad	L120
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	L119
	.short	17
	.short	0
	.align	2
	.long	L125 - . + 0x0
	.align	3
	.quad	L118
	.short	17
	.short	0
	.align	2
	.long	L126 - . + 0x0
	.align	3
	.quad	L117
	.short	17
	.short	0
	.align	2
	.long	L127 - . + 0x0
	.align	3
	.quad	L116
	.short	17
	.short	0
	.align	2
	.long	L128 - . + 0x0
	.align	3
	.quad	L115
	.short	17
	.short	0
	.align	2
	.long	L129 - . + 0x0
	.align	3
	.quad	L114
	.short	17
	.short	1
	.short	0
	.align	2
	.long	L130 - . + 0x0
	.align	3
	.quad	L113
	.short	17
	.short	0
	.align	2
	.long	L131 - . + 0x0
	.align	3
	.quad	L112
	.short	17
	.short	0
	.align	2
	.long	L132 - . + 0x0
	.align	3
	.quad	L111
	.short	17
	.short	0
	.align	2
	.long	L125 - . + 0x0
	.align	3
	.quad	L110
	.short	17
	.short	0
	.align	2
	.long	L126 - . + 0x0
	.align	3
	.quad	L109
	.short	17
	.short	0
	.align	2
	.long	L133 - . + 0x0
	.align	3
	.quad	L108
	.short	17
	.short	0
	.align	2
	.long	L125 - . + 0x0
	.align	3
	.quad	L107
	.short	17
	.short	0
	.align	2
	.long	L126 - . + 0x0
	.align	3
	.quad	L106
	.short	17
	.short	0
	.align	2
	.long	L134 - . + 0x0
	.align	3
	.quad	L103
	.short	17
	.short	1
	.short	0
	.align	2
	.long	L135 - . + 0x0
	.align	3
	.align	2
L126:
	.long	L137 - . + 0x0
	.long	0xf489dc0
	.align	2
L130:
	.long	L139 - . + 0x0
	.long	0xf84518
	.align	2
L133:
	.long	L141 - . + 0x0
	.long	0x4034e0
	.align	2
L127:
	.long	L141 - . + 0x0
	.long	0x602898
	.align	2
L125:
	.long	L137 - . + 0x0
	.long	0xf4849c0
	.align	2
L132:
	.long	L141 - . + 0x0
	.long	0x480480
	.align	2
L134:
	.long	L141 - . + 0x0
	.long	0x382c90
	.align	2
L128:
	.long	L141 - . + 0x0
	.long	0x580480
	.align	2
L131:
	.long	L141 - . + 0x0
	.long	0x505918
	.align	2
L129:
	.long	L141 - . + 0x0
	.long	0x500518
	.align	2
L135:
	.long	L142 - . + 0x0
	.long	0x8a588
	.align	2
L124:
	.long	L143 - . + 0x0
	.long	0xf50a5e0
	.align	2
L123:
	.long	L143 - . + 0x0
	.long	0xf5051e0
L136:
	.asciz	"stdlib.ml"
L138:
	.asciz	"printf.ml"
L140:
	.asciz	"a.ml"
	.align	2
L137:
	.long	L136 - . + 0x0
	.asciz	"Stdlib.print_int"
	.align	2
L142:
	.long	L140 - . + 0x0
	.asciz	"A.fac"
	.align	2
L141:
	.long	L140 - . + 0x0
	.asciz	"A"
	.align	2
L139:
	.long	L138 - . + 0x0
	.asciz	"Stdlib__Printf.printf"
	.align	2
L143:
	.long	L136 - . + 0x0
	.asciz	"Stdlib.print_float"
	.align	3
