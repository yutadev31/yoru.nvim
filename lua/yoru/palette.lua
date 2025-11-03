local U = require("yoru.utils.color")

local C = {
  fg = "#f2f2f2",
  bg = "#252537",
  bg_dark = "#1f1f2e",
  bg_light = "#2d2d43",
  selection = "#3d3d5c",
  white = "#d1d1e0",
  black = "#5c5c8a",
  red = "#ff8f8f",
  orange = "#ffb88f",
  yellow = "#ffe18f",
  green = "#8fffa5",
  cyan = "#8fecff",
  blue = "#8fabff",
  purple = "#da8fff",
}

C.red_light = U.mix_hex(C.bg, C.red, 0.1)
C.orange_light = U.mix_hex(C.bg, C.orange, 0.1)
C.yellow_light = U.mix_hex(C.bg, C.yellow, 0.1)
C.green_light = U.mix_hex(C.bg, C.green, 0.1)
C.blue_light = U.mix_hex(C.bg, C.blue, 0.1)
C.purple_light = U.mix_hex(C.bg, C.purple, 0.1)

return C
