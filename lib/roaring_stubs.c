#include "CRoaring/include/containers/bitset.h"
#include "ctypes_cstubs_internals.h"

value caml__1_bitset_container_create(value x1)
{
   struct bitset_container_s* x2 = bitset_container_create();
   return CTYPES_FROM_PTR(x2);
}
value caml__2_bitset_container_free(value x3)
{
   struct bitset_container_s* x4 = CTYPES_ADDR_OF_FATPTR(x3);
   bitset_container_free(x4);
   return Val_unit;
}
value caml__3_bitset_container_set(value x7, value x6)
{
   struct bitset_container_s* x8 = CTYPES_ADDR_OF_FATPTR(x7);
   uint16_t x9 = Uint16_val(x6);
   bitset_container_set(x8, x9);
   return Val_unit;
}
value caml__4_bitset_container_unset(value x14, value x13)
{
   struct bitset_container_s* x15 = CTYPES_ADDR_OF_FATPTR(x14);
   uint16_t x16 = Uint16_val(x13);
   bitset_container_unset(x15, x16);
   return Val_unit;
}
value caml__5_bitset_container_get(value x21, value x20)
{
   struct bitset_container_s* x22 = CTYPES_ADDR_OF_FATPTR(x21);
   uint16_t x23 = Uint16_val(x20);
   _Bool x26 = bitset_container_get(x22, x23);
   return Val_bool(x26);
}
value caml__6_bitset_container_or(value x29, value x28, value x27)
{
   struct bitset_container_s* x30 = CTYPES_ADDR_OF_FATPTR(x29);
   struct bitset_container_s* x31 = CTYPES_ADDR_OF_FATPTR(x28);
   struct bitset_container_s* x32 = CTYPES_ADDR_OF_FATPTR(x27);
   int x33 = bitset_container_or(x30, x31, x32);
   return Val_int(x33);
}
value caml__7_bitset_container_or_nocard(value x36, value x35, value x34)
{
   struct bitset_container_s* x37 = CTYPES_ADDR_OF_FATPTR(x36);
   struct bitset_container_s* x38 = CTYPES_ADDR_OF_FATPTR(x35);
   struct bitset_container_s* x39 = CTYPES_ADDR_OF_FATPTR(x34);
   int x40 = bitset_container_or_nocard(x37, x38, x39);
   return Val_int(x40);
}
value caml__8_bitset_container_compute_cardinality(value x41)
{
   struct bitset_container_s* x42 = CTYPES_ADDR_OF_FATPTR(x41);
   int x43 = bitset_container_compute_cardinality(x42);
   return Val_int(x43);
}
value caml__9_bitset_container_and(value x46, value x45, value x44)
{
   struct bitset_container_s* x47 = CTYPES_ADDR_OF_FATPTR(x46);
   struct bitset_container_s* x48 = CTYPES_ADDR_OF_FATPTR(x45);
   struct bitset_container_s* x49 = CTYPES_ADDR_OF_FATPTR(x44);
   int x50 = bitset_container_and(x47, x48, x49);
   return Val_int(x50);
}
value caml__10_bitset_container_and_nocard(value x53, value x52, value x51)
{
   struct bitset_container_s* x54 = CTYPES_ADDR_OF_FATPTR(x53);
   struct bitset_container_s* x55 = CTYPES_ADDR_OF_FATPTR(x52);
   struct bitset_container_s* x56 = CTYPES_ADDR_OF_FATPTR(x51);
   int x57 = bitset_container_and_nocard(x54, x55, x56);
   return Val_int(x57);
}
value caml__11_bitset_container_cardinality(value x58)
{
   struct bitset_container_s* x59 = CTYPES_ADDR_OF_FATPTR(x58);
   int x60 = bitset_container_cardinality(x59);
   return Val_int(x60);
}
