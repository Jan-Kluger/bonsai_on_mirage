open Bonsai_web

let app : Vdom.Node.t Bonsai.Computation.t =
  Bonsai.const
    (Vdom.Node.div
       [ Vdom.Node.h1 [ Vdom.Node.text "Hello, Bonsai v0.16!" ]
       ; Vdom.Node.p  [ Vdom.Node.text "It works 🎉" ]
       ])

let () =
  (* v0.16: returns unit; no result_spec argument *)
  Start.start ~bind_to_element_with_id:"app" app

