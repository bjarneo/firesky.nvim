local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Blink.cmp completion menu
	hl("BlinkCmpMenu", { fg = colors.fg, bg = colors.bg_alt })
	hl("BlinkCmpMenuBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("BlinkCmpMenuSelection", { fg = colors.fg, bg = colors.bg_highlight })
	
	-- Blink.cmp scrollbar
	hl("BlinkCmpScrollBarThumb", { bg = colors.border })
	hl("BlinkCmpScrollBarGutter", { bg = colors.bg_alt })
	
	-- Blink.cmp documentation
	hl("BlinkCmpDoc", { fg = colors.fg, bg = colors.bg_alt })
	hl("BlinkCmpDocBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("BlinkCmpDocCursorLine", { bg = colors.bg_highlight })
	
	-- Blink.cmp signature help
	hl("BlinkCmpSignatureHelp", { fg = colors.fg, bg = colors.bg_alt })
	hl("BlinkCmpSignatureHelpBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("BlinkCmpSignatureHelpActiveParameter", { fg = colors.cursor, bg = colors.bg_highlight })
	
	-- Blink.cmp item kinds
	hl("BlinkCmpKindText", { fg = colors.string })
	hl("BlinkCmpKindMethod", { fg = colors.func })
	hl("BlinkCmpKindFunction", { fg = colors.func })
	hl("BlinkCmpKindConstructor", { fg = colors.func })
	hl("BlinkCmpKindField", { fg = colors.property })
	hl("BlinkCmpKindVariable", { fg = colors.variable })
	hl("BlinkCmpKindClass", { fg = colors.type })
	hl("BlinkCmpKindInterface", { fg = colors.type })
	hl("BlinkCmpKindModule", { fg = colors.keyword })
	hl("BlinkCmpKindProperty", { fg = colors.property })
	hl("BlinkCmpKindUnit", { fg = colors.number })
	hl("BlinkCmpKindValue", { fg = colors.constant })
	hl("BlinkCmpKindEnum", { fg = colors.type })
	hl("BlinkCmpKindKeyword", { fg = colors.keyword })
	hl("BlinkCmpKindSnippet", { fg = colors.string_escape })
	hl("BlinkCmpKindColor", { fg = colors.operator })
	hl("BlinkCmpKindFile", { fg = colors.info })
	hl("BlinkCmpKindReference", { fg = colors.hint })
	hl("BlinkCmpKindFolder", { fg = colors.info })
	hl("BlinkCmpKindEnumMember", { fg = colors.constant })
	hl("BlinkCmpKindConstant", { fg = colors.constant })
	hl("BlinkCmpKindStruct", { fg = colors.type })
	hl("BlinkCmpKindEvent", { fg = colors.warning })
	hl("BlinkCmpKindOperator", { fg = colors.operator })
	hl("BlinkCmpKindTypeParameter", { fg = colors.type })
	
	-- Blink.cmp source indicators
	hl("BlinkCmpSource", { fg = colors.comment, italic = true })
	hl("BlinkCmpSourceBuffer", { fg = colors.info })
	hl("BlinkCmpSourcePath", { fg = colors.hint })
	hl("BlinkCmpSourceLsp", { fg = colors.func })
	hl("BlinkCmpSourceSnippets", { fg = colors.string_escape })
	hl("BlinkCmpSourceLuasnip", { fg = colors.string_escape })
	
	-- Blink.cmp ghost text
	hl("BlinkCmpGhostText", { fg = colors.comment, italic = true })
	
	-- Blink.cmp highlights for matched characters
	hl("BlinkCmpLabelMatch", { fg = colors.cursor, bold = true })
	hl("BlinkCmpLabelDetail", { fg = colors.comment })
	hl("BlinkCmpLabelDescription", { fg = colors.comment })
	
	-- Blink.cmp deprecated items
	hl("BlinkCmpItemDeprecated", { fg = colors.comment, strikethrough = true })
	
	-- Blink.cmp item abbreviations
	hl("BlinkCmpItemAbbr", { fg = colors.fg })
	hl("BlinkCmpItemAbbrDeprecated", { fg = colors.comment, strikethrough = true })
	hl("BlinkCmpItemAbbrMatch", { fg = colors.cursor, bold = true })
	hl("BlinkCmpItemAbbrMatchFuzzy", { fg = colors.cursor })
end

return M