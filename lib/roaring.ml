open Ctypes
let printf = Printf.printf

module C = Roaring_bindings.C(Roaring_generated)

type t = C.bitset_container_t structure

(*
let create () = 
    C.bitset_container_create
*)

let _create () =
    let ret = allocate_n 
        ~finalise: (fun x -> printf "hi\n")
        C.bitset_container_t ~count:1 in
    ret

let create = C.bitset_container_create

let set bs i = C.bitset_container_set bs (Unsigned.UInt16.of_int i)
let unset bs i = C.bitset_container_unset bs (Unsigned.UInt16.of_int i)
let get bs i = C.bitset_container_get bs (Unsigned.UInt16.of_int i)

let bitset_container_or bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_or bs_a bs_b out in
    out

let bitset_container_or_nocard bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_or bs_a bs_b bs_b in
    out

let bitset_container_and bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_and bs_a bs_b bs_b in
    out

let bitset_container_and_nocard bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_and bs_a bs_b bs_b in
    out

let cardinality = C.bitset_container_cardinality
