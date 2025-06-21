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
    TabLineSel = { fg = colors.text, bg = colors.blue },

    -- Main Text
    Normal = { fg = colors.text, bg = colors.background },
    NormalFloat = { link = "Normal" },

    -- Syntax Highlighting
    Comment = { fg = colors.white },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.cyan },
    Boolean = { fg = colors.cyan },
    Identifier = { fg = colors.text },
    Function = { fg = colors.purple },
    Keyword = { fg = colors.magenta },
    Type = { fg = colors.yellow },
    Special = { fg = colors.yellow },
    Tag = { fg = colors.magenta },
    Delimiter = { fg = colors.white },
    Debug = { fg = colors.yellow },

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

    StatusLineNormalC = { fg = colors.white, bg = colors.selection },
    StatusLineInsertC = { fg = colors.white, bg = colors.selection },
    StatusLineVisualC = { fg = colors.white, bg = colors.selection },
    StatusLineReplaceC = { fg = colors.white, bg = colors.selection },
    StatusLineCommandC = { fg = colors.white, bg = colors.selection },
    StatusLineTerminalC = { fg = colors.white, bg = colors.selection },
  }

  hi(groups)
end

return M
