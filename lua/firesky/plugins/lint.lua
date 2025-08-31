local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- nvim-lint linter status
	hl("LintStatus", { fg = colors.info, italic = true })
	hl("LintStatusRunning", { fg = colors.func, italic = true })
	hl("LintStatusDone", { fg = colors.git_add })
	hl("LintStatusError", { fg = colors.error })
	hl("LintStatusWarning", { fg = colors.warning })
	
	-- nvim-lint linter names
	hl("LintLinterName", { fg = colors.type, bold = true })
	hl("LintLinterAvailable", { fg = colors.git_add })
	hl("LintLinterUnavailable", { fg = colors.error })
	hl("LintLinterDisabled", { fg = colors.comment })
	
	-- nvim-lint file type indicators
	hl("LintFiletype", { fg = colors.func })
	hl("LintFiletypeSupported", { fg = colors.git_add })
	hl("LintFiletypeUnsupported", { fg = colors.warning })
	
	-- nvim-lint diagnostic severities
	hl("LintDiagnosticError", { fg = colors.error, bold = true })
	hl("LintDiagnosticWarn", { fg = colors.warning, bold = true })
	hl("LintDiagnosticInfo", { fg = colors.info })
	hl("LintDiagnosticHint", { fg = colors.hint })
	
	-- nvim-lint diagnostic signs
	hl("LintSignError", { fg = colors.error, bg = colors.bg })
	hl("LintSignWarn", { fg = colors.warning, bg = colors.bg })
	hl("LintSignInfo", { fg = colors.info, bg = colors.bg })
	hl("LintSignHint", { fg = colors.hint, bg = colors.bg })
	
	-- nvim-lint virtual text
	hl("LintVirtualTextError", { fg = colors.error, italic = true })
	hl("LintVirtualTextWarn", { fg = colors.warning, italic = true })
	hl("LintVirtualTextInfo", { fg = colors.info, italic = true })
	hl("LintVirtualTextHint", { fg = colors.hint, italic = true })
	
	-- nvim-lint underlines
	hl("LintUnderlineError", { underline = true, sp = colors.error })
	hl("LintUnderlineWarn", { underline = true, sp = colors.warning })
	hl("LintUnderlineInfo", { underline = true, sp = colors.info })
	hl("LintUnderlineHint", { underline = true, sp = colors.hint })
	
	-- nvim-lint floating window
	hl("LintFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("LintFloatTitle", { fg = colors.keyword, bg = colors.bg_alt, bold = true })
	hl("LintFloat", { fg = colors.fg, bg = colors.bg_alt })
	
	-- nvim-lint progress indicators
	hl("LintProgress", { fg = colors.hint, italic = true })
	hl("LintProgressSpinner", { fg = colors.func })
	hl("LintProgressDone", { fg = colors.git_add })
	
	-- nvim-lint configuration
	hl("LintConfig", { fg = colors.keyword })
	hl("LintConfigError", { fg = colors.error, bold = true })
	hl("LintConfigWarning", { fg = colors.warning })
	
	-- nvim-lint command output
	hl("LintCommand", { fg = colors.operator })
	hl("LintCommandArgs", { fg = colors.string })
	hl("LintCommandOutput", { fg = colors.comment })
	hl("LintCommandError", { fg = colors.error })
	
	-- nvim-lint auto-lint indicators
	hl("LintAutoLint", { fg = colors.hint, italic = true })
	hl("LintAutoLintEnabled", { fg = colors.git_add })
	hl("LintAutoLintDisabled", { fg = colors.comment })
	
	-- nvim-lint timeout indicators
	hl("LintTimeout", { fg = colors.warning, italic = true })
	hl("LintTimeoutError", { fg = colors.error })
	
	-- nvim-lint namespace highlighting
	hl("LintNamespace", { fg = colors.type })
	hl("LintNamespaceActive", { fg = colors.func, bold = true })
	hl("LintNamespaceInactive", { fg = colors.comment })
	
	-- nvim-lint buffer state
	hl("LintBufferClean", { fg = colors.git_add })
	hl("LintBufferDirty", { fg = colors.warning })
	hl("LintBufferError", { fg = colors.error })
	
	-- nvim-lint notification highlights
	hl("LintNotification", { fg = colors.fg, bg = colors.bg_alt })
	hl("LintNotificationInfo", { fg = colors.info })
	hl("LintNotificationWarn", { fg = colors.warning })
	hl("LintNotificationError", { fg = colors.error })
	hl("LintNotificationSuccess", { fg = colors.git_add })
end

return M