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
    Underlined = { fg = colors.green },
    Ignore = { fg = colors.blue },
    Error = { link = "DiagnosticError" },
    Todo = { link = "DiagnosticInfo" },

    -- Syntax Highlighting
    Comment = { fg = colors.white },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.cyan },
    Boolean = { fg = colors.cyan },
    Identifier = { fg = colors.blue },
    Function = { fg = colors.purple },
    Keyword = { fg = colors.red },
    Type = { fg = colors.yellow },
    Special = { fg = colors.yellow },
    Tag = { fg = colors.magenta },
    Delimiter = { fg = colors.white },
    Debug = { fg = colors.yellow },

    -- Diff
    Added = { fg = colors.green },
    Changed = { fg = colors.blue },
    Removed = { fg = colors.magenta },

    -- Completion / Popups
    Pmenu = { fg = colors.text, bg = colors.selection },
    PmenuSel = { fg = colors.black, bg = colors.blue },
    NotifyBackground = { bg = colors.selection },

    -- Diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticHint = { fg = colors.magenta },
    DiagnosticOk = { fg = colors.green },

    -- Treesitter
    ["@variable"] = { link = "Identifier" },
    ["@constant"] = { link = "Constant" },
    ["@module"] = { fg = colors.yellow },
    ["@string"] = { link = "String" },
    ["@string.special.url"] = { link = "String" },
    ["@character"] = { link = "Character" },
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Keyword" },
    ["@property"] = { fg = colors.magenta },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@keyword"] = { link = "Keyword" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Bracket" },
    ["@punctuation.special"] = { link = "Special" },
    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { link = "DiagnosticError" },
    ["@comment.warning"] = { link = "DiagnosticWarn" },
    ["@comment.todo"] = { link = "DiagnosticInfo" },
    ["@comment.note"] = { link = "DiagnosticHint" },
    ["@markup.heading"] = { fg = colors.blue, bold = true },
    ["@markup.link.url"] = { link = "@string.special.url" },
    ["@diff.plus"] = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "@property" },

    -- LSP
    ["@lsp.type.namespace"] = { link = "Module" },

    -- Oil.nvim
    OilHidden = { fg = colors.white },
    OilDir = { link = "Directory" },
    OilDirHidden = { link = "OilHidden" },
    OilFile = { fg = colors.white },

    -- Mini Icons
    MiniIconsAzure = { fg = colors.blue },
    MiniIconsBlue = { fg = colors.blue },
    MiniIconsCyan = { fg = colors.cyan },
    MiniIconsGreen = { fg = colors.green },
    MiniIconsGrey = { fg = colors.white },
    MiniIconsOrange = { fg = colors.orange },
    MiniIconsPurple = { fg = colors.purple },
    MiniIconsRed = { fg = colors.red },
    MiniIconsYellow = { fg = colors.yellow },

    -- Mini Statusline
    MiniStatuslineModeNormal = { fg = colors.background, bg = colors.blue },
    MiniStatuslineModeInsert = { fg = colors.background, bg = colors.green },
    MiniStatuslineModeVisual = { fg = colors.background, bg = colors.purple },
    MiniStatuslineModeReplace = { fg = colors.background, bg = colors.red },
    MiniStatuslineModeCommand = { fg = colors.background, bg = colors.yellow },
    MiniStatuslineModeOther = { fg = colors.background, bg = colors.orange },

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
