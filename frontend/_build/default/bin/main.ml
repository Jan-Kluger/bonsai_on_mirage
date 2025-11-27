open Bonsai_web

type modal = Closed | Project1 | Project2 | Project3 | Project4

let modal_content modal =
  match modal with
  | Closed -> ("", "")
  | Project1 -> ("Project 1", "This is the first project. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
  | Project2 -> ("Project 2", "This is the second project. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.")
  | Project3 -> ("Project 3", "This is the third project. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
  | Project4 -> ("Project 4", "This is the fourth project. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

let view ~current_modal ~set_modal =
  let open Vdom.Node in
  let open Vdom.Attr in
  let txt = Vdom.Node.text in
  let open_modal m = set_modal m in
  let close_modal _ = set_modal Closed in
  let modal_is_open = current_modal <> Closed in
  let (modal_title, modal_desc) = modal_content current_modal in
  div ~attrs:[ class_ "page-wrapper" ]
    [ (* Section 1: Intro *)
      div ~attrs:[ class_ "intro-section" ]
        [ div ~attrs:[ class_ "container" ]
            [ div ~attrs:[ class_ "intro-content" ]
                [ div ~attrs:[ class_ "intro-left" ]
                    [ div ~attrs:[ class_ "intro-name" ]
                        [ txt "Yannick"; br (); txt "Schürmann" ]
                    ; div ~attrs:[ class_ "intro-links" ]
                        [ a ~attrs:[ href "https://github.com"; class_ "intro-link" ] [ txt "GitHub" ]
                        ; a ~attrs:[ href "mailto:email@example.com"; class_ "intro-link" ] [ txt "Email" ]
                        ; a ~attrs:[ href "https://linkedin.com"; class_ "intro-link" ] [ txt "LinkedIn" ]
                        ]
                    ]
                ; div ~attrs:[ class_ "gif-placeholder" ]
                    [ txt "[GIF Placeholder]" ]
                ]
            ]
        ]
    ; (* Section 2: About Me *)
      div ~attrs:[ class_ "about-section" ]
        [ div ~attrs:[ class_ "container" ]
            [ h2 ~attrs:[ class_ "about-heading" ] [ txt "About me" ]
            ; div ~attrs:[ class_ "about-content" ]
                [ div ~attrs:[ class_ "profile-photo" ]
                    [ txt "[Photo]" ]
                ; div ~attrs:[ class_ "about-text" ]
                    [ p [ txt "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \
                               Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \
                               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris." ]
                    ; p [ txt "Duis aute irure dolor in reprehenderit in voluptate velit esse \
                               cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat \
                               cupidatat non proident, sunt in culpa qui officia deserunt mollit." ]
                    ; p [ txt "Sed ut perspiciatis unde omnis iste natus error sit voluptatem \
                               accusantium doloremque laudantium, totam rem aperiam." ]
                    ]
                ]
            ]
        ]
    ; (* Section 3: Projects *)
      div ~attrs:[ class_ "projects-section" ]
        [ div ~attrs:[ class_ "container" ]
            [ div ~attrs:[ class_ "section-watermark" ] [ txt "Projects" ]
            ; div ~attrs:[ class_ "projects-grid" ]
                [ div ~attrs:[ class_ "project-card"; on_click (fun _ -> open_modal Project1) ]
                    [ txt "Project 1" ]
                ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> open_modal Project2) ]
                    [ txt "Project 2" ]
                ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> open_modal Project3) ]
                    [ txt "Project 3" ]
                ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> open_modal Project4) ]
                    [ txt "Project 4" ]
                ]
            ]
        ]
    ; (* Section 4: Experience *)
      div ~attrs:[ class_ "experience-section" ]
        [ div ~attrs:[ class_ "container" ]
            [ h2 ~attrs:[ class_ "experience-heading" ] [ txt "Experience" ]
            ; div ~attrs:[ class_ "experience-item" ]
                [ div ~attrs:[ class_ "experience-labels" ]
                    [ p [ txt "Place" ]
                    ; p [ txt "Title" ]
                    ; p [ txt "Time" ]
                    ]
                ; div ~attrs:[ class_ "experience-description" ]
                    [ p [ txt "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \
                               Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." ]
                    ; p [ txt "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris \
                               nisi ut aliquip ex ea commodo consequat." ]
                    ]
                ]
            ]
        ]
    ; (* Modal overlay *)
      div ~attrs:[ class_ (if modal_is_open then "modal-overlay active" else "modal-overlay"); on_click close_modal ]
        [ div ~attrs:[ class_ (if modal_is_open then "modal-card active" else "modal-card"); on_click (fun _ -> Vdom.Effect.Stop_propagation) ]
            [ div ~attrs:[ class_ "modal-header" ]
                [ div ~attrs:[ class_ "modal-close"; on_click close_modal ]
                    [ txt "✕" ]
                ]
            ; div ~attrs:[ class_ "modal-body" ]
                [ h2 ~attrs:[ class_ "modal-title" ] [ txt modal_title ]
                ; p ~attrs:[ class_ "modal-desc" ] [ txt modal_desc ]
                ; h3 [ txt "Overview" ]
                ; p [ txt "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do \
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim \
                            ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut \
                            aliquip ex ea commodo consequat." ]
                ; p [ txt "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum \
                            dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \
                            proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ]
                ; h3 [ txt "Details" ]
                ; p [ txt "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium \
                            doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \
                            veritatis et quasi architecto beatae vitae dicta sunt explicabo." ]
                ; p [ txt "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \
                            sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt." ]
                ; p [ txt "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, \
                            adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et \
                            dolore magnam aliquam quaerat voluptatem." ]
                ; h3 [ txt "Technical Stack" ]
                ; ul ~attrs:[ class_ "tech-list" ]
                    [ li [ txt "OCaml" ]
                    ; li [ txt "Bonsai" ]
                    ; li [ txt "Mirage" ]
                    ; li [ txt "js_of_ocaml" ]
                    ; li [ txt "Dune" ]
                    ]
                ; h3 [ txt "Challenges" ]
                ; p [ txt "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit \
                            laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure \
                            reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur." ]
                ; p [ txt "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis \
                            praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias \
                            excepturi sint occaecati cupiditate non provident." ]
                ]
            ]
        ]
    ]

let app graph =
  let current_modal, set_modal = Bonsai.state Closed graph in
  Bonsai.map2 current_modal set_modal ~f:(fun current_modal set_modal ->
    view ~current_modal ~set_modal)

let () =
  Bonsai_web.Start.start app
