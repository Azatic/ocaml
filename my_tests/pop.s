	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 0
	.globl	_popcnt                         ; -- Begin function popcnt
	.p2align	2
_popcnt:                                ; @popcnt
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
                                        ; kill: def $x8 killed $w8
	fmov	d0, x8
	cnt.8b	v0, v0
	uaddlv.8b	h1, v0
                                        ; implicit-def: $q0
	fmov	s0, s1
                                        ; kill: def $s0 killed $s0 killed $q0
	fmov	w0, s0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
