open Cohttp_lwt_unix
open Cohttp
open Lwt.Infix

(* One helper; streams on GET. *)
let serve_file path content_type =
  let headers = Header.init_with "Content-Type" content_type in
  Lwt.catch
    (fun () -> Server.respond_file ~headers ~fname:path ())
    (fun _ -> Server.respond_not_found ())

let callback _conn (req : Request.t) _body =
  let uri  = Request.uri req in
  let path = Uri.path uri in
  match Request.meth req, path with
  | (`GET | `HEAD), ("/" | "/index.html") ->
      begin match Request.meth req with
      | `GET  -> serve_file "static/index.html" "text/html; charset=utf-8"
      | `HEAD ->
          (* headers-only, no body => no EPIPE on HEAD *)
          Lwt_unix.stat "static/index.html" >>= fun st ->
          let headers =
            Header.init ()
            |> fun h -> Header.add h "Content-Type" "text/html; charset=utf-8"
            |> fun h -> Header.add h "Content-Length" (string_of_int st.Lwt_unix.st_size)
          in
          Server.respond ~status:`OK ~headers ~body:Cohttp_lwt.Body.empty ()
      | _ -> assert false
      end

  | (`GET | `HEAD), "/main.bc.js" ->
      begin match Request.meth req with
      | `GET  -> serve_file "static/main.bc.js" "application/javascript"
      | `HEAD ->
          Lwt_unix.stat "static/main.bc.js" >>= fun st ->
          let headers =
            Header.init ()
            |> fun h -> Header.add h "Content-Type" "application/javascript"
            |> fun h -> Header.add h "Content-Length" (string_of_int st.Lwt_unix.st_size)
          in
          Server.respond ~status:`OK ~headers ~body:Cohttp_lwt.Body.empty ()
      | _ -> assert false
      end

  | (`GET | `HEAD), _ ->
      Server.respond_not_found ~uri ()

  | _, _ ->
      let headers = Header.init_with "Allow" "GET, HEAD" in
      Server.respond ~status:`Method_not_allowed ~headers ~body:Cohttp_lwt.Body.empty ()

let start () =
  let server = Server.make ~callback () in
  Server.create ~mode:(`TCP (`Port 8080)) server

