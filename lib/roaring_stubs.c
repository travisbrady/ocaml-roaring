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
value caml__6_bitset_container_cardinality(value x27)
{
   struct bitset_container_s* x28 = CTYPES_ADDR_OF_FATPTR(x27);
   int x29 = bitset_container_cardinality(x28);
   return Val_int(x29);
}
