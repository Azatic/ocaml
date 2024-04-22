external vector_add : int array -> int array -> int -> int array = "vector_add"

let create_array n i =
  Array.init n (fun _ -> i)

let add_arrays arr1 arr2 =
  Array.map2 (+) arr1 arr2

let check_sum arr =
  Array.for_all ((=) 10000) arr

let n = 10000

for i = 0 to n - 1 do
  let array1 = create_array n 0 in
  let array2 = create_array n 10000 in
  let sum_array = vector_add array1 array2 n  in

  let result = check_sum sum_array in

  if not result then
    begin
      print_endline "sdf";
      exit 1
    end
done

print_endline  "1000"

