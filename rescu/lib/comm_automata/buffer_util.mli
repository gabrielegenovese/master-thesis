(** Tools for representing unordered sets of buffers *)

module Buffer_id : sig
  type t = int

  val compare : 'a -> 'a -> int
end

module Buffer_set : sig
  type elt = int
  type t = Set.Make(Buffer_id).t

  val empty : t
  val is_empty : t -> bool
  val mem : elt -> t -> bool
  val add : elt -> t -> t
  val fold : (elt -> 'a -> 'a) -> t -> 'a -> 'a
end
