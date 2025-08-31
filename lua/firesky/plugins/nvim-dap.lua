local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- nvim-dap breakpoints
	hl("DapBreakpoint", { fg = colors.error, bold = true })
	hl("DapBreakpointCondition", { fg = colors.warning, bold = true })
	hl("DapBreakpointRejected", { fg = colors.comment, bold = true })
	hl("DapLogPoint", { fg = colors.info, bold = true })
	hl("DapStopped", { fg = colors.cursor, bold = true })
	
	-- nvim-dap signs in sign column
	hl("DapBreakpointSign", { fg = colors.error, bg = colors.bg })
	hl("DapBreakpointConditionSign", { fg = colors.warning, bg = colors.bg })
	hl("DapBreakpointRejectedSign", { fg = colors.comment, bg = colors.bg })
	hl("DapLogPointSign", { fg = colors.info, bg = colors.bg })
	hl("DapStoppedSign", { fg = colors.cursor, bg = colors.bg })
	
	-- nvim-dap line highlights
	hl("DapBreakpointLine", { bg = colors.bg_highlight })
	hl("DapBreakpointConditionLine", { bg = colors.bg_highlight })
	hl("DapBreakpointRejectedLine", { bg = colors.bg_alt })
	hl("DapLogPointLine", { bg = colors.bg_highlight })
	hl("DapStoppedLine", { bg = colors.bg_highlight })
	
	-- nvim-dap-ui main window
	hl("DapUIVariable", { fg = colors.variable })
	hl("DapUIScope", { fg = colors.type, bold = true })
	hl("DapUIType", { fg = colors.type })
	hl("DapUIValue", { fg = colors.constant })
	hl("DapUIModifiedValue", { fg = colors.git_change, bold = true })
	hl("DapUIDecoration", { fg = colors.border })
	hl("DapUIThread", { fg = colors.func, bold = true })
	hl("DapUIStoppedThread", { fg = colors.cursor, bold = true })
	hl("DapUIFrameName", { fg = colors.keyword, bold = true })
	hl("DapUISource", { fg = colors.info })
	hl("DapUILineNumber", { fg = colors.number })
	hl("DapUIFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("DapUIFloatNormal", { fg = colors.fg, bg = colors.bg_alt })
	hl("DapUIWatchesEmpty", { fg = colors.comment, italic = true })
	hl("DapUIWatchesValue", { fg = colors.constant })
	hl("DapUIWatchesError", { fg = colors.error })
	hl("DapUIBreakpointsPath", { fg = colors.info })
	hl("DapUIBreakpointsInfo", { fg = colors.comment })
	hl("DapUIBreakpointsCurrentLine", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("DapUIBreakpointsLine", { fg = colors.fg })
	hl("DapUIBreakpointsDisabledLine", { fg = colors.comment })
	
	-- nvim-dap-ui controls and buttons
	hl("DapUIPlayPause", { fg = colors.git_add, bold = true })
	hl("DapUIRestart", { fg = colors.warning, bold = true })
	hl("DapUIStop", { fg = colors.error, bold = true })
	hl("DapUIUnavailable", { fg = colors.comment })
	hl("DapUIStepOver", { fg = colors.func })
	hl("DapUIStepInto", { fg = colors.func })
	hl("DapUIStepBack", { fg = colors.func })
	hl("DapUIStepOut", { fg = colors.func })
	
	-- nvim-dap-ui normal highlight groups
	hl("DapUINormal", { fg = colors.fg, bg = colors.bg })
	hl("DapUINormalNC", { fg = colors.fg, bg = colors.bg })
	hl("DapUIEndOfBuffer", { fg = colors.bg })
	
	-- nvim-dap-virtual-text
	hl("DapVirtualText", { fg = colors.hint, italic = true })
	hl("DapVirtualTextError", { fg = colors.error, italic = true })
	hl("DapVirtualTextInfo", { fg = colors.info, italic = true })
	hl("DapVirtualTextWarning", { fg = colors.warning, italic = true })
	hl("DapVirtualTextChanged", { fg = colors.git_change, italic = true })
	
	-- nvim-dap status and messages
	hl("DapStatus", { fg = colors.info, italic = true })
	hl("DapStatusRunning", { fg = colors.git_add, italic = true })
	hl("DapStatusStopped", { fg = colors.cursor, italic = true })
	hl("DapStatusPaused", { fg = colors.warning, italic = true })
	hl("DapStatusError", { fg = colors.error, italic = true })
	hl("DapStatusDisconnected", { fg = colors.comment, italic = true })
	
	-- nvim-dap console and REPL
	hl("DapConsole", { fg = colors.fg, bg = colors.bg })
	hl("DapConsoleNC", { fg = colors.comment, bg = colors.bg })
	hl("DapReplPrompt", { fg = colors.keyword, bold = true })
	hl("DapReplInput", { fg = colors.string })
	hl("DapReplOutput", { fg = colors.fg })
	hl("DapReplError", { fg = colors.error })
	hl("DapReplWarning", { fg = colors.warning })
	hl("DapReplInfo", { fg = colors.info })
	
	-- nvim-dap expression evaluation
	hl("DapExpression", { fg = colors.property })
	hl("DapExpressionValue", { fg = colors.constant })
	hl("DapExpressionError", { fg = colors.error })
	hl("DapExpressionSuccess", { fg = colors.git_add })
	
	-- nvim-dap hover and preview
	hl("DapHover", { fg = colors.fg, bg = colors.bg_alt })
	hl("DapHoverBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("DapPreview", { fg = colors.fg, bg = colors.bg_alt })
	hl("DapPreviewBorder", { fg = colors.border, bg = colors.bg_alt })
	
	-- nvim-dap configuration
	hl("DapConfig", { fg = colors.keyword })
	hl("DapConfigError", { fg = colors.error, bold = true })
	hl("DapConfigWarning", { fg = colors.warning })
	hl("DapConfigInfo", { fg = colors.info })
	
	-- nvim-dap session management
	hl("DapSession", { fg = colors.type, bold = true })
	hl("DapSessionActive", { fg = colors.git_add, bold = true })
	hl("DapSessionInactive", { fg = colors.comment })
	hl("DapSessionError", { fg = colors.error, bold = true })
	
	-- nvim-dap adapter status
	hl("DapAdapter", { fg = colors.func })
	hl("DapAdapterConnected", { fg = colors.git_add })
	hl("DapAdapterDisconnected", { fg = colors.error })
	hl("DapAdapterPending", { fg = colors.warning, italic = true })
	
	-- nvim-dap stack trace
	hl("DapStackTrace", { fg = colors.fg })
	hl("DapStackTraceActive", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("DapStackTraceInactive", { fg = colors.comment })
	hl("DapStackTraceFrame", { fg = colors.info })
	hl("DapStackTraceFunction", { fg = colors.func, bold = true })
	hl("DapStackTraceFile", { fg = colors.string })
	hl("DapStackTraceLine", { fg = colors.number })
end

return M