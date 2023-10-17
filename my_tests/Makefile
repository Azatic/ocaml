.PHONY: diff riscv_diff configure

all:
	gcc -c popcont.c -I `ocamlc -where`
	ocamlopt -annot -S -c a.ml -o a.S
	ocamlopt popcont.o a.cmx -o hello1.exe
	./hello1.exe
clean:
	$(RM) *.cm[iox] *.s *.annot *.o *.out ./diff popcont *.S *.exe

diff:
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -annot -S -c  a.ml 
	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -v
	cp a.s vanilla.S
	/Users/azat/Desktop/my_proj/ocaml/ocamlopt  -S -c  a.ml
	/Users/azat/Desktop/my_proj/ocaml/ocamlopt --version 
	cp a.s patched.S
	diff -u vanilla.S patched.S > diff

riscv_diff:
#	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -annot -S -c  a.ml 
#	OPAMSWITCH=5.2.0+trunk opam exec -- ocamlopt -v
#	mv a.s riscv_vanilla.s

	../boot/ocamlrun ../ocamlopt --version 
	#gcc-13 popcont.c -c -I ../runtime
	

	../boot/ocamlrun ../ocamlopt -g -I ../stdlib -ccopt -I../runtime popcont.c a.ml -o popcont.exe
	../boot/ocamlrun ../ocamlopt -g -I ../stdlib -S -c a.ml
	cp a.s riscv_patched.s
#	diff -u riscv_vanilla.s riscv_patched.s  > diff

comp:
	gcc -c popcont.c -I `ocamlc -where`
	ocamlopt popcont.o a.cmx -o hello1.exe
	./hello1.exe

configure:
	AS="as -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei_xtheadba"  CC=gcc-13 \
		./configure  --disable-ocamldoc  --disable-unix-lib --disable-ocamltest --disable-str-lib --disable-systhreads --disable-debug-runtime

risc_s:
	../boot/ocamlrun ../ocamlopt -g -I ../stdlib -S -c a.ml
	cp a.s risc_s.s
