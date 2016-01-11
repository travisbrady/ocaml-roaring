open Ctypes

module C = Roaring_bindings.C(Roaring_generated)

type t = C.bitset_container_t structure

(*
let create () = 
    C.bitset_container_create

let create () =
    let ret = allocate_n 
        C.bitset_container_t ~count:1 in
    ret
*)
let create = C.bitset_container_create
let free = C.bitset_container_free

let set bs i = C.bitset_container_set bs (Unsigned.UInt16.of_int i)
let unset bs i = C.bitset_container_unset bs (Unsigned.UInt16.of_int i)
let get bs i = C.bitset_container_get bs (Unsigned.UInt16.of_int i)

let set_op op bs_a bs_b =
    let out = create () in
    let res = op bs_a bs_b out in
    out

let bitset_or = set_op C.bitset_container_or
let bitset_or_nocard = set_op C.bitset_container_or_nocard
let bitset_and = set_op C.bitset_container_and
let bitset_and_nocard = set_op C.bitset_container_and_nocard

let bitset_container_or bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_or bs_a bs_b out in
    out

let bitset_container_or_nocard bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_or bs_a bs_b out in
    out

let bitset_container_and bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_and bs_a bs_b out in
    out

let bitset_container_and_nocard bs_a bs_b =
    let out = create () in
    let res = C.bitset_container_and bs_a bs_b out in
    out

let cardinality = C.bitset_container_cardinality
