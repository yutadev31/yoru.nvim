local U = require("yoru.utils")

local C = {
  none = "NONE",
  fg = "#f2f2f2",
  bg = "#232538",
  bg_dark = "#1d1f2f",
  bg_light = "#2b2d45",
  selection = "#3b3e5e",
  white = "#d1d2e0",
  black = "#5c608a",
  red = "#ff8080",
  orange = "#ffae80",
  yellow = "#ffdd80",
  green = "#80ff99",
  cyan = "#80eaff",
  blue = "#809fff",
  purple = "#d580ff",
}

C.red_light = U.mix_hex(C.bg, C.red, 0.1)
C.orange_light = U.mix_hex(C.bg, C.orange, 0.1)
C.yellow_light = U.mix_hex(C.bg, C.yellow, 0.1)
C.green_light = U.mix_hex(C.bg, C.green, 0.1)
C.blue_light = U.mix_hex(C.bg, C.blue, 0.1)
C.purple_light = U.mix_hex(C.bg, C.purple, 0.1)

return C
