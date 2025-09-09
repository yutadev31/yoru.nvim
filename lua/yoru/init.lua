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
    Cursor = { fg = colors.fg },
    CursorLine = { bg = colors.selection },
    CursorLineNr = { fg = colors.fg },
    LineNr = { fg = colors.white },
    EndOfBuffer = { fg = colors.black },
    Directory = { fg = colors.blue },
    WinSeparator = { fg = colors.black },
    FloatBorder = { link = "WinSeparator" },
    Visual = { bg = colors.selection },
    Whitespace = { fg = colors.white },
    TabLine = { bg = colors.overlay },
    TabLineSel = { fg = colors.fg, bg = colors.blue },

    -- Main Text
    Normal = { fg = colors.fg, bg = "NONE" },
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
    Pmenu = { fg = colors.fg, bg = colors.selection },
    PmenuSel = { fg = colors.black, bg = colors.blue },
    Notifybg = { bg = colors.selection },

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
    MiniStatuslineModeNormal = { fg = colors.bg, bg = colors.blue },
    MiniStatuslineModeInsert = { fg = colors.bg, bg = colors.green },
    MiniStatuslineModeVisual = { fg = colors.bg, bg = colors.purple },
    MiniStatuslineModeReplace = { fg = colors.bg, bg = colors.red },
    MiniStatuslineModeCommand = { fg = colors.bg, bg = colors.yellow },
    MiniStatuslineModeOther = { fg = colors.bg, bg = colors.orange },
    MiniStatuslineDevinfo = { fg = colors.fg, bg = colors.selection },
    MiniStatuslineFilename = { fg = colors.white, bg = colors.selection },
    MiniStatuslineFileinfo = { fg = colors.fg, bg = colors.selection },

    -- barbar
    BufferCurrent = { bg = colors.blue, fg = colors.fg },
    BufferCurrentIndex = { bg = colors.blue, fg = colors.blue },
    BufferCurrentMod = { bg = colors.blue, fg = colors.yellow },
    BufferCurrentSign = { bg = colors.blue, fg = colors.blue },
    BufferCurrentTarget = { bg = colors.blue, fg = colors.red },
    BufferVisible = { bg = colors.overlay, fg = colors.fg },
    BufferVisibleIndex = { bg = colors.overlay, fg = colors.blue },
    BufferVisibleMod = { bg = colors.overlay, fg = colors.yellow },
    BufferVisibleSign = { bg = colors.overlay, fg = colors.blue },
    BufferVisibleTarget = { bg = colors.overlay, fg = colors.red },
    BufferInactive = { bg = colors.overlay, fg = colors.white },
    BufferInactiveIndex = { bg = colors.overlay, fg = colors.blue },
    BufferInactiveMod = { bg = colors.overlay, fg = colors.yellow },
    BufferInactiveSign = { bg = colors.overlay, fg = colors.blue },
    BufferInactiveTarget = { bg = colors.overlay, fg = colors.red },
    BufferTabpages = { bg = colors.overlay, fg = "NONE" },
    BufferTabpage = { bg = colors.overlay, fg = colors.blue },
  }

  hi(groups)
end

return M
