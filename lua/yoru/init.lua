local M = {}

local function hi(groups)
  vim.cmd("hi clear")
  for group, value in pairs(groups) do
    vim.api.nvim_set_hl(0, group, value)
  end
end

function M.setup()
  local colors = require("yoru.colors")

  local groups = {
    Cursor = { fg = colors.text },
    CursorLine = { bg = colors.selection },

    Normal = { fg = colors.text, bg = colors.background },
    NormalFloat = { link = "Normal" },
    Comment = { fg = colors.white },
  }

  hi(groups)
end

return M
