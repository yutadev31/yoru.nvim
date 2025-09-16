local U = require("yoru.utils.color")

local C = {
  none = "NONE",
  fg = U.hsl(0, 0, 95),
  bg = U.hsl(230, 20, 15),
  bg_dark = U.hsl(230, 20, 12),
  bg_light = U.hsl(230, 20, 20),
  selection = U.hsl(230, 20, 30),
  white = U.hsl(230, 20, 85),
  black = U.hsl(230, 20, 42),
  red = U.hsl(0, 65, 70),
  orange = U.hsl(22, 65, 70),
  yellow = U.hsl(44, 65, 70),
  green = U.hsl(132, 65, 70),
  cyan = U.hsl(180, 65, 70),
  blue = U.hsl(230, 65, 70),
  purple = U.hsl(265, 60, 70),
}

C.red_light = U.mix_hex(C.bg, C.red, 0.1)
C.orange_light = U.mix_hex(C.bg, C.orange, 0.1)
C.yellow_light = U.mix_hex(C.bg, C.yellow, 0.1)
C.green_light = U.mix_hex(C.bg, C.green, 0.1)
C.blue_light = U.mix_hex(C.bg, C.blue, 0.1)
C.purple_light = U.mix_hex(C.bg, C.purple, 0.1)

return C
