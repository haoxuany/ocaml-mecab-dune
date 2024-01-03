
let main () =
  let ml_out = open_out "mecab_generated.ml"
  and c_out = open_out "mecab_stubs.c" in
  let ml_fmt = Format.formatter_of_out_channel ml_out
  and c_fmt = Format.formatter_of_out_channel c_out in
  Format.fprintf c_fmt "%s@\n" "#include <mecab.h>";
  Cstubs.write_c c_fmt ~prefix:"mecab_stub_" (module Mecab_stubs.Bindings);
  Cstubs.write_ml ml_fmt ~prefix:"mecab_stub_" (module Mecab_stubs.Bindings);
  Format.pp_print_flush ml_fmt ();
  Format.pp_print_flush c_fmt ();
  close_out ml_out;
  close_out c_out

let () = main ()
