open Ctypes

let _ =
  let fmt = Format.formatter_of_out_channel (open_out "lib/roaring_stubs.c") in
  Format.fprintf fmt "#include \"CRoaring/include/containers/bitset.h\"@.";
  Cstubs.write_c fmt ~prefix:"caml_" (module Roaring_bindings.C);

  let fmt = Format.formatter_of_out_channel (open_out "lib/roaring_generated.ml") in
  Cstubs.write_ml fmt ~prefix:"caml_" (module Roaring_bindings.C)
