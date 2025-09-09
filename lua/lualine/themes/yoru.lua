local colors = require("yoru.colors")

return {
  normal = {
    a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.blue },
    c = { bg = colors.bg, fg = colors.fg },
  },
  insert = {
    a = { bg = colors.green, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.green },
    c = { bg = colors.bg, fg = colors.fg },
  },
  terminal = {
    a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.yellow },
    c = { bg = colors.bg, fg = colors.fg },
  },
  command = {
    a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.orange },
    c = { bg = colors.bg, fg = colors.fg },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.purple },
    c = { bg = colors.bg, fg = colors.fg },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.red },
    c = { bg = colors.bg, fg = colors.fg },
  },
  inactive = {
    a = { bg = colors.white, fg = colors.bg, gui = "bold" },
    b = { bg = colors.overlay, fg = colors.white },
    c = { bg = colors.bg, fg = colors.fg },
  },
}
