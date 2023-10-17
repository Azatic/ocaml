
let rec fac n = if n <=1 then 1 else n * fac(n-1)

external addsl_func : int -> int -> int -> int = "myfunc"
let () = 
print_int (addsl_func 10 10 1)
(* addsl_func x y z = x + y * 2 ^ z *)

