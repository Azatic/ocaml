let rec fac n = if n <=1 then 1 else n * fac(n-1)

external popcount : int->int->int -> int = "myfunc"
external check: string -> int = "caml_check"
external c_fac: int -> int = "caml_fac"
let () =  
	 (* print_int(fac 5);
    print_int(check "hello");
	print_newline(); *) 
	Printf.printf "%d\n" (popcount 3 2 2);
(*	 print_newline(); 
	print_int(c_fac 5);
    print_float(sqrt 4.); *)
