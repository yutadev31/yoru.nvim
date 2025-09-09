local colors = require("yoru.colors")

return {
  normal = {
    a = { bg = colors.blue, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.blue },
    c = { bg = "NONE", fg = colors.text },
  },
  insert = {
    a = { bg = colors.green, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.green },
    c = { bg = "NONE", fg = colors.text },
  },
  terminal = {
    a = { bg = colors.yellow, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.yellow },
    c = { bg = "NONE", fg = colors.text },
  },
  command = {
    a = { bg = colors.orange, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.orange },
    c = { bg = "NONE", fg = colors.text },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.purple },
    c = { bg = "NONE", fg = colors.text },
  },
  replace = {
    a = { bg = colors.red, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.red },
    c = { bg = "NONE", fg = colors.text },
  },
  inactive = {
    a = { bg = colors.text1, fg = colors.background, gui = "bold" },
    b = { bg = colors.statusbar, fg = colors.text1 },
    c = { bg = "NONE", fg = colors.text },
  },
}
