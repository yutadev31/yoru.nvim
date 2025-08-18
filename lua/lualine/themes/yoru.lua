local colors = require("yoru.colors")

return {
  normal = {
    a = { bg = colors.blue, fg = colors.background, gui = "bold" },
    b = { bg = colors.background2, fg = colors.blue },
    c = { bg = colors.background1, fg = colors.text },
  },

  insert = {
    a = { bg = colors.green, fg = colors.background, gui = "bold" },
    b = { bg = colors.background2, fg = colors.green },
    c = { bg = colors.background1, fg = colors.text },
  },

  terminal = {
    a = { bg = colors.yellow, fg = colors.background, gui = "bold" },
    b = { bg = colors.background2, fg = colors.yellow },
    c = { bg = colors.background1, fg = colors.text },
  },

  command = {
    a = { bg = colors.orange, fg = colors.background, gui = "bold" },
    b = { bg = colors.background2, fg = colors.orange },
    c = { bg = colors.background1, fg = colors.text },
  },

  visual = {
    a = { bg = colors.purple, fg = colors.background, gui = "bold" },
    b = { bg = colors.background2, fg = colors.purple },
    c = { bg = colors.background1, fg = colors.text },
  },

  replace = {
    a = { bg = colors.red, fg = colors.background, gui = "bold" },
    b = { bg = colors.background2, fg = colors.red },
    c = { bg = colors.background1, fg = colors.text },
  },
}
