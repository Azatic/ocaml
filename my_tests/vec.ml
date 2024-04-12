
external vecadd : int array ->int array -> int array = "vec_add"

let arr1 = [| 1; 2; 3; 4 |]
let arr2 = [| 1; 2; 3; 4 |]

let arr3 = vecadd arr1 arr2 


  let () = print_int arr3.(0);

