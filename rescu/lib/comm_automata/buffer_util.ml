module Buffer_id = struct
  type t = int

  let compare = compare
end

module Buffer_set = Set.Make (Buffer_id)
