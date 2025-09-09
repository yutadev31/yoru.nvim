local colors = require("yoru.colors")

return {
  normal = {
    a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.blue },
    c = { bg = colors.bg, fg = colors.text },
  },
  insert = {
    a = { bg = colors.green, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.green },
    c = { bg = colors.bg, fg = colors.text },
  },
  terminal = {
    a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.yellow },
    c = { bg = colors.bg, fg = colors.text },
  },
  command = {
    a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.orange },
    c = { bg = colors.bg, fg = colors.text },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.purple },
    c = { bg = colors.bg, fg = colors.text },
  },
  replace = {
    a = { bg = colors.red, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.red },
    c = { bg = colors.bg, fg = colors.text },
  },
  inactive = {
    a = { bg = colors.text1, fg = colors.bg, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.text1 },
    c = { bg = colors.bg, fg = colors.text },
  },
}
