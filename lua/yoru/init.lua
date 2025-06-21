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
    StatusLineNormalA = { fg = colors.bg, bg = colors.blue, bold = true },
    StatusLineInsertA = { fg = colors.bg, bg = colors.green, bold = true },
    StatusLineVisualA = { fg = colors.bg, bg = colors.purple, bold = true },
    StatusLineReplaceA = { fg = colors.bg, bg = colors.red, bold = true },
    StatusLineCommandA = { fg = colors.bg, bg = colors.yellow, bold = true },
    StatusLineTerminalA = { fg = colors.bg, bg = colors.orange, bold = true },

    StatusLineNormalB = { fg = colors.blue, bg = colors.currentline },
    StatusLineInsertB = { fg = colors.green, bg = colors.currentline },
    StatusLineVisualB = { fg = colors.purple, bg = colors.currentline },
    StatusLineReplaceB = { fg = colors.red, bg = colors.currentline },
    StatusLineCommandB = { fg = colors.yellow, bg = colors.currentline },
    StatusLineTerminalB = { fg = colors.orange, bg = colors.currentline },

    StatusLineNormalC = { fg = colors.gray, bg = colors.statusline },
    StatusLineInsertC = { fg = colors.gray, bg = colors.statusline },
    StatusLineVisualC = { fg = colors.gray, bg = colors.statusline },
    StatusLineReplaceC = { fg = colors.gray, bg = colors.statusline },
    StatusLineCommandC = { fg = colors.gray, bg = colors.statusline },
    StatusLineTerminalC = { fg = colors.gray, bg = colors.statusline },
  }

  hi(groups)
end

return M
