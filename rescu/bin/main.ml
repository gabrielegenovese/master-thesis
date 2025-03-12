open SCM.Scm_syn
open Util
open Comm_automata
open Verify

(** {2 Methods definitions}
    Methods that will be called for each action required by the command line *)

(** Display the size of an SCM *)
let print_size scm_lu =
  Format.printf "number of communicating automata : %d@." (List.length scm_lu.lauto);
  scm_lu.lauto
  |> List.iter (fun auto ->
         Format.printf "automaton %s@." auto.id_auto;
         Format.printf "number of states: %d@." (List.length auto.lstate);
         auto.lstate
         |> List.map (fun state -> List.length state.ltrans)
         |> List.fold_left ( + ) 0
         |> Format.printf "number of transitions %d@.")

(** Computes whether the input SCM is RSC or not and output the answer to stdout *)
let membership system show_bv =
  if show_bv then (
    let res = Membership.is_rsc_counter system in
    match res with
    | None -> Format.printf "This system is RSC.@."
    | Some bv ->
        Format.printf
          "This system is not RSC, it admits the following borderline violation:@.";
        Membership.Borderline_violation.print bv;
        Format.printf "@.")
  else if Membership.is_rsc system then Format.printf "This system is RSC.@."
  else Format.printf "This system is not RSC.@."

(** Check whether one of the specified bad configuration is reachable through
    an RSC execution. *)
let model_check system progress counter =
  if counter then (
    match Model_checking.check_with_display system progress with
    | None -> Format.printf "No bad config found.@."
    | Some exec ->
        Format.printf "Bad configuration found:@.";
        Model_checking.Execution_aps.print exec;
        Format.printf "@.")
  else if Model_checking.check system progress then Format.printf "Bad config found.@."
  else Format.printf "No bad configuration found.@."

(** {2 Actual programm} *)

(** Parses the arguments of the executable *)
let () = Arg_options.parse

(** Parses the SCM file to produce a scm *)
let read_scm =
  SCM.Frontend.parse_lexbuf Format.std_formatter
    (Lexing.from_channel Arg_options.(!in_channel))

(** Computation of the System *)
let wrapped_scm =
  if Arg_options.(!allbag) then System.create_bag read_scm else System.create read_scm

(********************* Does what was requested by command line arguments *********************)

let () = if Arg_options.(!size) then print_size read_scm
let () = if Arg_options.(!membership) then membership wrapped_scm !Arg_options.counter

let () =
  if Arg_options.(!modelcheck) then
    model_check wrapped_scm !Arg_options.progress !Arg_options.counter

let () =
  if Arg_options.(!outscm) then System_printer.output_scm read_scm Arg_options.(!outfile)

let () =
  if Arg_options.(!outarsc) then Membership.output_arsc wrapped_scm Arg_options.(!outfile)
