let vec_add l1 l2 =
  let sum = Array.make 2 0 in
  for i = 0 to 1 do
    sum.(i) <- l1.(i) + l2.(i)
  done;
  sum
