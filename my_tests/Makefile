.PHONY: diff
all:
	gcc -c popcont.c -I `ocamlc -where`
	ocamlopt -annot -S -c a.ml -o a.S
	ocamlopt popcont.o a.cmx -o hello1.exe
	./hello1.exe
clean:
	$(RM) *.cm[iox] *.s *.annot *.o *.out
diff:
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -annot -S -c  a.ml 
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -v
	cp a.s vanilla.S
	/Users/azat/Desktop/my_proj/ocaml/ocamlopt  -S -c  a.ml
	/Users/azat/Desktop/my_proj/ocaml/ocamlopt --version 
	cp a.s patched.S
	diff -u vanilla.S patched.S > diff
riscv_diff:
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -annot -S -c  a.ml 
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -v
	cp a.s riscv_vanilla.S
	../boot/ocamlrun ../ocamlopt -I ../stdlib -S -c a.ml
	../boot/ocamlrun ../ocamlopt --version 
	cp a.s riscv_patched.S
	diff -u riscv_vanilla.S riscv_patched.S > diff
comp:
	gcc -c popcont.c -I `ocamlc -where`
	ocamlopt popcont.o a.cmx -o hello1.exe
	./hello1.exe
