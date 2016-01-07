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

external caml__6_bitset_container_or
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> int
  = "caml__6_bitset_container_or" 

external caml__7_bitset_container_or_nocard
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> int
  = "caml__7_bitset_container_or_nocard" 

external caml__8_bitset_container_compute_cardinality : _ CI.fatptr -> int
  = "caml__8_bitset_container_compute_cardinality" 

external caml__9_bitset_container_and
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> int
  = "caml__9_bitset_container_and" 

external caml__10_bitset_container_and_nocard
  : _ CI.fatptr -> _ CI.fatptr -> _ CI.fatptr -> int
  = "caml__10_bitset_container_and_nocard" 

external caml__11_bitset_container_cardinality : _ CI.fatptr -> int
  = "caml__11_bitset_container_cardinality" 

type 'a fn = 'a

let foreign : type a b. string -> (a -> b) Ctypes.fn -> (a -> b) =
  fun name t -> match name, t with
| "bitset_container_cardinality",
  CI.Function (CI.Pointer x2, CI.Returns (CI.Primitive CI.Int)) ->
  (fun x1 -> caml__11_bitset_container_cardinality (CI.cptr x1))
| "bitset_container_and_nocard",
  CI.Function
    (CI.Pointer x4,
     CI.Function
       (CI.Pointer x6,
        CI.Function (CI.Pointer x8, CI.Returns (CI.Primitive CI.Int)))) ->
  (fun x3 x5 x7 ->
    caml__10_bitset_container_and_nocard (CI.cptr x3) (CI.cptr x5)
    (CI.cptr x7))
| "bitset_container_and",
  CI.Function
    (CI.Pointer x10,
     CI.Function
       (CI.Pointer x12,
        CI.Function (CI.Pointer x14, CI.Returns (CI.Primitive CI.Int)))) ->
  (fun x9 x11 x13 ->
    caml__9_bitset_container_and (CI.cptr x9) (CI.cptr x11) (CI.cptr x13))
| "bitset_container_compute_cardinality",
  CI.Function (CI.Pointer x16, CI.Returns (CI.Primitive CI.Int)) ->
  (fun x15 -> caml__8_bitset_container_compute_cardinality (CI.cptr x15))
| "bitset_container_or_nocard",
  CI.Function
    (CI.Pointer x18,
     CI.Function
       (CI.Pointer x20,
        CI.Function (CI.Pointer x22, CI.Returns (CI.Primitive CI.Int)))) ->
  (fun x17 x19 x21 ->
    caml__7_bitset_container_or_nocard (CI.cptr x17) (CI.cptr x19)
    (CI.cptr x21))
| "bitset_container_or",
  CI.Function
    (CI.Pointer x24,
     CI.Function
       (CI.Pointer x26,
        CI.Function (CI.Pointer x28, CI.Returns (CI.Primitive CI.Int)))) ->
  (fun x23 x25 x27 ->
    caml__6_bitset_container_or (CI.cptr x23) (CI.cptr x25) (CI.cptr x27))
| "bitset_container_get",
  CI.Function
    (CI.Pointer x30,
     CI.Function
       (CI.Primitive CI.Uint16_t, CI.Returns (CI.Primitive CI.Bool))) ->
  (fun x29 x31 -> caml__5_bitset_container_get (CI.cptr x29) x31)
| "bitset_container_unset",
  CI.Function
    (CI.Pointer x33,
     CI.Function (CI.Primitive CI.Uint16_t, CI.Returns CI.Void)) ->
  (fun x32 x34 -> caml__4_bitset_container_unset (CI.cptr x32) x34)
| "bitset_container_set",
  CI.Function
    (CI.Pointer x36,
     CI.Function (CI.Primitive CI.Uint16_t, CI.Returns CI.Void)) ->
  (fun x35 x37 -> caml__3_bitset_container_set (CI.cptr x35) x37)
| "bitset_container_free", CI.Function (CI.Pointer x39, CI.Returns CI.Void) ->
  (fun x38 -> caml__2_bitset_container_free (CI.cptr x38))
| "bitset_container_create",
  CI.Function (CI.Void, CI.Returns (CI.Pointer x41)) ->
  (fun x40 -> CI.make_ptr x41 (caml__1_bitset_container_create x40))
| s, _ ->  Printf.ksprintf failwith "No match for %s" s


let foreign_value : type a b. string -> a Ctypes.typ -> a Ctypes.ptr =
  fun name t -> match name, t with
| s, _ ->  Printf.ksprintf failwith "No match for %s" s
