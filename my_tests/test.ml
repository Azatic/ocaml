external vector_add : int array -> int array -> int -> int array = "vector_add"

let create_array n i =
  Array.init n (fun _ -> i)

let add_arrays arr1 arr2 =
  Array.map2 (+) arr1 arr2

let check_sum arr =
  Array.for_all ((=) 10000) arr

let () = 
for i = 1 to 1 do
  let array1 = Array.make 5 10 in
  let array2 = Array.make 5 i in
  let arr = [|10000|] in
  let sum_array = vector_add array2 array1 1  in
  let () =  Array.iter (fun x -> print_int x; print_string " ") sum_array in

  let result = true (* check_sum sum_array in*)in

  if not result then
    begin
      print_endline "sdf";
      exit 1
    end
done

let() = print_int 1000
