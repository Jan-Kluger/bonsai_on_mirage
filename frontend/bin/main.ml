open Bonsai_web

type page = Home | Project1

let home_page ~go_to =
  let open Vdom.Node in
  let open Vdom.Attr in
  div ~attrs:[ class_ "page" ]
    [ div ~attrs:[ class_ "hero" ]
        [ h1 [ text "Yannick Schürmann" ]
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
            ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> go_to Project1) ]
                [ h3 [ text "Project 1" ]
                ; p [ text "Click to view details →" ]
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
    ]

let project1_page ~go_to =
  let open Vdom.Node in
  let open Vdom.Attr in
  div ~attrs:[ class_ "page" ]
    [ button ~attrs:[ class_ "back-btn"; on_click (fun _ -> go_to Home) ]
        [ text "← Back" ]
    ; div ~attrs:[ class_ "hero" ]
        [ h1 [ text "Project 1" ]
        ; p
            [ text
                "This is the detailed page for Project 1."
            ]
        ]
    ; div ~attrs:[ class_ "content" ]
        [ h2 [ text "Overview" ]
        ; p
            [ text
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do \
                 eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim \
                 ad minim veniam, quis nostrud exercitation ullamco laboris."
            ]
        ; h2 [ text "Details" ]
        ; p
            [ text
                "Duis aute irure dolor in reprehenderit in voluptate velit esse \
                 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat \
                 cupidatat non proident, sunt in culpa qui officia deserunt mollit \
                 anim id est laborum."
            ]
        ; h2 [ text "Technical Stack" ]
        ; ul ~attrs:[ class_ "tech-list" ]
            [ li [ text "OCaml" ]
            ; li [ text "Bonsai" ]
            ; li [ text "Mirage" ]
            ]
        ]
    ]

let app graph =
  let current_page, set_page = Bonsai.state Home graph in
  Bonsai.map2 current_page set_page ~f:(fun current_page set_page ->
    let go_to page = set_page page in
    match current_page with
    | Home -> home_page ~go_to
    | Project1 -> project1_page ~go_to)

let () =
  Bonsai_web.Start.start app
