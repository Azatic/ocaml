
external vecadd : int array ->int array -> int array = "vec_add"

external vector_add : int array ->int array->int -> int array = "vector_add"

let arr1 = [| 1; 1; 1; 1;1;1;1;1 |]
let arr21 = [| 2; 2; 2; 2;2;2;2;234|]


(*let vecadd1 arr1 arr2 = vecadd arr1 arr2 arr2.len*)

<<<<<<< HEAD
let arr3 = vector_add arr1 arr21 8

=======
let arr3 = vector_add arr1 arr21 5
>>>>>>> 6882971a56 (a group of 4 registers is used)


(*let () = print_int arr3.(0)*)
let () = Array.iter (fun x -> print_int x; print_string " ") arr3;


