(* mirage >= 4.9.0 & < 4.10.0 *)
open Mirage

let main = main "unikernel" job ~packages:[package "cohttp-lwt-unix" ]
let () = register "hello" [ main ]

