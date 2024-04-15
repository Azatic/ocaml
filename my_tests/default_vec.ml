let vec_add l1 l2 =
  let sum = Array.make 1 0 in
  sum.(0) <- l1.(0) + l2.(0);
  sum.(1) <- l1.(1) + l2.(1);
  sum

let l1 = [|1; 11|]
let l2 = [|10; 12|]

let arr1 = vec_add l1 l2
