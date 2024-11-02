type cacheline = {
  tag : int;
  data : string;
  valid : bool;
}

module Memory_int (R : Replacement_lib.Replacement_sig.REPLACEMENT_STRATEGY) : Memory_sig.MEMORY_SIG with type 'a t = int list = struct
  type 'a t = int list
  let read = failwith "todo"
  let write = failwith "todo"
end