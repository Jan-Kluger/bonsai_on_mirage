
module Array = Array0

type t = Stdlib.Random.State.t Lazy.t

module Repr = struct
  type t =
    { st : int array
    ; mutable idx : int
    }

  let of_state : Stdlib.Random.State.t -> t = Stdlib.Obj.magic
end

let assign t state =
  let t1 = Repr.of_state (Lazy.force t) in
  let t2 = Repr.of_state state in
  Array.blit ~src:t2.st ~src_pos:0 ~dst:t1.st ~dst_pos:0 ~len:(Array.length t1.st);
  t1.idx <- t2.idx

let make state = Lazy.from_val state

let make_lazy ~f = Lazy.from_fun f

let[@inline always] get_state t = Lazy.force t
