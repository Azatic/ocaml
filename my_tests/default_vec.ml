let vec_add l1 l2 =
  let sum = Array.make 4 0 in
  sum.(0) <- l1.(0) + l2.(0);
  sum.(1) <- l1.(1) + l2.(1); 
  sum.(2) <- l1.(2) + l2.(2);
  sum.(3) <- l1.(3) + l2.(3);
  sum
