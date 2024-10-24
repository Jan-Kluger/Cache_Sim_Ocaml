[@@@warning "-32"]

let run_simulation _ : (int * int * int * int) = 
  failwith "TODO"

let result_to_string (result : (int * int * int * int)) : string =
  match result with
  | (cycles, misses, hits, primitive_gate_count) -> 
  "____Result____\n" ^ 
  "Cycles: " ^ (string_of_int cycles) ^ "\n" ^
  "Misses: " ^ (string_of_int misses) ^ "\n" ^
  "Hits: " ^ (string_of_int hits) ^ "\n" ^
  "Primitive gate count: " ^ (string_of_int primitive_gate_count) ^ "\n"

let res = result_to_string (-1,-1,-1,-1)

let () =
    print_endline res

