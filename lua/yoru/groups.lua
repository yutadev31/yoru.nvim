local M = {}

function M.get()
  local C = require("yoru.palette")

  return {
    -- UI Elements
    Cursor = { fg = C.fg },
    CursorLine = { bg = C.selection },
    CursorLineNr = { fg = C.orange },
    LineNr = { fg = C.black },
    EndOfBuffer = { fg = C.black },
    Directory = { fg = C.blue },
    WinSeparator = { fg = C.black },
    FloatBorder = { fg = C.black },
    Visual = { bg = C.selection },
    Whitespace = { fg = C.white },
    TabLine = { bg = C.bg_light },
    TabLineSel = { fg = C.fg, bg = C.bg },
    CurSearch = { fg = C.fg, bg = C.orange },
    Search = { fg = C.fg, bg = C.blue },

    -- Main Text
    Normal = { fg = C.fg, bg = C.none },
    NormalFloat = { fg = C.fg, bg = C.none },
    Underlined = { fg = C.green },
    Ignore = { fg = C.blue },
    Error = { link = "DiagnosticError" },
    Todo = { link = "DiagnosticInfo" },

    -- Syntax Highlighting
    Comment = { fg = C.white },
    String = { fg = C.green },
    Character = { fg = C.green },
    Constant = { fg = C.orange },
    Number = { fg = C.cyan },
    Boolean = { fg = C.cyan },
    Identifier = { fg = C.blue },
    Function = { fg = C.purple },
    Keyword = { fg = C.red },
    Type = { fg = C.yellow },
    Special = { fg = C.yellow },
    Tag = { fg = C.magenta },
    Delimiter = { fg = C.white },
    Debug = { fg = C.yellow },

    -- Diff
    Added = { fg = C.green },
    Changed = { fg = C.blue },
    Removed = { fg = C.purple },

    -- Completion / Popups
    Pmenu = { fg = C.fg, bg = C.selection },
    PmenuSel = { fg = C.black, bg = C.blue },
    Notifybg = { bg = C.selection },

    -- Diagnostics
    DiagnosticError = { fg = C.red },
    DiagnosticWarn = { fg = C.yellow },
    DiagnosticInfo = { fg = C.blue },
    DiagnosticHint = { fg = C.purple },
    DiagnosticOk = { fg = C.green },
    DiagnosticUnderlineError = { sp = C.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = C.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = C.blue, undercurl = true },
    DiagnosticUnderlineHint = { sp = C.purple, undercurl = true },
    DiagnosticUnderlineOk = { sp = C.green, undercurl = true },

    -- Treesitter
    ["@variable"] = { link = "Identifier" },
    ["@constant"] = { link = "Constant" },
    ["@module"] = { fg = C.yellow },
    ["@string"] = { link = "String" },
    ["@string.special.url"] = { link = "String" },
    ["@character"] = { link = "Character" },
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Keyword" },
    ["@property"] = { fg = C.orange },
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
    ["@markup.heading"] = { fg = C.red, bold = true },
    ["@markup.heading.1"] = { fg = C.red, bold = true },
    ["@markup.heading.2"] = { fg = C.orange, bold = true },
    ["@markup.heading.3"] = { fg = C.yellow, bold = true },
    ["@markup.heading.4"] = { fg = C.green, bold = true },
    ["@markup.heading.5"] = { fg = C.blue, bold = true },
    ["@markup.heading.6"] = { fg = C.purple, bold = true },
    ["@markup.link.url"] = { fg = C.blue },
    ["@markup.link.label.markdown_inline"] = { fg = C.blue },
    ["@diff.plus"] = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "@property" },

    -- LSP
    ["@lsp.type.namespace"] = { link = "Module" },

    -- Oil.nvim
    OilHidden = { fg = C.fg },
    OilDir = { link = "Directory" },
    OilDirHidden = { link = "OilHidden" },
    OilFile = { fg = C.fg },

    -- Mini Icons
    MiniIconsAzure = { fg = C.blue },
    MiniIconsBlue = { fg = C.blue },
    MiniIconsCyan = { fg = C.cyan },
    MiniIconsGreen = { fg = C.green },
    MiniIconsGrey = { fg = C.white },
    MiniIconsOrange = { fg = C.orange },
    MiniIconsPurple = { fg = C.purple },
    MiniIconsRed = { fg = C.red },
    MiniIconsYellow = { fg = C.yellow },

    -- Mini Statusline
    MiniStatuslineModeNormal = { fg = C.bg, bg = C.blue },
    MiniStatuslineModeInsert = { fg = C.bg, bg = C.green },
    MiniStatuslineModeVisual = { fg = C.bg, bg = C.purple },
    MiniStatuslineModeReplace = { fg = C.bg, bg = C.red },
    MiniStatuslineModeCommand = { fg = C.bg, bg = C.yellow },
    MiniStatuslineModeOther = { fg = C.bg, bg = C.orange },
    MiniStatuslineDevinfo = { fg = C.fg, bg = C.selection },
    MiniStatuslineFilename = { fg = C.white, bg = C.selection },
    MiniStatuslineFileinfo = { fg = C.fg, bg = C.selection },

    -- barbar
    BufferOffset = { bg = C.bg_dark, fg = C.fg },
    BufferCurrent = { bg = C.none, fg = C.fg },
    BufferCurrentIndex = { bg = C.none, fg = C.blue },
    BufferCurrentMod = { bg = C.none, fg = C.yellow },
    BufferCurrentSign = { bg = C.none, fg = C.bg },
    BufferCurrentTarget = { bg = C.none, fg = C.red },
    BufferVisible = { bg = C.bg_light, fg = C.fg },
    BufferVisibleIndex = { bg = C.bg_light, fg = C.blue },
    BufferVisibleMod = { bg = C.bg_light, fg = C.yellow },
    BufferVisibleSign = { bg = C.bg_light, fg = C.bg },
    BufferVisibleTarget = { bg = C.bg_light, fg = C.red },
    BufferInactive = { bg = C.bg_light, fg = C.black },
    BufferInactiveIndex = { bg = C.bg_light, fg = C.blue },
    BufferInactiveMod = { bg = C.bg_light, fg = C.yellow },
    BufferInactiveSign = { bg = C.bg_light, fg = C.bg },
    BufferInactiveTarget = { bg = C.bg_light, fg = C.red },
    BufferTabpages = { bg = C.bg_light, fg = C.bg },
    BufferTabpage = { bg = C.bg_light, fg = C.blue },

    -- Neotree
    NeoTreeNormal = { bg = C.bg_dark, fg = C.fg },
    NeoTreeNormalNC = { bg = C.bg_dark, fg = C.fg },
    NeoTreeGitModified = { fg = C.orange },
    NeoTreeGitStaged = { fg = C.green },
    NeoTreeGitUntracked = { fg = C.purple },

    -- Render Markdown
    RenderMarkdownBullet = { fg = C.orange },
    RenderMarkdownCode = { bg = C.bg_dark },
    RenderMarkdownDash = { fg = C.orange },
    RenderMarkdownTableHead = { fg = C.white },
    RenderMarkdownTableRow = { fg = C.white },
    RenderMarkdownH1Bg = { bg = C.red_light },
    RenderMarkdownH2Bg = { bg = C.orange_light },
    RenderMarkdownH3Bg = { bg = C.yellow_light },
    RenderMarkdownH4Bg = { bg = C.green_light },
    RenderMarkdownH5Bg = { bg = C.blue_light },
    RenderMarkdownH6Bg = { bg = C.purple_light },

    -- Snacks
    SnacksDashboardDesc = { fg = C.blue },
    SnacksDashboardFooter = { fg = C.green },
    SnacksDashboardHeader = { fg = C.green },
    SnacksDashboardIcon = { fg = C.blue },
    SnacksDashboardKey = { fg = C.red },
    SnacksDashboardSpecial = { fg = C.purple },
    SnacksDashboardDir = { fg = C.yellow },
    SnacksDashboardFile = { fg = C.yellow },
  }
end

return M
