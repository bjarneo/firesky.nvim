local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Trouble.nvim main window
	hl("TroubleNormal", { fg = colors.fg, bg = colors.bg })
	hl("TroubleNormalNC", { fg = colors.fg, bg = colors.bg })
	hl("TroubleText", { fg = colors.fg })
	
	-- Trouble.nvim count and indicators
	hl("TroubleCount", { fg = colors.number, bold = true })
	hl("TroubleError", { fg = colors.error, bold = true })
	hl("TroubleWarning", { fg = colors.warning, bold = true })
	hl("TroubleInformation", { fg = colors.info })
	hl("TroubleHint", { fg = colors.hint })
	
	-- Trouble.nvim sign column
	hl("TroubleSignError", { fg = colors.error, bg = colors.bg })
	hl("TroubleSignWarning", { fg = colors.warning, bg = colors.bg })
	hl("TroubleSignInformation", { fg = colors.info, bg = colors.bg })
	hl("TroubleSignHint", { fg = colors.hint, bg = colors.bg })
	hl("TroubleSignOther", { fg = colors.comment, bg = colors.bg })
	
	-- Trouble.nvim text highlights
	hl("TroubleTextError", { fg = colors.error })
	hl("TroubleTextWarning", { fg = colors.warning })
	hl("TroubleTextInformation", { fg = colors.info })
	hl("TroubleTextHint", { fg = colors.hint })
	
	-- Trouble.nvim file information
	hl("TroubleFile", { fg = colors.info, bold = true })
	hl("TroubleDirectory", { fg = colors.func, bold = true })
	hl("TroubleLocation", { fg = colors.comment })
	hl("TroublePos", { fg = colors.number })
	
	-- Trouble.nvim source information
	hl("TroubleSource", { fg = colors.comment, italic = true })
	hl("TroubleCode", { fg = colors.constant })
	hl("TroublePreview", { bg = colors.bg_highlight })
	
	-- Trouble.nvim fold indicators
	hl("TroubleFoldIcon", { fg = colors.border })
	hl("TroubleIndent", { fg = colors.comment })
	
	-- Trouble.nvim selection and cursor
	hl("TroubleCursor", { bg = colors.bg_highlight })
	hl("TroubleMatch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	
	-- Trouble.nvim LSP-related
	hl("TroubleLspError", { fg = colors.error })
	hl("TroubleLspWarning", { fg = colors.warning })
	hl("TroubleLspInformation", { fg = colors.info })
	hl("TroubleLspHint", { fg = colors.hint })
	
	-- Trouble.nvim quickfix integration
	hl("TroubleQfLineNr", { fg = colors.number })
	hl("TroubleQfFileName", { fg = colors.string })
	hl("TroubleQfText", { fg = colors.fg })
	
	-- Trouble.nvim location list
	hl("TroubleLocList", { fg = colors.fg })
	hl("TroubleLocListLineNr", { fg = colors.number })
	hl("TroubleLocListFileName", { fg = colors.string })
	
	-- Trouble.nvim todo-comments integration
	hl("TroubleTodo", { fg = colors.info, bold = true })
	hl("TroubleTodoKeyword", { fg = colors.keyword, bold = true })
	hl("TroubleTodoNote", { fg = colors.hint, bold = true })
	hl("TroubleTodoFix", { fg = colors.warning, bold = true })
	hl("TroubleTodoFixme", { fg = colors.warning, bold = true })
	hl("TroubleTodoHack", { fg = colors.error, bold = true })
	hl("TroubleTodoWarn", { fg = colors.warning, bold = true })
	hl("TroubleTodoPerf", { fg = colors.type, bold = true })
	hl("TroubleTodoTest", { fg = colors.func, bold = true })
	
	-- Trouble.nvim diagnostics categories
	hl("TroubleDiagnosticsError", { fg = colors.error })
	hl("TroubleDiagnosticsWarning", { fg = colors.warning })
	hl("TroubleDiagnosticsInformation", { fg = colors.info })
	hl("TroubleDiagnosticsHint", { fg = colors.hint })
	
	-- Trouble.nvim symbols and references
	hl("TroubleSymbol", { fg = colors.type })
	hl("TroubleSymbolKind", { fg = colors.keyword })
	hl("TroubleReference", { fg = colors.property })
	hl("TroubleDefinition", { fg = colors.func, bold = true })
	hl("TroubleDeclaration", { fg = colors.type, bold = true })
	hl("TroubleImplementation", { fg = colors.operator })
	hl("TroubleTypeDefinition", { fg = colors.type })
	
	-- Trouble.nvim search results
	hl("TroubleSearch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("TroubleSearchMatch", { fg = colors.bg, bg = colors.cursor })
	
	-- Trouble.nvim git integration
	hl("TroubleGitAdd", { fg = colors.git_add })
	hl("TroubleGitChange", { fg = colors.git_change })
	hl("TroubleGitDelete", { fg = colors.git_delete })
	hl("TroubleGitIgnore", { fg = colors.comment })
	
	-- Trouble.nvim help and instructions
	hl("TroubleHelp", { fg = colors.comment, italic = true })
	hl("TroubleHelpHeader", { fg = colors.keyword, bold = true })
	hl("TroubleInstruction", { fg = colors.info })
	hl("TroubleKey", { fg = colors.operator, bold = true })
	
	-- Trouble.nvim borders and separators
	hl("TroubleBorder", { fg = colors.border })
	hl("TroubleVertSplit", { fg = colors.border })
	hl("TroubleSeparator", { fg = colors.border })
	
	-- Trouble.nvim status line
	hl("TroubleStatusLine", { fg = colors.fg, bg = colors.bg })
	hl("TroubleStatusLineNC", { fg = colors.comment, bg = colors.bg })
	
	-- Trouble.nvim floating window
	hl("TroubleFloat", { fg = colors.fg, bg = colors.bg_alt })
	hl("TroubleFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("TroubleFloatTitle", { fg = colors.keyword, bg = colors.bg_alt, bold = true })
	
	-- Trouble.nvim progress and loading
	hl("TroubleProgress", { fg = colors.hint, italic = true })
	hl("TroubleLoading", { fg = colors.func, italic = true })
	hl("TroubleEmpty", { fg = colors.comment, italic = true })
	
	-- Trouble.nvim filter and mode indicators
	hl("TroubleFilter", { fg = colors.operator, italic = true })
	hl("TroubleMode", { fg = colors.type, bold = true })
	hl("TroubleModeActive", { fg = colors.cursor, bold = true })
	hl("TroubleModeInactive", { fg = colors.comment })
	
	-- Trouble.nvim end of buffer
	hl("TroubleEndOfBuffer", { fg = colors.bg })
end

return M