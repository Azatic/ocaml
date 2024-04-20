
external vecadd : int array ->int array -> int array = "vec_add"

let arr1 = [| 111; 2; 3; 4;3;4;2;2 |]
let arr21 = [| 211; 3; 2; 1;3;1;110;234|]


(*let vecadd1 arr1 arr2 = vecadd arr1 arr2 arr2.len*)

let arr3 = vecadd arr1 arr21



(*let () = print_int arr3.(0)*)
let () = Array.iter (fun x -> print_int x; print_string " ") arr3;


