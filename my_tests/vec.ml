
external vecadd : int array ->int array -> int array = "vec_add"
external find : int array -> int -> int = "simd_find"
external vector_add : int array ->int array -> int -> int array -> int array = "vector_add"

let ocaml_vector_add arr1 arr2 len = 
        let sum = Array.make len 0 in
        sum = vector_add arr1 arr2 len sum;
        sum


let arr1 = [| 10000; 1; 1; 1;1;1;1;1;10;10;10;10 |]
let arr21 = [| 0; 2; 2; 2;2;2;2;234;10;9;10;10|]
let ar1 = [|10000|]
let ar2 = [|0|]

(*let vecadd1 arr1 arr2 = vecadd arr1 arr2 arr2.len*)
(*let arr4 = vector_add ar1 ar2 1*)
let arr3 = ocaml_vector_add arr1 arr21 8

let () = Array.iter (fun x -> print_int x; print_string " ") arr3

let () = Array.iter (fun x -> print_int x; print_string " ") arr3
(*let i = find ar1 1
(*let arr4 = vector_add ar1 ar2 1*)
let () = print_int i*)
(*let () = print_int arr3.(0)*)


