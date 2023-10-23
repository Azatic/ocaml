external addsl_func : int -> int -> int -> int = "myfunc"
let () = 
        for i = 1 to 1000 do
                for j = 1 to 10 do
                        ignore (Sys.opaque_identity (addsl_func i j 1))
                done
        done
