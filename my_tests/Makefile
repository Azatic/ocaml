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

bin:
	../boot/ocamlrun ../ocamlopt -I ../stdlib -ccopt -I../runtime popcont.c vec.ml -o vec.exe -verbose
	./vec.exe
rvv:
	gcc  -fno-tree-vectorize vector_intrinsic.cpp -lbenchmark -pthread -o vector_bench -march=rv64imafdcvsu
vm:
	vim ../asmcomp/riscv/emit.mlp
comp:
	$(MAKE)  opt -j4 -C ..
	$(MAKE) bin
try:
	gcc-10 -march=rv64imafdcv0p7 -misa-spec=20191213 c_example.c
.PHONY: test
test:
	../boot/ocamlrun ../ocamlopt -I ../stdlib -ccopt -I../runtime popcont.c bench.ml -o test
	./test
