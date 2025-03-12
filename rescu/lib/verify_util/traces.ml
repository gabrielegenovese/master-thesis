open Comm_automata

module type State = sig
  type t

  val print_ctrl_state : System.t -> t -> unit
end

module Trace (S : State) = struct
  type t = Communication.t list * S.t

  let create transitions last_state : t = (transitions, last_state)

  let print (exec : t) : unit =
    let steps, _ = exec in
    match steps with
    | [] -> ()
    | hd :: tl ->
        Communication.short_print hd;
        List.iter
          (fun comm ->
            Format.printf " \u{00b7} ";
            Communication.short_print comm)
          tl

  let print_with_steps (system : System.t) (exec : t) =
    let steps, first_state = exec in
    S.print_ctrl_state system first_state;
    List.iter (Communication.print_with_state system) steps
end
