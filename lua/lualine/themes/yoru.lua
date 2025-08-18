local colors = require("yoru.colors")
local M = {}

M.normal = {
  a = { bg = colors.blue, fg = colors.background, gui = "bold" },
  b = { bg = colors.background2, fg = colors.blue },
  c = { bg = colors.background1, fg = colors.text },
}

M.insert = {
  a = { bg = colors.green, fg = colors.background, gui = "bold" },
  b = { bg = colors.background2, fg = colors.green },
  c = { bg = colors.background1, fg = colors.text },
}

M.terminal = {
  a = { bg = colors.yellow, fg = colors.background, gui = "bold" },
  b = { bg = colors.background2, fg = colors.yellow },
  c = { bg = colors.background1, fg = colors.text },
}

M.command = {
  a = { bg = colors.orange, fg = colors.background, gui = "bold" },
  b = { bg = colors.background2, fg = colors.orange },
  c = { bg = colors.background1, fg = colors.text },
}

M.visual = {
  a = { bg = colors.purple, fg = colors.background, gui = "bold" },
  b = { bg = colors.background2, fg = colors.purple },
  c = { bg = colors.background1, fg = colors.text },
}

M.replace = {
  a = { bg = colors.red, fg = colors.background, gui = "bold" },
  b = { bg = colors.background2, fg = colors.red },
  c = { bg = colors.background1, fg = colors.text },
}

return M
