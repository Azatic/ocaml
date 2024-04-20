open Stdlib

external vecadd : int array ->int array -> int array = "vec_add"

let arr1 = [| 111; 2; 3; 4;3;4;2;2 |]
let arr2 = [| 211; 3; 2; 1;3;1;110;234|]

let measure_time v1 v2 =
  let start_time = Sys.time () in
  let result = vecadd v1 v2 in
  let end_time = Sys.time () in
  let execution_time = end_time -. start_time in
  execution_time

let _ =
  let total_time = ref 0.0 in
  for _ = 1 to 100000 do
    let time = measure_time arr1 arr2 in
    total_time := !total_time +. time;
  done;

  let average_time = !total_time /. 1000.0 in
  print_float average_time;
 print_endline " " 
let add_arrays arr1 arr2 =
        Array.map2 ( + ) arr1 arr2

  let measure_time1 v1 v2 =
  let start_time = Sys.time () in
  let result = add_arrays v1 v2 in
  let end_time = Sys.time () in
  let execution_time = end_time -. start_time in
  execution_time
let _ =
  let total_time = ref 0.0 in
  for _ = 1 to 100000 do
    let time = measure_time1 arr1 arr2 in
    total_time := !total_time +. time;
  done;

  let average_time = !total_time /. 1000.0 in
  print_float average_time
