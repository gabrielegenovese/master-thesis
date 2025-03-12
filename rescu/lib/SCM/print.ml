(** Printing functions for standard datatypes *)

open Format

let list ?(first = ("[@[" : (unit, Format.formatter, unit) format))
    ?(sep = (";@ " : (unit, Format.formatter, unit) format))
    ?(last = ("@]]" : (unit, Format.formatter, unit) format))
    (print_elt : Format.formatter -> 'a -> unit) (fmt : Format.formatter) (list : 'a list)
    : unit =
  if list = [] then (
    fprintf fmt first;
    fprintf fmt last)
  else (
    fprintf fmt first;
    let rec do_sep = function
      | [ e ] -> print_elt fmt e
      | e :: l ->
          print_elt fmt e;
          fprintf fmt sep;
          do_sep l
      | [] -> failwith ""
    in
    do_sep list;
    fprintf fmt last)

let array ?(first = ("[|@[" : (unit, Format.formatter, unit) format))
    ?(sep = (";@ " : (unit, Format.formatter, unit) format))
    ?(last = ("@]|]" : (unit, Format.formatter, unit) format))
    (print_elt : Format.formatter -> 'a -> unit) (fmt : Format.formatter)
    (array : 'a array) : unit =
  if array = [||] then (
    fprintf fmt first;
    fprintf fmt last)
  else (
    fprintf fmt first;
    let first = ref true in
    Array.iter
      (fun e ->
        if !first then first := false else fprintf fmt sep;
        print_elt fmt e)
      array;
    fprintf fmt last)

let pair ?(first = ("(@[" : (unit, Format.formatter, unit) format))
    ?(sep = (",@ " : (unit, Format.formatter, unit) format))
    ?(last = ("@])" : (unit, Format.formatter, unit) format))
    (print_elt1 : Format.formatter -> 'a -> unit)
    (print_elt2 : Format.formatter -> 'b -> unit) (fmt : Format.formatter)
    (pair : 'a * 'b) : unit =
  let e1, e2 = pair in
  fprintf fmt first;
  print_elt1 fmt e1;
  fprintf fmt sep;
  print_elt2 fmt e2;
  fprintf fmt last

let option ?(first = ("Some(@[" : (unit, Format.formatter, unit) format))
    ?(last = ("@])" : (unit, Format.formatter, unit) format))
    (print_elt : Format.formatter -> 'a -> unit) (fmt : Format.formatter)
    (oelt : 'a option) =
  match oelt with
  | None -> pp_print_string fmt "None"
  | Some elt ->
      fprintf fmt first;
      print_elt fmt elt;
      fprintf fmt last

let hash
    ?(first : (unit, Format.formatter, unit) format =
      ("[@[<hv>" : (unit, Format.formatter, unit) format))
    ?(sep : (unit, Format.formatter, unit) format =
      (";@ " : (unit, Format.formatter, unit) format))
    ?(last : (unit, Format.formatter, unit) format =
      ("@]]" : (unit, Format.formatter, unit) format))
    ?(firstbind : (unit, Format.formatter, unit) format =
      ("" : (unit, Format.formatter, unit) format))
    ?(sepbind : (unit, Format.formatter, unit) format =
      (" => " : (unit, Format.formatter, unit) format))
    ?(lastbind : (unit, Format.formatter, unit) format =
      ("" : (unit, Format.formatter, unit) format))
    (print_key : Format.formatter -> 'a -> unit)
    (print_data : Format.formatter -> 'b -> unit) (formatter : Format.formatter)
    (hash : ('a, 'b) Hashtbl.t) : unit =
  Format.fprintf formatter first;
  let firstitem = ref true in
  Hashtbl.iter
    (fun key data ->
      if !firstitem then firstitem := false else Format.fprintf formatter sep;
      Format.fprintf formatter firstbind;
      print_key formatter key;
      Format.fprintf formatter sepbind;
      print_data formatter data;
      Format.fprintf formatter lastbind)
    hash;
  Format.fprintf formatter last

let weak ?(first = ("[|@[" : (unit, Format.formatter, unit) format))
    ?(sep = (";@ " : (unit, Format.formatter, unit) format))
    ?(last = ("@]|]" : (unit, Format.formatter, unit) format))
    (print_elt : Format.formatter -> 'a -> unit) (fmt : Format.formatter)
    (array : 'a Weak.t) : unit =
  if Weak.length array = 0 then (
    fprintf fmt first;
    fprintf fmt last)
  else (
    fprintf fmt first;
    let first = ref true in
    for i = 0 to pred (Weak.length array) do
      let oelt = Weak.get array i in
      match oelt with
      | None -> ()
      | Some e ->
          if !first then first := false else fprintf fmt sep;
          fprintf fmt "%i => %a" i print_elt e
    done;
    fprintf fmt last)

let print_of_string (string_of_a : 'a -> string) : Format.formatter -> 'a -> unit =
 fun fmt a -> pp_print_string fmt (string_of_a a)

let string_of_print (print : Format.formatter -> 'a -> unit) : 'a -> string =
 fun a ->
  let buffer = Buffer.create 1024 in
  let formatter = Format.formatter_of_buffer buffer in
  print formatter a;
  pp_print_flush formatter ();
  let res = Buffer.contents buffer in
  Buffer.clear buffer;
  res

let sprintf ?margin format =
  let buffer = Buffer.create 1024 in
  let fmt = Format.formatter_of_buffer buffer in
  (match margin with Some n -> Format.pp_set_margin fmt n | None -> ());
  Format.kfprintf
    (fun fmt ->
      Format.pp_print_flush fmt ();
      let s = Buffer.contents buffer in
      Buffer.clear buffer;
      s)
    fmt format

(* external is_printable: char -> bool = "caml_is_printable" *)
let is_printable c = String.length (Char.escaped c) = 1

(* external char_code: char -> int = "%identity" *)
let char_code = Char.code

(* external char_chr: int -> char = "%identity" *)
let char_chr = Char.chr

let escaped ?(linebreak : char = 'n') s =
  let s = Bytes.of_string s in
  let n = ref 0 in
  for i = 0 to Bytes.length s - 1 do
    n :=
      !n
      +
      match Bytes.get s i with
      | '"' | '\\' | '\n' | '\t' -> 2
      | c -> if is_printable c then 1 else 4
  done;
  if !n = Bytes.length s then Bytes.to_string s
  else
    let s' = Bytes.create !n in
    n := 0;
    for i = 0 to Bytes.length s - 1 do
      (match Bytes.get s i with
      | ('"' | '\\') as c ->
          Bytes.set s' !n '\\';
          incr n;
          Bytes.set s' !n c
      | '\n' ->
          Bytes.set s' !n '\\';
          incr n;
          Bytes.set s' !n linebreak
      | '\t' ->
          Bytes.set s' !n '\\';
          incr n;
          Bytes.set s' !n 't'
      | c ->
          if is_printable c then Bytes.set s' !n c
          else
            let a = char_code c in
            Bytes.set s' !n '\\';
            incr n;
            Bytes.set s' !n (char_chr (48 + (a / 100)));
            incr n;
            Bytes.set s' !n (char_chr (48 + (a / 10 mod 10)));
            incr n;
            Bytes.set s' !n (char_chr (48 + (a mod 10))));
      incr n
    done;
    Bytes.to_string s'
