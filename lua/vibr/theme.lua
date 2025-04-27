local theme = {}
local hl = vim.api.nvim_set_hl

theme.set_highlights = function()
    local isDark = vim.o.background == "dark"
    local p = require("vibr.pallete").get_pallete();
    -- Core UI
    hl(0, "Normal", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "ColorColumn", { fg = p.vbrNone, bg = p.vbrBgAlt })
    hl(0, "Cursor", { fg = p.vbrNone, bg = p.vbrNone })
    hl(0, "CursorLine", { fg = p.vbrSelectionFg, bg = p.vbrSelectionBg })
    hl(0, "Directory", { fg = p.vbrBlue, bg = p.vbrNone })
    hl(0, "EndOfBuffer", { fg = p.vbrNone, bg = p.vbrNone })
    hl(0, "VertSplit", { fg = p.vbrNone, bg = p.vbrBgAlt })
    hl(0, "WinSeparator", { link = "VertSplit" })
    hl(0, "SignColumn", { fg = p.vbrNone, bg = p.vbrBg })
    hl(0, "StatusLine", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "StatusLineNC", { fg = p.vbrFgDim, bg = p.vbrBg })
    hl(0, "TabLine", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "TabLineSel", { fg = p.vbrNone, bg = p.vbrBgAlt })
    hl(0, "TabLineFill", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "WinBar", { fg = p.vbrFg, bg = p.vbrBg, bold = true })
    hl(0, "WinBarNc", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "QuickFixLine", { link = "CursorLine" })

    -- netrw
    hl(0, "netrwExe", { fg = p.vbrRed })
    hl(0, "netrwDir", { link = "Directory" })

    -- Diff
    hl(0, "DiffAdd", { bg = p.vbrNone, fg = p.vbrGreen })
    hl(0, "DiffChange", { bg = p.vbrNone, fg = p.vbrGreen })
    hl(0, "DiffDelete", { bg = p.vbrNone, fg = p.vbrRed })
    hl(0, "DiffText", { bg = p.vbrNone, fg = p.vbrNone })

    -- Git Conflict
    hl(0, "GitConflictCurrentLabel", { bg = p.vbrRed, fg = p.vbrWhite, bold = true })
    hl(0, "GitConflictCurrent", { fg = p.vbrNone, bg = p.vbrBgAlt })

    hl(0, "GitConflictIncomingLabel", { bg = p.vbrRed, fg = p.vbrWhite, bold = true })
    hl(0, "GitConflictIncoming", { fg = p.vbrNone, bg = p.vbrBgAlt })

    hl(0, "GitConflictAncestorLabel", { bg = p.vbrRed, fg = p.vbrWhite, bold = true })
    hl(0, "GitConflictAncestor", { fg = p.vbrNone, bg = p.vbrBgAlt })

    -- Git Signs
    hl(0, "GitSignsAdd", { link = "DiffAdd" })
    hl(0, "GitSignsChange", { link = "DiffChange" })
    hl(0, "GitSignsDelete", { link = "DiffDelete" })
    hl(0, "GitSignsNormal", { link = "DiffDelete" })

    -- Search
    hl(0, "Search", { fg = p.vbrSelectionFg, bg = isDark and p.vbrBlue or p.vbrSelectionBg })
    hl(0, "CurSearch", { fg = p.vbrSelectionFg, bg = isDark and p.vbrBlue or p.vbrSelectionBg, bold = true })
    hl(0, "IncSearch", { fg = p.vbrSelectionFg, bg = isDark and p.vbrBlue or p.vbrSelectionBg })

    -- UI Messages
    hl(0, "ModeMsg", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "MoreMsg", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "NonText", { fg = p.vbrFg, bg = p.vbrNone })

    -- Popup Menu
    hl(0, "Pmenu", { fg = p.vbrFg, bg = p.vbrBg })
    hl(0, "PmenuSel", { link = "CursorLine" })
    hl(0, "PmenuSbar", { fg = p.vbrNone, bg = p.vbrNone })
    hl(0, "PmenuThumb", { fg = p.vbrNone, bg = p.vbrNone })

    -- Visual and WildMenu
    hl(0, "Visual", { fg = p.vbrNone, bg = p.vbrBgAlt })
    hl(0, "VisualNOS", { link = "Visual" })

    -- Comments and Constants
    hl(0, "Comment", { fg = p.vbrPurple, bg = p.vbrNone, italic = true })
    hl(0, "Constant", { fg = p.vbrBlue })
    hl(0, "String", { fg = p.vbrGray, bg = p.vbrBg })
    hl(0, "Character", { fg = p.vbrGreen, bg = p.vbrBg })
    hl(0, "Boolean", { fg = p.vbrPink })
    hl(0, "Number", { fg = p.vbrPink })
    hl(0, "Float", { fg = p.vbrPink })

    -- Identifiers, Functions, Statements
    hl(0, "Identifier", { fg = p.vbrNone })
    hl(0, "Function", { fg = p.vbrYellow, bg = p.vbrBg, bold = false })
    hl(0, "Statement", { fg = p.vbrRed })
    hl(0, "Conditional", { link = "Statement" })
    hl(0, "Repeat", { link = "Statement" })
    hl(0, "Label", { fg = p.vbrRed })
    hl(0, "Operator", { fg = p.vbrNone })
    hl(0, "Keyword", { fg = p.vbrRed, bg = p.vbrBg, bold = true })
    hl(0, "Exception", { fg = p.vbrRed })
    hl(0, "Include", { fg = p.vbrBlue })
    hl(0, "Define", { fg = p.vbrGreen })
    hl(0, "Macro", { fg = p.vbrGreen })

    -- Types and Storage
    hl(0, "Type", { fg = p.vbrCyan })
    hl(0, "StorageClass", { fg = p.vbrFg })
    hl(0, "Structure", { fg = p.vbrCyan })
    hl(0, "Typedef", { fg = p.vbrFg })

    -- Special
    hl(0, "Special", { fg = p.vbrFg })
    hl(0, "SpecialChar", { fg = p.vbrRed, bold = true })
    hl(0, "Tag", { fg = p.vbrCyan })
    hl(0, "Delimiter", { fg = p.vbrFgDim })
    hl(0, "SpecialComment", { link = "Comment" })

    -- Diagnostics
    hl(0, "Error", { fg = p.vbrError, bg = p.vbrBg, bold = true })
    hl(0, "ErrorMsg", { link = "Error" })
    hl(0, "WarningMsg", { fg = p.vbrWarning, bg = p.vbrBg, bold = true })
    hl(0, "Todo", { fg = p.vbrInfo, bg = p.vbrBg, bold = true, underline = true })

    hl(0, "DiagnosticError", { fg = p.vbrError, bg = p.vbrNone })
    hl(0, "DiagnosticWarn", { fg = p.vbrWarning, bg = p.vbrNone })
    hl(0, "DiagnosticInfo", { fg = p.vbrInfo, bg = p.vbrNone })
    hl(0, "DiagnosticHint", { fg = p.vbrHint, bg = p.vbrNone })
    hl(0, "DiagnosticSignError", { link = "DiagnosticError" })
    hl(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
    hl(0, "DiagnosticSignInfo", { link = "DiagnosticInfo" })
    hl(0, "DiagnosticSignHint", { link = "DiagnosticHint" })
    hl(0, "DiagnosticVirtualLinesError", { link = "DiagnosticError" })
    hl(0, "DiagnosticUnderlineError", { bg = p.vbrNone, fg = p.vbrNone })
    hl(0, "DiagnosticUnderlineWarn", { bg = p.vbrNone, fg = p.vbrNone })
    hl(0, "DiagnosticUnderlineInfo", { bg = p.vbrNone, fg = p.vbrNone })
    hl(0, "DiagnosticUnderlineHint", { bg = p.vbrNone, fg = p.vbrNone })

    -- Underline & Spell
    hl(0, "Underlined", { fg = p.vbrNone, bg = p.vbrNone, underline = true })
    hl(0, "Ignore", { fg = p.vbrFg, bg = p.vbrNone })

    -- Whitespace & Floats
    hl(0, "Whitespace", { fg = p.vbrRed })
    hl(0, "NormalFloat", { fg = p.vbrFg, bg = p.vbrBgAlt })

    -- Treesitter
    hl(0, "@error", { link = "Error" })
    hl(0, "@punctuation", { fg = p.vbrFgDim })
    hl(0, "@comment", { link = "Comment" })
    hl(0, "@constant", { link = "Constant" })
    hl(0, "@string", { link = "String" })
    hl(0, "@character", { link = "String" })
    hl(0, "@boolean", { link = "Boolean" })
    hl(0, "@number", { link = "Number" })
    hl(0, "@function", { link = "Function" })
    hl(0, "@keyword", { link = "Keyword" })
    hl(0, "@type", { link = "Type" })
    hl(0, "@variable", { link = "Identifier" })
    hl(0, "@operator", { link = "Operator" })
    hl(0, "@attribute", { link = "Identifier" })
    hl(0, "@property", { link = "Identifier" })
end

theme.link_highlight = function()
    -- Legacy groups for official git.vim and diff.vim syntax
    hl(0, "diffAdded", { link = "DiffAdd" })
    hl(0, "diffChanged", { link = "DiffChange" })
    hl(0, "diffRemoved", { link = "DiffDelete" })

    -- Legacy groups for treesitter
    hl(0, "@parameter", { link = "@variable.parameter" })
    hl(0, "@field", { link = "@variable.member" })
    hl(0, "@string.regex", { link = "@string.regexp" })
    hl(0, "@regexp", { link = "@string.regexp" })
    hl(0, "@float", { link = "@number.float" })
    hl(0, "@namespace", { link = "@module" })
    hl(0, "@method", { link = "@function.method" })
    hl(0, "@field", { link = "@variable.member" })
    hl(0, "@conditional", { link = "@keyword.conditional" })
    hl(0, "@repeat", { link = "@keyword.repeat" })
    hl(0, "@exception", { link = "@keyword.exception" })
    hl(0, "@storageclass", { link = "@keyword.storage" })
    hl(0, "@include", { link = "@keyword.import" })
    hl(0, "@text.strong", { link = "@markup.strong" })
    hl(0, "@text.underline", { link = "@markup.underline" })
    hl(0, "@text.emphasis", { link = "@markup.italic" })
    hl(0, "@text.strike", { link = "@markup.strikethrough" })
    hl(0, "@text.title", { link = "@markup.heading" })
    hl(0, "@text.uri", { link = "@markup.link.url" })
    hl(0, "@text.literal", { link = "@markup.raw" })
    hl(0, "@text.note", { link = "@comment.note" })
    hl(0, "@text.warning", { link = "@comment.warning" })
    hl(0, "@text.danger", { link = "@comment.error" })
    hl(0, "@text.diff.add", { link = "@diff.plus" })
    hl(0, "@text.diff.delete", { link = "@diff.minus" })

    -- Nvim compe
    hl(0, "CompeDocumentation", { link = "Pmenu" })
    hl(0, "CompeDocumentationBorder", { link = "Pmenu" })
    hl(0, "CmpItemKind", { link = "Pmenu" })
    hl(0, "CmpItemKindClass", { link = "CmpItemKindConstructor" })
    hl(0, "CmpItemKindModule", { link = "CmpItemKindKeyword" })
    hl(0, "CmpItemKindOperator", { link = "@operator" })
    hl(0, "CmpItemKindReference", { link = "@variable.parameter.reference" })
    hl(0, "CmpItemKindValue", { link = "@variable.member" })
    hl(0, "CmpItemKindField", { link = "@variable.member" })
    hl(0, "CmpItemKindEnum", { link = "@variable.member" })
    hl(0, "CmpItemKindSnippet", { link = "@text" })
    hl(0, "CmpItemKindColor", { link = "cssColor" })
    hl(0, "CmpItemKindFile", { link = "@text.uri" })
    hl(0, "CmpItemKindFolder", { link = "@text.uri" })
    hl(0, "CmpItemKindEvent", { link = "@constant" })
    hl(0, "CmpItemKindEnumMember", { link = "@variable.member" })
    hl(0, "CmpItemKindConstant", { link = "@constant" })
    hl(0, "CmpItemKindStruct", { link = "@structure" })
    hl(0, "CmpItemKindTypeParameter", { link = "@variable.parameter" })
end

return theme
