open Mirage

let main = main "Unikernel" job ~packages:[ package "cohttp-lwt-unix" ]
let () = register "hello" [ main ]
