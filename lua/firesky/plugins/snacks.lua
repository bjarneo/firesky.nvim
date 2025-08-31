local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Snacks.nvim general UI
	hl("SnacksNormal", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("SnacksTitle", { fg = colors.keyword, bold = true })
	hl("SnacksIcon", { fg = colors.info })
	
	-- Snacks.nvim notifications
	hl("SnacksNotification", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksNotificationBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("SnacksNotificationTitle", { fg = colors.keyword, bold = true })
	hl("SnacksNotificationIcon", { fg = colors.info })
	hl("SnacksNotificationBody", { fg = colors.fg })
	hl("SnacksNotificationFooter", { fg = colors.comment, italic = true })
	
	-- Snacks.nvim notification levels
	hl("SnacksNotificationInfo", { fg = colors.info })
	hl("SnacksNotificationWarn", { fg = colors.warning })
	hl("SnacksNotificationError", { fg = colors.error })
	hl("SnacksNotificationDebug", { fg = colors.hint })
	hl("SnacksNotificationTrace", { fg = colors.comment })
	
	-- Snacks.nvim dashboard/terminal
	hl("SnacksDashboard", { fg = colors.fg, bg = colors.bg })
	hl("SnacksDashboardHeader", { fg = colors.keyword, bold = true })
	hl("SnacksDashboardFooter", { fg = colors.comment, italic = true })
	hl("SnacksDashboardIcon", { fg = colors.info })
	hl("SnacksDashboardTitle", { fg = colors.type, bold = true })
	hl("SnacksDashboardDesc", { fg = colors.fg })
	hl("SnacksDashboardKey", { fg = colors.cursor, bold = true })
	hl("SnacksDashboardShortcut", { fg = colors.operator })
	
	-- Snacks.nvim terminal
	hl("SnacksTerminal", { fg = colors.fg, bg = colors.bg })
	hl("SnacksTerminalBorder", { fg = colors.border, bg = colors.bg })
	hl("SnacksTerminalTitle", { fg = colors.keyword, bold = true })
	hl("SnacksTerminalNormal", { fg = colors.fg, bg = colors.bg })
	hl("SnacksTerminalNC", { fg = colors.comment, bg = colors.bg })
	
	-- Snacks.nvim lazygit integration
	hl("SnacksLazygit", { fg = colors.fg, bg = colors.bg })
	hl("SnacksLazygitBorder", { fg = colors.border, bg = colors.bg })
	hl("SnacksLazygitTitle", { fg = colors.git_add, bold = true })
	
	-- Snacks.nvim progress indicators
	hl("SnacksProgress", { fg = colors.func, italic = true })
	hl("SnacksProgressDone", { fg = colors.git_add })
	hl("SnacksProgressPending", { fg = colors.warning, italic = true })
	hl("SnacksProgressError", { fg = colors.error })
	hl("SnacksProgressSpinner", { fg = colors.hint })
	
	-- Snacks.nvim input and prompts
	hl("SnacksInput", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksInputBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("SnacksInputTitle", { fg = colors.keyword, bold = true })
	hl("SnacksInputPrompt", { fg = colors.func, bold = true })
	hl("SnacksInputCursor", { fg = colors.bg, bg = colors.cursor })
	
	-- Snacks.nvim confirm dialogs
	hl("SnacksConfirm", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksConfirmBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("SnacksConfirmTitle", { fg = colors.warning, bold = true })
	hl("SnacksConfirmButton", { fg = colors.fg, bg = colors.bg_highlight })
	hl("SnacksConfirmButtonDefault", { fg = colors.bg, bg = colors.cursor, bold = true })
	hl("SnacksConfirmButtonCancel", { fg = colors.error, bg = colors.bg_highlight })
	
	-- Snacks.nvim picker/selector
	hl("SnacksPicker", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksPickerBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("SnacksPickerTitle", { fg = colors.keyword, bold = true })
	hl("SnacksPickerPrompt", { fg = colors.func, bold = true })
	hl("SnacksPickerMatch", { fg = colors.cursor, bold = true })
	hl("SnacksPickerSelection", { fg = colors.fg, bg = colors.bg_highlight })
	hl("SnacksPickerCounter", { fg = colors.number })
	
	-- Snacks.nvim scratch buffer
	hl("SnacksScratch", { fg = colors.fg, bg = colors.bg })
	hl("SnacksScratchBorder", { fg = colors.border, bg = colors.bg })
	hl("SnacksScratchTitle", { fg = colors.type, bold = true })
	hl("SnacksScratchKey", { fg = colors.operator, bold = true })
	hl("SnacksScratchDesc", { fg = colors.comment, italic = true })
	
	-- Snacks.nvim zen mode
	hl("SnacksZen", { fg = colors.fg, bg = colors.bg })
	hl("SnacksZenTitle", { fg = colors.keyword, bold = true })
	hl("SnacksZenIcon", { fg = colors.info })
	
	-- Snacks.nvim statusline integration
	hl("SnacksStatusline", { fg = colors.fg, bg = colors.bg })
	hl("SnacksStatuslineMode", { fg = colors.bg, bg = colors.func, bold = true })
	hl("SnacksStatuslineGit", { fg = colors.git_add })
	hl("SnacksStatuslineDiagnostics", { fg = colors.warning })
	hl("SnacksStatuslineProgress", { fg = colors.hint, italic = true })
	
	-- Snacks.nvim bufferline integration
	hl("SnacksBufferline", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksBufferlineActive", { fg = colors.fg, bg = colors.bg, bold = true })
	hl("SnacksBufferlineInactive", { fg = colors.comment, bg = colors.bg_alt })
	hl("SnacksBufferlineModified", { fg = colors.warning })
	hl("SnacksBufferlineClose", { fg = colors.error })
	hl("SnacksBufferlineSeparator", { fg = colors.border })
	
	-- Snacks.nvim scroll/indent indicators
	hl("SnacksScroll", { fg = colors.border })
	hl("SnacksScrollThumb", { bg = colors.border })
	hl("SnacksIndent", { fg = colors.comment })
	hl("SnacksIndentActive", { fg = colors.border })
	
	-- Snacks.nvim debug/log
	hl("SnacksDebug", { fg = colors.hint, italic = true })
	hl("SnacksLog", { fg = colors.comment, italic = true })
	hl("SnacksLogInfo", { fg = colors.info })
	hl("SnacksLogWarn", { fg = colors.warning })
	hl("SnacksLogError", { fg = colors.error }}
	
	-- Snacks.nvim toggle indicators
	hl("SnacksToggle", { fg = colors.operator })
	hl("SnacksToggleEnabled", { fg = colors.git_add, bold = true })
	hl("SnacksToggleDisabled", { fg = colors.comment })
	
	-- Snacks.nvim words highlighting
	hl("SnacksWords", { bg = colors.bg_highlight })
	hl("SnacksWordsCurrent", { bg = colors.bg_highlight, underline = true })
	
	-- Snacks.nvim rename
	hl("SnacksRename", { fg = colors.fg, bg = colors.bg_alt })
	hl("SnacksRenameBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("SnacksRenameTitle", { fg = colors.func, bold = true })
	hl("SnacksRenameInput", { fg = colors.string })
	hl("SnacksRenameCursor", { fg = colors.bg, bg = colors.cursor })
end

return M