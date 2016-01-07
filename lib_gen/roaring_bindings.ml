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

    let bitset_container_or = F.foreign "bitset_container_or" (
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        returning int)

    let bitset_container_or_nocard = F.foreign "bitset_container_or_nocard" (
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        returning int)

    let bitset_container_compute_cardinality = F.foreign "bitset_container_compute_cardinality" (ptr bitset_container_s @-> returning int)

    let bitset_container_and = F.foreign "bitset_container_and" (
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        returning int)

    let bitset_container_and_nocard = F.foreign "bitset_container_and_nocard" (
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        ptr bitset_container_s @->
        returning int)

    let bitset_container_cardinality = F.foreign "bitset_container_cardinality" (ptr bitset_container_s @-> returning int)

end
