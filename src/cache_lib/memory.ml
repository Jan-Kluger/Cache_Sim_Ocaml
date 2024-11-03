type cacheline = {
  tag : int;
  data : string;
  valid : bool;
}

type shithead = {
  cache : cacheline array array;
  associativity : int;
}

module Memory_int (R : Replacement_lib.Replacement_sig.REPLACEMENT_STRATEGY) : Memory_sig.MEMORY_SIG with type 'a t = shithead = struct
  type 'a t = shithead

  let create num_lines line_size associativity =
    (* determin the number of set based on the number of lines and the associtivity *)
    let num_sets = match associativity with
      | 1 -> num_lines
      | n when n = num_lines -> 1
      | n -> num_lines / n
    in
    {
      cache = Array.init num_sets (fun _ ->
        Array.init line_size (fun _ -> { tag = -1; data = ""; valid = false })
      );
      associativity;
    }
  let read = failwith "todo"
  let write = failwith "todo"
end