open Ctypes

module C(F: Cstubs.FOREIGN) = 
struct

    type bitset_container_s
    let bitset_container_s : bitset_container_s structure typ = structure "bitset_container_s"
    let cardinality = field bitset_container_s "cardinality" int32_t
    let _array = field bitset_container_s "array" (ptr uint64_t)
    let () = seal bitset_container_s

    let bitset_container_create = F.foreign "bitset_container_create" (void @-> returning (ptr bitset_container_s))
    let bitset_container_free = F.foreign "bitset_container_free" (ptr bitset_container_s @-> returning void)
    let bitset_container_set = F.foreign "bitset_container_set" (ptr bitset_container_s @-> uint16_t @-> returning void)
    let bitset_container_unset = F.foreign "bitset_container_unset" (ptr bitset_container_s @-> uint16_t @-> returning void)
    let bitset_container_get = F.foreign "bitset_container_get" (ptr bitset_container_s @-> uint16_t @-> returning bool)
    let bitset_container_cardinality = F.foreign "bitset_container_cardinality" (ptr bitset_container_s @-> returning int)

end
