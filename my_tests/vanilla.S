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
	.quad	768
	.globl	camlA
	.type	camlA, @object
camlA:
	.section .data
	.globl	camlA.gc_roots
	.type	camlA.gc_roots, @object
camlA.gc_roots:
	.quad	camlA
	.quad	0
	.globl	camlA.entry
	.type	camlA.entry, @function
	.section .text
	.align	2
camlA.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L101
.L102:
        addi    sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L100:
	li	a2, 3
	li	a1, 5
	li	a0, 7
	la	t2, shiftadd
	call	caml_c_call@plt
.L103:
	call	camlStdlib.string_of_int_175@plt
.L104:
	mv      a1, a0
	la	a5, camlStdlib
	ld	a0, 304(a5)
	call	camlStdlib.output_string_253@plt
.L105:
	li	a0, 1
	ld	ra, 8(sp)
        addi    sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L101:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L102
	.cfi_endproc
	.size	camlA.entry, .-camlA.entry
	.section .data
	.quad	shiftadd
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
	.quad	3
	.quad	.L105
	.short	17
	.short	0
	.align	2
	.long	(.L106 - .) + 0x0
	.align	3
	.quad	.L104
	.short	17
	.short	0
	.align	2
	.long	(.L107 - .) + 0x0
	.align	3
	.quad	.L103
	.short	17
	.short	0
	.align	2
	.long	(.L108 - .) + 0x0
	.align	3
	.align	2
.L107:
	.long	(.L110 - .) + 0xe0000000
	.long	0x1e9270
	.align	2
.L106:
	.long	(.L110 - .) + 0xe0000000
	.long	0x1e9120
	.align	2
.L108:
	.long	(.L112 - .) + 0x8c000000
	.long	0x3130
.L109:
	.byte	115,116,100,108,105,98,46,109,108,0
.L111:
	.byte	97,46,109,108,0
	.align	2
.L112:
	.long	(.L111 - .) + 0x0
	.byte	65,0
	.align	2
.L110:
	.long	(.L109 - .) + 0x0
	.byte	83,116,100,108,105,98,46,112,114,105,110,116,95,105,110,116
	.byte	0
	.align	3
