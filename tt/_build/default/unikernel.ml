open Cohttp_lwt_unix
open Lwt.Infix
open Cohttp

let serve_file path content_type =
  Lwt.catch
    (fun () ->
      Lwt_io.(with_file ~mode:Input path read) >>= fun body ->
      let headers =
        Header.init_with "Content-Type" content_type
      in
      Server.respond_string ~status:`OK ~headers ~body ())
    (fun _ -> Server.respond_not_found ())

let callback _conn req _body =
  let uri = Request.uri req in
  match Uri.path uri with
  | "/" | "/index.html" ->
      serve_file "static/index.html" "text/html; charset=utf-8"
  | "/main.bc.js" ->
      serve_file "static/main.bc.js" "application/javascript"
  | _ ->
      Server.respond_not_found ~uri ()

let start () =
  let port = 8080 in
  let mode = `TCP (`Port port) in
  let server = Server.make ~callback () in
  Server.create ~mode server

