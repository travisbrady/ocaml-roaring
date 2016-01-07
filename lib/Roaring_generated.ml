module CI = Cstubs_internals

external caml__1_bitset_container_create : unit -> CI.voidp
  = "caml__1_bitset_container_create" 

external caml__2_bitset_container_free : _ CI.fatptr -> unit
  = "caml__2_bitset_container_free" 

external caml__3_bitset_container_set
  : _ CI.fatptr -> Unsigned.uint16 -> unit = "caml__3_bitset_container_set" 

external caml__4_bitset_container_unset
  : _ CI.fatptr -> Unsigned.uint16 -> unit = "caml__4_bitset_container_unset" 

external caml__5_bitset_container_get
  : _ CI.fatptr -> Unsigned.uint16 -> bool = "caml__5_bitset_container_get" 

external caml__6_bitset_container_cardinality : _ CI.fatptr -> int
  = "caml__6_bitset_container_cardinality" 

type 'a fn = 'a

let foreign : type a b. string -> (a -> b) Ctypes.fn -> (a -> b) =
  fun name t -> match name, t with
| "bitset_container_cardinality",
  CI.Function (CI.Pointer x2, CI.Returns (CI.Primitive CI.Int)) ->
  (fun x1 -> caml__6_bitset_container_cardinality (CI.cptr x1))
| "bitset_container_get",
  CI.Function
    (CI.Pointer x4,
     CI.Function
       (CI.Primitive CI.Uint16_t, CI.Returns (CI.Primitive CI.Bool))) ->
  (fun x3 x5 -> caml__5_bitset_container_get (CI.cptr x3) x5)
| "bitset_container_unset",
  CI.Function
    (CI.Pointer x7,
     CI.Function (CI.Primitive CI.Uint16_t, CI.Returns CI.Void)) ->
  (fun x6 x8 -> caml__4_bitset_container_unset (CI.cptr x6) x8)
| "bitset_container_set",
  CI.Function
    (CI.Pointer x10,
     CI.Function (CI.Primitive CI.Uint16_t, CI.Returns CI.Void)) ->
  (fun x9 x11 -> caml__3_bitset_container_set (CI.cptr x9) x11)
| "bitset_container_free", CI.Function (CI.Pointer x13, CI.Returns CI.Void) ->
  (fun x12 -> caml__2_bitset_container_free (CI.cptr x12))
| "bitset_container_create",
  CI.Function (CI.Void, CI.Returns (CI.Pointer x15)) ->
  (fun x14 -> CI.make_ptr x15 (caml__1_bitset_container_create x14))
| s, _ ->  Printf.ksprintf failwith "No match for %s" s


let foreign_value : type a b. string -> a Ctypes.typ -> a Ctypes.ptr =
  fun name t -> match name, t with
| s, _ ->  Printf.ksprintf failwith "No match for %s" s
