(*TEST
 modules = "cextcall.c"
 * native 
 ocamlopt_flags = "-thead -zbb"
*)
external popcount : int->int->int -> int = "myfunc"
let () = assert ( (popcount 1 2 3)  = 17 )
