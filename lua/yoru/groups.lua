local M = {}

function M.get()
  local colors = require("yoru.colors")
  local utils = require("yoru.utils.color")

  return {
    -- UI Elements
    Cursor = { fg = colors.fg },
    CursorLine = { bg = colors.selection },
    CursorLineNr = { fg = colors.blue },
    LineNr = { fg = colors.black },
    EndOfBuffer = { fg = colors.black },
    Directory = { fg = colors.blue },
    WinSeparator = { fg = colors.black },
    FloatBorder = { link = "WinSeparator" },
    Visual = { bg = colors.selection },
    Whitespace = { fg = colors.white },
    TabLine = { bg = colors.bg_light },
    TabLineSel = { fg = colors.fg, bg = colors.bg },

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
    Constant = { fg = colors.orange },
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
    Removed = { fg = colors.purple },

    -- Completion / Popups
    Pmenu = { fg = colors.fg, bg = colors.selection },
    PmenuSel = { fg = colors.black, bg = colors.blue },
    Notifybg = { bg = colors.selection },

    -- Diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticHint = { fg = colors.purple },
    DiagnosticOk = { fg = colors.green },
    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.purple, undercurl = true },
    DiagnosticUnderlineOk = { sp = colors.green, undercurl = true },

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
    ["@markup.heading"] = { fg = colors.red, bold = true },
    ["@markup.heading.1"] = { fg = colors.red, bold = true },
    ["@markup.heading.2"] = { fg = colors.orange, bold = true },
    ["@markup.heading.3"] = { fg = colors.yellow, bold = true },
    ["@markup.heading.4"] = { fg = colors.green, bold = true },
    ["@markup.heading.5"] = { fg = colors.blue, bold = true },
    ["@markup.heading.6"] = { fg = colors.purple, bold = true },
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
    BufferOffset = { bg = colors.bg_dark, fg = colors.fg },
    BufferCurrent = { bg = colors.bg, fg = colors.fg },
    BufferCurrentIndex = { bg = colors.bg, fg = colors.blue },
    BufferCurrentMod = { bg = colors.bg, fg = colors.yellow },
    BufferCurrentSign = { bg = colors.bg, fg = colors.bg },
    BufferCurrentTarget = { bg = colors.bg, fg = colors.red },
    BufferVisible = { bg = colors.bg_light, fg = colors.fg },
    BufferVisibleIndex = { bg = colors.bg_light, fg = colors.blue },
    BufferVisibleMod = { bg = colors.bg_light, fg = colors.yellow },
    BufferVisibleSign = { bg = colors.bg_light, fg = colors.bg },
    BufferVisibleTarget = { bg = colors.bg_light, fg = colors.red },
    BufferInactive = { bg = colors.bg_light, fg = colors.black },
    BufferInactiveIndex = { bg = colors.bg_light, fg = colors.blue },
    BufferInactiveMod = { bg = colors.bg_light, fg = colors.yellow },
    BufferInactiveSign = { bg = colors.bg_light, fg = colors.bg },
    BufferInactiveTarget = { bg = colors.bg_light, fg = colors.red },
    BufferTabpages = { bg = colors.bg_light, fg = "NONE" },
    BufferTabpage = { bg = colors.bg_light, fg = colors.blue },

    -- Neotree
    NeoTreeNormal = { bg = colors.bg_dark, fg = colors.fg },
    NeoTreeNormalNC = { bg = colors.bg_dark, fg = colors.fg },
    NeoTreeGitModified = { fg = colors.orange },
    NeoTreeGitStaged = { fg = colors.green },
    NeoTreeGitUntracked = { fg = colors.purple },

    -- Render Markdown
    RenderMarkdownBullet = { fg = colors.orange },
    RenderMarkdownCode = { bg = colors.bg_dark },
    RenderMarkdownDash = { fg = colors.orange },
    RenderMarkdownTableHead = { fg = colors.white },
    RenderMarkdownTableRow = { fg = colors.white },
    RenderMarkdownH1Bg = { bg = utils.mix_hex(colors.bg, colors.red, 0.1) },
    RenderMarkdownH2Bg = { bg = utils.mix_hex(colors.bg, colors.orange, 0.1) },
    RenderMarkdownH3Bg = { bg = utils.mix_hex(colors.bg, colors.yellow, 0.1) },
    RenderMarkdownH4Bg = { bg = utils.mix_hex(colors.bg, colors.green, 0.1) },
    RenderMarkdownH5Bg = { bg = utils.mix_hex(colors.bg, colors.blue, 0.1) },
    RenderMarkdownH6Bg = { bg = utils.mix_hex(colors.bg, colors.purple, 0.1) },
  }
end

return M
