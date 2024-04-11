clean:
	$(RM) *.cm[iox] *.s *.annot *.o *.out ./diff popcont *.S
.PHONY: diff
diff:
	OPAMSWITCH=5.1.0 opam exec -- ocamlopt -annot -S -c  a.ml
	cp a.s vanilla.S
	../boot/ocamlrun ../ocamlopt -I ../stdlib -zbb -thead -S -c a.ml
	cp a.s patched.S
	diff -u vanilla.S a.s > diff
riscv_diff:
	../boot/ocamlrun ../ocamlopt --version 
	#gcc-13 popcont.c -c -I ../runtime
	../boot/ocamlrun ../ocamlopt -I ../stdlib -ccopt -I../runtime popcont.c a.ml -o popcont.exe
	../boot/ocamlrun ../ocamlopt -I ../stdlib -S -c a.ml
	mv a.s riscv_patched.s
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -annot -S -c  a.ml 
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -v
	mv a.s riscv_vanilla.s
	diff -u riscv_vanilla.s riscv_patched.s
norm_comp:
#	../boot/ocamlrun ../ocamlopt -zbb -thead -I ../stdlib -ccopt -I../runtime popcont.c a.ml -o popcont.exe -verbose
	../boot/ocamlrun ../ocamlopt -I ../stdlib -zbb -thead -S -c a.ml
	mv a.s riscv_patched.s
vec:
	../boot/ocamlrun ../ocamlopt -I ../stdlib -S -c vec.ml
def:
	../boot/ocamlrun ../ocamlopt -I ../stdlib -S -c default_vec.ml
