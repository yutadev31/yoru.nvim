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
    -- UI Elements
    Cursor = { fg = colors.text },
    CursorLine = { bg = colors.selection },
    CursorLineNr = { fg = colors.text },
    LineNr = { fg = colors.white },
    EndOfBuffer = { fg = colors.white },
    Directory = { fg = colors.blue },
    WinSeparator = { fg = colors.white },
    FloatBorder = { link = "WinSeparator" },
    Visual = { bg = colors.selection },
    Whitespace = { fg = colors.white },
    TabLine = { bg = colors.background },
    TabLineSel = { fg = colors.black, bg = colors.blue },

    -- Main Text
    Normal = { fg = colors.text, bg = colors.background },
    NormalFloat = { link = "Normal" },

    -- Syntax Highlighting
    Comment = { fg = colors.white },

    -- Oil.nvim
    OilHidden = { fg = colors.gray },
    OilDir = { link = "Directory" },
    OilDirHidden = { link = "OilHidden" },
    OilFile = { fg = colors.white },

    -- Statusline (Simple.nvim)
    StatusLineNormalA = { fg = colors.background, bg = colors.blue, bold = true },
    StatusLineInsertA = { fg = colors.background, bg = colors.green, bold = true },
    StatusLineVisualA = { fg = colors.background, bg = colors.purple, bold = true },
    StatusLineReplaceA = { fg = colors.background, bg = colors.red, bold = true },
    StatusLineCommandA = { fg = colors.background, bg = colors.yellow, bold = true },
    StatusLineTerminalA = { fg = colors.background, bg = colors.orange, bold = true },

    StatusLineNormalB = { fg = colors.blue, bg = colors.selection },
    StatusLineInsertB = { fg = colors.green, bg = colors.selection },
    StatusLineVisualB = { fg = colors.purple, bg = colors.selection },
    StatusLineReplaceB = { fg = colors.red, bg = colors.selection },
    StatusLineCommandB = { fg = colors.yellow, bg = colors.selection },
    StatusLineTerminalB = { fg = colors.orange, bg = colors.selection },

    StatusLineNormalC = { fg = colors.white, bg = colors.black },
    StatusLineInsertC = { fg = colors.white, bg = colors.black },
    StatusLineVisualC = { fg = colors.white, bg = colors.black },
    StatusLineReplaceC = { fg = colors.white, bg = colors.black },
    StatusLineCommandC = { fg = colors.white, bg = colors.black },
    StatusLineTerminalC = { fg = colors.white, bg = colors.black },
  }

  hi(groups)
end

return M
