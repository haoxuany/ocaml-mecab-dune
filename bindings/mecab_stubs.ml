
open Ctypes

module Bindings (F : Ctypes.FOREIGN) =
struct
  open F

  let version =
    foreign "mecab_version" (void @-> returning string)
end
