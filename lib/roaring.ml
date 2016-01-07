open Ctypes

let x = 0

module C = Roaring_bindings.C(Roaring_generated)

type t = C.bitset_container_s structure

let create = C.bitset_container_create
let set bs i = C.bitset_container_set bs (Unsigned.UInt16.of_int i)
let unset bs i = C.bitset_container_unset bs (Unsigned.UInt16.of_int i)
let get bs i = C.bitset_container_get bs (Unsigned.UInt16.of_int i)

let cardinality = C.bitset_container_cardinality
