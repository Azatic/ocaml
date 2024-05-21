open Stdlib

external vector_add : int array ->int array->int -> int array -> int array = "vector_add"

let vecadd v1 v2=
        let sum = Array.make (Array.length v1) 0 in
       vector_add v1 v2 (Array.length v1) sum 
(*let arr1 = [| 111; 2; 3; 4;3;4;2;2 |]
let arr2 = [| 211; 3; 2; 1;3;1;110;234|]*)

let measure_time v1 v2 =
  let sum = Array.make (Array.length v2) 0  in
  let start_time = Sys.time () in
  let result =  vector_add v1 v2 (Array.length v1) sum in
  let end_time = Sys.time () in
 (* let () =  Array.iter (fun x -> print_int x; print_string " ") result in*)
  let () = print_int result.(0) in
  let execution_time = end_time -. start_time in
  execution_time


let _ =
  for b = 1 to 1 do
    let total_vector_time = ref 0.0 in
    for i = 1 to 1 do
      let arr1 = Array.make 1000000 i in
      let arr2 = Array.make 1000000 i in
      let time = measure_time arr1 arr2 in
      total_vector_time := !total_vector_time +. time;
    done;

    let average_time = !total_vector_time in
    print_float (average_time *. 400.);
    print_endline " , ";
  done;

(*let _ =
  for b = 1 to 1 do
    let total_vector_time = ref 0.0 in
    for i = 1 to 1000 do
      let arr1 = Array.make 1000 i in
      let arr2 = Array.make 1000 i in
      let time = measure_time arr1 arr2 in
      total_vector_time := !total_vector_time +. time;
    done;

    let average_time = !total_vector_time /. 1000.0 in
    print_float average_time;
    print_endline " , ";
  done;

  let _ =
  for b = 1 to 1 do
    let total_vector_time = ref 0.0 in
    for i = 1 to 1000 do
      let arr1 = Array.make 100 i in
      let arr2 = Array.make 100 i in
      let time = measure_time arr1 arr2 in
      total_vector_time := !total_vector_time +. time;
    done;

    let average_time = !total_vector_time /. 1000.0 in
    print_float average_time;
    print_endline " , ";
  done;*)
(*let _ =
  let total_vector_time = ref 0.0 in
  for i = 1 to 100000 do
          let arr1 = Array.make 1000 i in
          let arr2 = Array.make 1000 i in
    let time = measure_time arr1 arr2 in
    total_vector_time := !total_vector_time +. time;
  done;

  let average_time = !total_vector_time /. 1000.0 in
  print_float average_time
 print_endline " Vector_time "*)



(*let add_arrays arr1 arr2 =
        Array.map2 ( + ) arr1 arr2

  let measure_time1 v1 v2 =
  let start_time = Sys.time () in
  let result = add_arrays v1 v2 in
  let end_time = Sys.time () in
  let execution_time = end_time -. start_time in
  execution_time

let _ =
  let total_time = ref 0.0 in
  for i = 1 to 100000 do
          let arr1 = Array.make 100 (Random.int 100) in
          let arr2 = Array.make 100 (Random.int 100) in
    let time = measure_time1 arr1 arr2 in
    total_time := !total_time +. time;
  done;

  let average_time = !total_time /. 1000.0 in
  print_float average_time;
  print_endline " Scalar time"
*)
