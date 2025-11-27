open Bonsai_web

type page = Home | Project1 | Project2 | Project3 | Project4

let home_page ~go_to =
  let open Vdom.Node in
  let open Vdom.Attr in
  let txt = Vdom.Node.text in
  div ~attrs:[]
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
                [ div ~attrs:[ class_ "project-card"; on_click (fun _ -> go_to Project1) ]
                    [ txt "Project 1" ]
                ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> go_to Project2) ]
                    [ txt "Project 2" ]
                ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> go_to Project3) ]
                    [ txt "Project 3" ]
                ; div ~attrs:[ class_ "project-card"; on_click (fun _ -> go_to Project4) ]
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
    ]

let project_page ~go_to ~page_title ~page_description =
  let open Vdom.Node in
  let open Vdom.Attr in
  let txt = Vdom.Node.text in
  div ~attrs:[ class_ "project-detail" ]
    [ div ~attrs:[ class_ "container" ]
        [ button ~attrs:[ class_ "back-btn"; on_click (fun _ -> go_to Home) ]
            [ txt "← Back" ]
        ; h1 [ txt page_title ]
        ; p [ txt page_description ]
        ; h2 [ txt "Overview" ]
        ; p [ txt "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do \
                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim \
                    ad minim veniam, quis nostrud exercitation ullamco laboris." ]
        ; h2 [ txt "Details" ]
        ; p [ txt "Duis aute irure dolor in reprehenderit in voluptate velit esse \
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat \
                    cupidatat non proident, sunt in culpa qui officia deserunt mollit \
                    anim id est laborum." ]
        ; h2 [ txt "Technical Stack" ]
        ; ul ~attrs:[ class_ "tech-list" ]
            [ li [ txt "OCaml" ]
            ; li [ txt "Bonsai" ]
            ; li [ txt "Mirage" ]
            ]
        ]
    ]

let app graph =
  let current_page, set_page = Bonsai.state Home graph in
  Bonsai.map2 current_page set_page ~f:(fun current_page set_page ->
    let go_to page = set_page page in
    match current_page with
    | Home -> home_page ~go_to
    | Project1 -> project_page ~go_to ~page_title:"Project 1" ~page_description:"This is the first project."
    | Project2 -> project_page ~go_to ~page_title:"Project 2" ~page_description:"This is the second project."
    | Project3 -> project_page ~go_to ~page_title:"Project 3" ~page_description:"This is the third project."
    | Project4 -> project_page ~go_to ~page_title:"Project 4" ~page_description:"This is the fourth project.")

let () =
  Bonsai_web.Start.start app
