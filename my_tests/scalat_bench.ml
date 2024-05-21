(*let add_arrays arr1 arr2 =
        Array.map2 ( + ) arr1 arr2

  let measure_time1 v1 v2 =
  let start_time = Sys.time () in
  let result = add_arrays v1 v2 in
  let end_time = Sys.time () in
  let () = print_int result.(0) in
  
  let execution_time = end_time -. start_time in
  execution_time



  let _ =
  for _ = 1 to 1 do
    let total_vector_time = ref 0.0 in
    for i = 1 to 1 do
      let arr1 = Array.make 10000000 i in
      let arr2 = Array.make 10000000 i in
      let time = measure_time1 arr1 arr2 in
      total_vector_time := !total_vector_time +. time;
    done;

    let average_time = (!total_vector_time *. 400.) in
    print_float average_time;
  done;*)


(*let scalar_add a b n =
  let c = Array.make n 0 in
  for i = 0 to n - 1 do
    c.(i) <- a.(i) + b.(i)
  done;
  c*)

  external unsafe_get : 'a array -> int -> 'a = "%array_unsafe_get"
external unsafe_set : 'a array -> int -> 'a -> unit = "%array_unsafe_set"

let scalar_add a b n =
  let c = Array.make n 0 in
  for i = 0 to n - 1 do
    let ai = unsafe_get a i in
    let bi = unsafe_get b i in
    unsafe_set c i (ai + bi)
  done;
  c

let measure_scalar_add_time length =
  let array1 = Array.init length (fun i -> i) in
  let array2 = Array.init length (fun i -> i) in
  let result = scalar_add array1 array2 length in

  let start_time = Sys.time () in
  let _ = scalar_add array1 array2 length in
  let end_time = Sys.time () in

  let time_spent = (end_time -. start_time) *. 1000. in
    print_endline ("Time taken for scalar addition with length " ^ string_of_int length ^ ": " ^ string_of_float time_spent ^ " milliseconds")
;;

let () =
  measure_scalar_add_time 100000;
  measure_scalar_add_time 1000000;
  measure_scalar_add_time 100000000
;;

