local U = require("yoru.utils.color")

local C = {
  none = "NONE",
  fg = U.hsl(0, 0, 95),
  bg = U.hsl(230, 20, 18),
  bg_dark = U.hsl(230, 20, 15),
  bg_light = U.hsl(230, 20, 22),
  selection = U.hsl(230, 20, 30),
  white = U.hsl(230, 20, 85),
  black = U.hsl(230, 20, 42),
  red = U.hsl(0, 100, 78),
  orange = U.hsl(22, 100, 78),
  yellow = U.hsl(44, 100, 78),
  green = U.hsl(132, 100, 78),
  cyan = U.hsl(180, 100, 78),
  blue = U.hsl(230, 100, 78),
  purple = U.hsl(260, 100, 78),
}

C.red_light = U.mix_hex(C.bg, C.red, 0.1)
C.orange_light = U.mix_hex(C.bg, C.orange, 0.1)
C.yellow_light = U.mix_hex(C.bg, C.yellow, 0.1)
C.green_light = U.mix_hex(C.bg, C.green, 0.1)
C.blue_light = U.mix_hex(C.bg, C.blue, 0.1)
C.purple_light = U.mix_hex(C.bg, C.purple, 0.1)

return C
