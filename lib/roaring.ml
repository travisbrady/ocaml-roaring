open Ctypes

let x = 0

module C = Roaring_bindings.C(Roaring_generated)

type t = C.bitset_container_s structure

let create = C.bitset_container_create
let set bs i = C.bitset_container_set bs (Unsigned.UInt16.of_int i)
let unset bs i = C.bitset_container_unset bs (Unsigned.UInt16.of_int i)
let get bs i = C.bitset_container_get bs (Unsigned.UInt16.of_int i)

let bitset_container_or bs_a bs_b =
    let out = make C.bitset_container_s in
    let res = C.bitset_container_or bs_a bs_b bs_b in
    out

let bitset_container_or_nocard bs_a bs_b =
    let out = make C.bitset_container_s in
    let res = C.bitset_container_or bs_a bs_b bs_b in
    out

let bitset_container_and bs_a bs_b =
    let out = make C.bitset_container_s in
    let res = C.bitset_container_and bs_a bs_b bs_b in
    out

let bitset_container_and_nocard bs_a bs_b =
    let out = make C.bitset_container_s in
    let res = C.bitset_container_and bs_a bs_b bs_b in
    out

let cardinality = C.bitset_container_cardinality
