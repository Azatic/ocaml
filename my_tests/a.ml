(*let rec fac n = if n <=1 then 1 else n * fac(n-1)
*)
(*open Int
let () = print_int 
(*external popcount : int->int->int -> int = "myfunc"*)
let f x y =
        x + y * 8

let g x y d = x + y * 4 + d*)
external myfunc : int->int->int -> int = "myfunc"
external popcount : int -> int = "popcount"
let () = print_int (myfunc 3 2 3)
let () = print_string " popcount 5 = "
let () = print_int (popcount 5)
