	.option pic
	.file ""
	.section .data
	.globl	camlA__data_begin
	.type	camlA__data_begin, @object
camlA__data_begin:
	.section .text
	.globl	camlA__code_begin
	.type	camlA__code_begin, @object
camlA__code_begin:
	.section .data
	.section .data
	.quad	3063
camlA__1:
	.quad	camlA__fac_81
	.quad	72057594037927941
	.section .data
	.quad	1792
	.globl	camlA
	.type	camlA, @object
camlA:
	.quad	1
	.section .data
	.globl	camlA__gc_roots
	.type	camlA__gc_roots, @object
camlA__gc_roots:
	.quad	camlA
	.quad	0
	.globl	camlA__fac_81
	.type	camlA__fac_81, @function
	.section .text
	.align	2
camlA__fac_81:
	addi	sp, sp, -16
	sd	ra, 8(sp)
.L101:
	li	a1, 3
	bgt	a0, a1, .L100
	li	a0, 3
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
.L100:
	sd	a0, 0(sp)
	addi	a0, a0, -2
	call	camlA__fac_81@plt
.L102:
	srai	a4, a0, 1
	ld	s3, 0(sp)
	addi	a5, s3, -1
	mul	a6, a5, a4
	addi	a0, a6, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlA__fac_81, .-camlA__fac_81
	.globl	camlA__entry
	.type	camlA__entry, @function
	.section .text
	.align	2
camlA__entry:
	addi	sp, sp, -16
	sd	ra, 8(sp)
.L103:
	la	a0, camlA__1
	la	a1, camlA
	sd	a0, 0(a1)
	li	a0, 11
	call	camlStdlib__string_of_int_176@plt
.L104:
	mv      a1, a0
	la	a4, camlStdlib
	ld	a0, 304(a4)
	call	camlStdlib__output_string_249@plt
.L105:
	li	a0, 1
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
	.size	camlA__entry, .-camlA__entry
	.section .data
	.quad	caml_fac
	.quad	caml_check
	.quad	myfunc
	.section .text
	.globl	camlA__code_end
	.type	camlA__code_end, @object
camlA__code_end:
	.long	0
	.section .data
	.globl	camlA__data_end
	.type	camlA__data_end, @object
	.quad	0
camlA__data_end:
	.quad	0
	.section .rodata
	.globl	camlA__frametable
	.type	camlA__frametable, @object
camlA__frametable:
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
	.quad	.L102
	.short	17
	.short	1
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
	.long	(.L112 - .) + 0xc4000000
	.long	0x1290
.L109:
	.byte	115,116,100,108,105,98,46,109,108,0
.L111:
	.byte	97,46,109,108,0
	.align	2
.L112:
	.long	(.L111 - .) + 0x0
	.byte	65,46,102,97,99,0
	.align	2
.L110:
	.long	(.L109 - .) + 0x0
	.byte	83,116,100,108,105,98,46,112,114,105,110,116,95,105,110,116
	.byte	0
	.align	3
