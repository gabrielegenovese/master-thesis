let usage = "rescu [options] <file>"
let in_channel = ref stdin
let size = ref false
let membership = ref false
let modelcheck = ref false
let allbag = ref false
let outarsc = ref false
let outscm = ref false
let progress = ref false
let outfile = ref stdout
let counter = ref false

let set_outdot filename =
  outfile := open_out_bin filename;
  outscm := true

let parse =
  Arg.parse
    [
      ("-isrsc", Set membership, "\tchecks if the input is RSC or not");
      ("-mc", Set modelcheck, "\t\tmodel check the system.");
      ("-bag", Set allbag, "\t\tconsider all buffers with a bag semantic");
      ( "-to_dot",
        Arg.String set_outdot,
        "\toutputs a dot version of the SCM to a specified file" );
      ( "-counter",
        Set counter,
        "\tdisplay the bv or the execution leading to a bad configuration" );
      ("-prog", Set progress, "\tshow progress infos while model-checking");
      ("-size", Set size, "\tdisplays the sizes of the system\n");
    ]
    (fun filename -> in_channel := open_in filename)
    usage
