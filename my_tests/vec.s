	.option pic
	.file ""
	.section .data
	.globl	camlVec.data_begin
	.type	camlVec.data_begin, @object
camlVec.data_begin:
	.section .text
	.globl	camlVec.code_begin
	.type	camlVec.code_begin, @object
camlVec.code_begin:
	.section .data
	.section .data
	.quad	4087
camlVec.6:
	.quad	caml_curry3
	.quad	216172782113783815
	.quad	camlVec.ocaml_vector_add_272
	.section .data
	.quad	3063
camlVec.5:
	.quad	camlVec.fun_347
	.quad	72057594037927941
	.section .data
	.quad	3063
camlVec.4:
	.quad	camlVec.fun_349
	.quad	72057594037927941
	.section .data
	.quad	6912
	.globl	camlVec
	.type	camlVec, @object
camlVec:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.section .data
	.globl	camlVec.gc_roots
	.type	camlVec.gc_roots, @object
camlVec.gc_roots:
	.quad	camlVec
	.quad	0
	.globl	camlVec.ocaml_vector_add_272
	.type	camlVec.ocaml_vector_add_272, @function
	.section .text
	.align	2
camlVec.ocaml_vector_add_272:
	.cfi_startproc
        addi    sp, sp, -48
	.cfi_adjust_cfa_offset	48
	sd	ra, 40(sp)
	.cfi_offset 1, -8
.L100:
	sd	a0, 16(sp)
	sd	a1, 8(sp)
	sd	a2, 0(sp)
	li	a1, 1
	mv      a0, a2
	la	t2, caml_make_vect
	call	caml_c_call@plt
.L101:
	sd	a0, 24(sp)
	ld	a6, 0(sp)
	ld	a7, 8(sp)
	ld	s2, 16(sp)
 sd s2, -8(sp)
 sd a7, -16(sp)
 srli t1, a0, 1
 mv a1, a6
 ld s2, -8(sp)
 ld a7, -16(sp)
 sd a1, -24(sp)
 loop102:
 vsetvli t0, t1, e64, m8
 vle.v v0, (s2)
 vle.v v8, (a7)
 vle.v v16, (a1)
 vadd.vv v24, v8, v0
 vsub.vv v24, v24, v16
 vse.v v24, (a1)
 sub t1, t1, t0
 slli t0, t0, 3
 add s2, s2, t0
 add a7, a7, t0
 add a1, a1, t0
 bnez t1, loop102
 ld a1, -24(sp)
 ld s2, -8(sp)
 ld a7, -16(sp)
	la	t2, caml_equal
	call	caml_c_call@plt
.L103:
	ld	a0, 24(sp)
	ld	ra, 40(sp)
        addi    sp, sp, 48
	.cfi_adjust_cfa_offset	-48
	ret
	.cfi_endproc
	.size	camlVec.ocaml_vector_add_272, .-camlVec.ocaml_vector_add_272
	.globl	camlVec.fun_347
	.type	camlVec.fun_347, @function
	.section .text
	.align	2
camlVec.fun_347:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L105
.L106:
        addi    sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L104:
	call	camlStdlib.string_of_int_175@plt
.L107:
	mv      a1, a0
	la	a2, camlStdlib
	ld	a0, 304(a2)
	call	camlStdlib.output_string_253@plt
.L108:
	la	a1, camlVec.3
	la	a5, camlStdlib
	ld	a0, 304(a5)
	ld	ra, 8(sp)
        addi    sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	tail	camlStdlib.output_string_253@plt
.L105:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L106
	.cfi_endproc
	.size	camlVec.fun_347, .-camlVec.fun_347
	.globl	camlVec.fun_349
	.type	camlVec.fun_349, @function
	.section .text
	.align	2
camlVec.fun_349:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L110
.L111:
        addi    sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L109:
	call	camlStdlib.string_of_int_175@plt
.L112:
	mv      a1, a0
	la	a2, camlStdlib
	ld	a0, 304(a2)
	call	camlStdlib.output_string_253@plt
.L113:
	la	a1, camlVec.3
	la	a5, camlStdlib
	ld	a0, 304(a5)
	ld	ra, 8(sp)
        addi    sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	tail	camlStdlib.output_string_253@plt
.L110:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L111
	.cfi_endproc
	.size	camlVec.fun_349, .-camlVec.fun_349
	.section .data
	.quad	2044
camlVec.3:
	.byte	32
	.space	6
	.byte	6
	.section .data
	.quad	13056
camlVec.2:
	.quad	1
	.quad	5
	.quad	5
	.quad	5
	.quad	5
	.quad	5
	.quad	5
	.quad	469
	.quad	21
	.quad	19
	.quad	21
	.quad	21
	.section .data
	.quad	13056
camlVec.1:
	.quad	20001
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	3
	.quad	21
	.quad	21
	.quad	21
	.quad	21
	.globl	camlVec.entry
	.type	camlVec.entry, @function
	.section .text
	.align	2
camlVec.entry:
	.cfi_startproc
	ld	t1, 40(s11)
	addi	t1, t1, 328
	bltu	sp, t1, .L115
.L116:
        addi    sp, sp, -16
	.cfi_adjust_cfa_offset	16
	sd	ra, 8(sp)
	.cfi_offset 1, -8
.L114:
	la	a1, camlVec.6
	la	a0, camlVec
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a0, camlVec.1
	la	t2, caml_obj_dup
	call	caml_c_call@plt
.L117:
	mv      a1, a0
	la	a4, camlVec
	addi	a0, a4, 8
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a0, camlVec.2
	la	t2, caml_obj_dup
	call	caml_c_call@plt
.L118:
	mv      a1, a0
	la	s2, camlVec
	addi	a0, s2, 16
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	call	caml_alloc1@plt
.L119:
	addi	a1, s10, 8
	li	s5, 1024
	sd	s5, -8(a1)
	li	s6, 20001
	sd	s6, 0(a1)
	la	s7, camlVec
	addi	a0, s7, 24
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	call	caml_alloc1@plt
.L120:
	addi	a1, s10, 8
	li	t2, 1024
	sd	t2, -8(a1)
	li	t3, 1
	sd	t3, 0(a1)
	la	t4, camlVec
	addi	a0, t4, 32
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	li	a2, 17
	la	s0, camlVec
	ld	a1, 16(s0)
	ld	a0, 8(s0)
	call	camlVec.ocaml_vector_add_272@plt
.L121:
	mv      a1, a0
	la	a4, camlVec
	addi	a0, a4, 40
	mv	s0, sp
	.cfi_remember_state
	.cfi_def_cfa_register 21
	ld	sp, 64(s11)
	call	caml_initialize@plt
	mv	sp, s0
	.cfi_restore_state
	la	a6, camlVec
	ld	a1, 40(a6)
	la	a0, camlVec.5
	call	camlStdlib__Array.iter_330@plt
.L122:
	la	s4, camlVec
	ld	a1, 40(s4)
	la	a0, camlVec.4
	call	camlStdlib__Array.iter_330@plt
.L123:
	li	a0, 1
	ld	ra, 8(sp)
        addi    sp, sp, 16
	.cfi_adjust_cfa_offset	-16
	ret
.L115:
	li	t1, 34
	addi	sp, sp, -16
	sd	t1, 0(sp)
	sd	ra, 8(sp)
	call	caml_call_realloc_stack@plt
	ld	ra, 8(sp)
	addi	sp, sp, 16
	j	.L116
	.cfi_endproc
	.size	camlVec.entry, .-camlVec.entry
	.section .data
	.quad	vector_add
	.quad	simd_find
	.quad	vec_add
	.section .text
	.globl	camlVec.code_end
	.type	camlVec.code_end, @object
camlVec.code_end:
	.long	0
	.section .data
	.globl	camlVec.data_end
	.type	camlVec.data_end, @object
	.quad	0
camlVec.data_end:
	.quad	0
	.section .data
	.globl	camlVec.frametable
	.type	camlVec.frametable, @object
camlVec.frametable:
	.quad	13
	.quad	.L123
	.short	17
	.short	0
	.align	2
	.long	(.L124 - .) + 0x0
	.align	3
	.quad	.L122
	.short	17
	.short	0
	.align	2
	.long	(.L125 - .) + 0x0
	.align	3
	.quad	.L121
	.short	17
	.short	0
	.align	2
	.long	(.L126 - .) + 0x0
	.align	3
	.quad	.L120
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L119
	.short	18
	.short	0
	.byte	1
	.byte	0
	.align	3
	.quad	.L118
	.short	17
	.short	0
	.align	2
	.long	(.L127 - .) + 0x0
	.align	3
	.quad	.L117
	.short	17
	.short	0
	.align	2
	.long	(.L128 - .) + 0x0
	.align	3
	.quad	.L113
	.short	17
	.short	0
	.align	2
	.long	(.L129 - .) + 0x0
	.align	3
	.quad	.L112
	.short	17
	.short	0
	.align	2
	.long	(.L130 - .) + 0x0
	.align	3
	.quad	.L108
	.short	17
	.short	0
	.align	2
	.long	(.L129 - .) + 0x0
	.align	3
	.quad	.L107
	.short	17
	.short	0
	.align	2
	.long	(.L130 - .) + 0x0
	.align	3
	.quad	.L103
	.short	49
	.short	1
	.short	24
	.align	2
	.long	(.L131 - .) + 0x0
	.align	3
	.quad	.L101
	.short	49
	.short	3
	.short	0
	.short	8
	.short	16
	.align	2
	.long	(.L132 - .) + 0x0
	.align	3
	.align	2
.L130:
	.long	(.L134 - .) + 0xe0000000
	.long	0x1e9270
	.align	2
.L129:
	.long	(.L134 - .) + 0xe0000000
	.long	0x1e9120
	.align	2
.L126:
	.long	(.L136 - .) + 0xa0000000
	.long	0x130b0
	.align	2
.L125:
	.long	(.L137 - .) + 0x4000000
	.long	0x15091
	.align	2
.L128:
	.long	(.L138 - .) + 0xcc000000
	.long	0xc0b0
	.align	2
.L132:
	.long	(.L139 - .) + 0x88000000
	.long	0x7120
	.align	2
.L131:
	.long	(.L139 - .) + 0xa8000000
	.long	0x8080
	.align	2
.L127:
	.long	(.L140 - .) + 0xc0000000
	.long	0xd0c0
	.align	2
.L124:
	.long	(.L137 - .) + 0x4000000
	.long	0x17091
.L133:
	.byte	115,116,100,108,105,98,46,109,108,0
.L135:
	.byte	118,101,99,46,109,108,0
	.align	2
.L139:
	.long	(.L135 - .) + 0x0
	.byte	86,101,99,46,111,99,97,109,108,95,118,101,99,116,111,114
	.byte	95,97,100,100,0
	.align	2
.L136:
	.long	(.L135 - .) + 0x0
	.byte	86,101,99,46,97,114,114,51,0
	.align	2
.L140:
	.long	(.L135 - .) + 0x0
	.byte	86,101,99,46,97,114,114,50,49,0
	.align	2
.L138:
	.long	(.L135 - .) + 0x0
	.byte	86,101,99,46,97,114,114,49,0
	.align	2
.L137:
	.long	(.L135 - .) + 0x0
	.byte	86,101,99,0
	.align	2
.L134:
	.long	(.L133 - .) + 0x0
	.byte	83,116,100,108,105,98,46,112,114,105,110,116,95,105,110,116
	.byte	0
	.align	3
