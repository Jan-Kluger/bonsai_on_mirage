open Bonsai_web

let app : Vdom.Node.t Bonsai.Computation.t =
  let open Vdom.Node in
  let open Vdom.Attr in
  Bonsai.const
    (div ~attrs:[ class_ "page" ]
       [ div ~attrs:[ class_ "hero" ]
           [ h1 [ text "Max Mustermann" ]
           ; p
               [ text
                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \
                    Suspendisse varius enim in eros elementum tristique."
               ]
           ; ul ~attrs:[ class_ "nav" ]
               [ li [ a ~attrs:[ href "#about" ] [ text "About" ] ]
               ; li [ a ~attrs:[ href "#projects" ] [ text "Projects" ] ]
               ; li [ a ~attrs:[ href "#contact" ] [ text "Contact" ] ]
               ]
           ]
       ; div ~attrs:[ class_ "content" ]
           [ div ~attrs:[ id "about" ]
               [ h2 [ text "About" ]
               ; p
                   [ text
                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit, \
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                   ]
               ]
           ; div ~attrs:[ id "projects" ]
               [ h2 [ text "Projects" ]
               ; p
                   [ text
                       "Ut enim ad minim veniam, quis nostrud exercitation ullamco \
                        laboris nisi ut aliquip ex ea commodo consequat."
                   ]
               ]
           ; div ~attrs:[ id "contact" ]
               [ h2 [ text "Contact" ]
               ; p
                   [ text
                       "Duis aute irure dolor in reprehenderit in voluptate velit esse \
                        cillum dolore eu fugiat nulla pariatur."
                   ]
               ]
           ]
       ])

let () =
  (* v0.16: returns unit; no result_spec argument *)
  Start.start ~bind_to_element_with_id:"app" app
