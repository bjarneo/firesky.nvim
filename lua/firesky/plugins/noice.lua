local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Noice.nvim main UI elements
	hl("NoiceText", { fg = colors.fg })
	hl("NoiceNormal", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceBorder", { fg = colors.border, bg = colors.bg_alt })
	
	-- Noice.nvim cmdline
	hl("NoiceCmdline", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceCmdlineIcon", { fg = colors.info })
	hl("NoiceCmdlineIconCmdline", { fg = colors.operator })
	hl("NoiceCmdlineIconFilter", { fg = colors.warning })
	hl("NoiceCmdlineIconHelp", { fg = colors.hint })
	hl("NoiceCmdlineIconIncRename", { fg = colors.func })
	hl("NoiceCmdlineIconInput", { fg = colors.string })
	hl("NoiceCmdlineIconLua", { fg = colors.type })
	hl("NoiceCmdlineIconSearch", { fg = colors.cursor })
	hl("NoiceCmdlinePopup", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderCmdline", { fg = colors.operator, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderFilter", { fg = colors.warning, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderHelp", { fg = colors.hint, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderIncRename", { fg = colors.func, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderInput", { fg = colors.string, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderLua", { fg = colors.type, bg = colors.bg_alt })
	hl("NoiceCmdlinePopupBorderSearch", { fg = colors.cursor, bg = colors.bg_alt })
	hl("NoiceCmdlinePrompt", { fg = colors.keyword, bold = true })
	
	-- Noice.nvim completion
	hl("NoiceCompletionItemKindDefault", { fg = colors.fg })
	hl("NoiceCompletionItemKindKeyword", { fg = colors.keyword })
	hl("NoiceCompletionItemKindVariable", { fg = colors.variable })
	hl("NoiceCompletionItemKindConstant", { fg = colors.constant })
	hl("NoiceCompletionItemKindReference", { fg = colors.hint })
	hl("NoiceCompletionItemKindValue", { fg = colors.number })
	hl("NoiceCompletionItemKindFunction", { fg = colors.func })
	hl("NoiceCompletionItemKindMethod", { fg = colors.func })
	hl("NoiceCompletionItemKindConstructor", { fg = colors.func })
	hl("NoiceCompletionItemKindClass", { fg = colors.type })
	hl("NoiceCompletionItemKindInterface", { fg = colors.type })
	hl("NoiceCompletionItemKindStruct", { fg = colors.type })
	hl("NoiceCompletionItemKindEvent", { fg = colors.warning })
	hl("NoiceCompletionItemKindEnum", { fg = colors.type })
	hl("NoiceCompletionItemKindUnit", { fg = colors.number })
	hl("NoiceCompletionItemKindModule", { fg = colors.keyword })
	
	-- Noice.nvim confirm dialog
	hl("NoiceConfirm", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceConfirmBorder", { fg = colors.border, bg = colors.bg_alt })
	
	-- Noice.nvim cursor
	hl("NoiceCursor", { fg = colors.bg, bg = colors.cursor })
	
	-- Noice.nvim format highlights
	hl("NoiceFormatConfirm", { fg = colors.warning })
	hl("NoiceFormatConfirmDefault", { fg = colors.cursor, bold = true })
	hl("NoiceFormatDate", { fg = colors.comment })
	hl("NoiceFormatEvent", { fg = colors.info })
	hl("NoiceFormatKind", { fg = colors.type })
	hl("NoiceFormatLevelDebug", { fg = colors.hint })
	hl("NoiceFormatLevelError", { fg = colors.error })
	hl("NoiceFormatLevelInfo", { fg = colors.info })
	hl("NoiceFormatLevelOff", { fg = colors.comment })
	hl("NoiceFormatLevelTrace", { fg = colors.comment })
	hl("NoiceFormatLevelWarn", { fg = colors.warning })
	hl("NoiceFormatProgressDone", { fg = colors.git_add, bg = colors.bg_alt })
	hl("NoiceFormatProgressTodo", { fg = colors.comment, bg = colors.bg_alt })
	hl("NoiceFormatTitle", { fg = colors.keyword, bold = true })
	
	-- Noice.nvim LSP-related
	hl("NoiceLspProgressClient", { fg = colors.type })
	hl("NoiceLspProgressSpinner", { fg = colors.func })
	hl("NoiceLspProgressTitle", { fg = colors.keyword, bold = true })
	
	-- Noice.nvim mini view
	hl("NoiceMini", { fg = colors.fg, bg = colors.bg_alt })
	
	-- Noice.nvim popupmenu
	hl("NoicePopupmenu", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoicePopupmenuBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("NoicePopupmenuMatch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("NoicePopupmenuSelected", { fg = colors.fg, bg = colors.bg_highlight })
	
	-- Noice.nvim scrollbar
	hl("NoiceScrollbar", { bg = colors.bg_alt })
	hl("NoiceScrollbarThumb", { bg = colors.border })
	
	-- Noice.nvim split view
	hl("NoiceSplit", { fg = colors.fg, bg = colors.bg })
	hl("NoiceSplitBorder", { fg = colors.border, bg = colors.bg })
	
	-- Noice.nvim virtualtext
	hl("NoiceVirtualText", { fg = colors.comment, italic = true })
	
	-- Noice.nvim search
	hl("NoiceSearch", { fg = colors.bg, bg = colors.cursor })
	hl("NoiceSearchMatch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	
	-- Noice.nvim messages and notifications
	hl("NoiceMessage", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceNotification", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceNotificationBorder", { fg = colors.border, bg = colors.bg_alt })
	
	-- Noice.nvim history
	hl("NoiceHistory", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceHistoryBorder", { fg = colors.border, bg = colors.bg_alt })
	
	-- Noice.nvim floating windows
	hl("NoiceFloat", { fg = colors.fg, bg = colors.bg_alt })
	hl("NoiceFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("NoiceFloatTitle", { fg = colors.keyword, bg = colors.bg_alt, bold = true })
	
	-- Noice.nvim routing and filtering
	hl("NoiceRouteTitle", { fg = colors.type, bold = true })
	hl("NoiceRouteView", { fg = colors.func })
	hl("NoiceRouteKind", { fg = colors.keyword })
	hl("NoiceRouteFilter", { fg = colors.operator })
	
	-- Noice.nvim error and warning states
	hl("NoiceError", { fg = colors.error, bold = true })
	hl("NoiceWarning", { fg = colors.warning, bold = true })
	hl("NoiceInfo", { fg = colors.info })
	hl("NoiceDebug", { fg = colors.hint })
	
	-- Noice.nvim special UI elements
	hl("NoiceTitle", { fg = colors.keyword, bold = true })
	hl("NoiceIcon", { fg = colors.info })
	hl("NoiceClose", { fg = colors.error, bold = true })
	hl("NoiceHelp", { fg = colors.hint, italic = true })
	hl("NoiceStatus", { fg = colors.comment, italic = true })
end

return M