
external vecadd : int array ->int array -> int array = "vec_add"

let arr1 = [| 1; 2; 3; 4;3;4 |]
let arr21 = [| 2; 10; 2; 2;3;1;110|]




let arr3 = vecadd arr1 arr21



let () = print_int arr3.(0)
let () = Array.iter (fun x -> print_int x; print_string " ") arr3;
