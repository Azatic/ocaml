
external shiftadd : int array ->int array->int -> int array = "vec_add"

let arr1 = [| 1; 2; 3; 4 |]
let arr2 = [| 1; 2; 3; 4 |]

let arr3 = (shiftadd arr1 arr2 4) 
