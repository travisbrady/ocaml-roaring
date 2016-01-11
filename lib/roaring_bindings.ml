open Ctypes

module C(F: Cstubs.FOREIGN) = 
struct

    type bitset_container_t
    let bitset_container_t : bitset_container_t structure typ = structure "bitset_container_t"
    let cardinality = field bitset_container_t "cardinality" int32_t
    let _array = field bitset_container_t "array" (ptr uint64_t)
    let () = seal bitset_container_t

    type bitset_ptr
    let bitset_ptr = ptr bitset_container_t

    (*let bitset_container_create = F.foreign "bitset_container_create" (void @-> returning (ptr bitset_container_t))*)
    let bitset_container_create = F.foreign "bitset_container_create" (void @-> returning bitset_ptr)
    let bitset_container_free = F.foreign "bitset_container_free" (bitset_ptr @-> returning void)
    let bitset_container_set = F.foreign "bitset_container_set" (bitset_ptr @-> uint16_t @-> returning void)
    let bitset_container_unset = F.foreign "bitset_container_unset" (bitset_ptr @-> uint16_t @-> returning void)
    let bitset_container_get = F.foreign "bitset_container_get" (bitset_ptr @-> uint16_t @-> returning bool)

    let bitset_container_or = F.foreign "bitset_container_or" (
        bitset_ptr @->
        bitset_ptr @->
        bitset_ptr @->
        returning int)

    let bitset_container_or_nocard = F.foreign "bitset_container_or_nocard" (
        bitset_ptr @->
        bitset_ptr @->
        bitset_ptr @->
        returning int)

    let bitset_container_compute_cardinality = F.foreign "bitset_container_compute_cardinality" (bitset_ptr @-> returning int)

    let bitset_container_and = F.foreign "bitset_container_and" (
        bitset_ptr @->
        bitset_ptr @->
        bitset_ptr @->
        returning int)

    let bitset_container_and_nocard = F.foreign "bitset_container_and_nocard" (
        bitset_ptr @->
        bitset_ptr @->
        bitset_ptr @->
        returning int)

    let bitset_container_cardinality = F.foreign "bitset_container_cardinality" (bitset_ptr @-> returning int)

end
