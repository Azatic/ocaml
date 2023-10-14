	.option pic
	.file ""
	.section .data
	.globl	camlA.data_begin
	.type	camlA.data_begin, @object
camlA.data_begin:
	.section .text
	.globl	camlA.code_begin
	.type	camlA.code_begin, @object
camlA.code_begin:
	.section .data
	.section .data
	.quad	3063
camlA.5:
	.quad	camlA.fac_269
	.quad	72057594037927941
	.section .data
	.quad	1792
	.globl	camlA
	.type	camlA, @object
camlA:
	.quad	1
	.section .data
	.globl	camlA.gc_roots
	.type	camlA.gc_roots, @object
camlA.gc_roots:
	.quad	camlA
	.quad	0
	.globl	camlA.fac_269
	.type	camlA.fac_269, @function
	.section .text
	.align	2
camlA.fac_269:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L102
.L103:
	addi	sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L101:
	li	a1, 3
	bgt	a0, a1, .L100
	li	a0, 3
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L100:
	sd	a0, 0(sp)
	addi	a0, a0, -2
	call	camlA.fac_269@plt
.L104:
	srai	a4, a0, 1
	ld	s3, 0(sp)
	addi	a5, s3, -1
	mul	a6, a5, a4
	addi	a0, a6, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L102:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L103
	.cfi_endproc
	.size	camlA.fac_269, .-camlA.fac_269
	.section .data
	.quad	2816
camlA.4:
	.quad	camlA.2
	.quad	camlA.3
	.section .data
	.quad	2044
camlA.3:
	.byte	37,100,10
	.space	4
	.byte	4
	.section .data
	.quad	4868
camlA.2:
	.quad	1
	.quad	1
	.quad	1
	.quad	camlA.1
	.section .data
	.quad	2828
camlA.1:
	.quad	21
	.quad	1
	.globl	camlA.entry
	.type	camlA.entry, @function
	.section .text
	.align	2
camlA.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L106
.L107:
	addi	sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L105:
	la	a1, camlA.5
	la	a0, camlA
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	li	a2, 5
	li	a1, 5
	li	a0, 3
	la	t2, myfunc
	call	caml_c_call@plt
.L108:
	sd	a0, 0(sp)
	la	a1, camlA.4
	la	a7, camlStdlib
	ld	a0, 304(a7)
	call	camlStdlib__Printf.fprintf_424@plt
.L109:
	mv	a1, a0
	ld	s4, 0(a1)
	ld	a0, 0(sp)
	jalr	s4
.L110:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L106:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L107
	.cfi_endproc
	.size	camlA.entry, .-camlA.entry
	.section .data
	.quad	caml_fac
	.quad	caml_check
	.quad	myfunc
	.section .text
	.globl	camlA.code_end
	.type	camlA.code_end, @object
camlA.code_end:
	.long	0
	.section .data
	.globl	camlA.data_end
	.type	camlA.data_end, @object
	.quad	0
camlA.data_end:
	.quad	0
	.section .data
	.globl	camlA.frametable
	.type	camlA.frametable, @object
camlA.frametable:
	.quad	4
	.quad	.L110
	.short	17
	.short	0
	.align	2
	.long	(.L111 - .) + 0x0
	.align	3
	.quad	.L109
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L112 - .) + 0x0
	.align	3
	.quad	.L108
	.short	17
	.short	0
	.align	2
	.long	(.L113 - .) + 0x0
	.align	3
	.quad	.L104
	.short	17
	.short	1
	.short	0
	.align	2
	.long	(.L114 - .) + 0x0
	.align	3
	.align	2
.L112:
	.long	(.L116 - .) + 0x0
	.long	0xf84518
	.align	2
.L111:
	.long	(.L118 - .) + 0x0
	.long	0x500530
	.align	2
.L114:
	.long	(.L119 - .) + 0x0
	.long	0x8a588
	.align	2
.L113:
	.long	(.L118 - .) + 0x0
	.long	0x505930
.L115:
	.byte	112,114,105,110,116,102,46,109,108,0
.L117:
	.byte	97,46,109,108,0
	.align	2
.L119:
	.long	(.L117 - .) + 0x0
	.byte	65,46,102,97,99,0
	.align	2
.L118:
	.long	(.L117 - .) + 0x0
	.byte	65,0
	.align	2
.L116:
	.long	(.L115 - .) + 0x0
	.byte	83,116,100,108,105,98,95,95,80,114,105,110,116,102,46,112
	.byte	114,105,110,116,102,0
	.align	3
