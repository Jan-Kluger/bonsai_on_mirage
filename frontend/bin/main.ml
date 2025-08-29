open Bonsai_web

let app : Vdom.Node.t Bonsai.Computation.t =
  Bonsai.const
    (Vdom.Node.div
       [ Vdom.Node.h1 [ Vdom.Node.text "Hello World!" ]
       ; Vdom.Node.p  [ Vdom.Node.text "Bonsai on Mirage" ]
       ])

let () =
  Start.start ~bind_to_element_with_id:"app" app

