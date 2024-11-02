module type MEMORY_SIG = sig
  type 'a t
  val read : 'a t -> 'a -> int -> ('a t * (int * bool))
  val write : 'a t -> 'a -> int -> ('a t * bool)
end