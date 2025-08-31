local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Fidget.nvim progress window
	hl("FidgetTitle", { fg = colors.keyword, bold = true })
	hl("FidgetTask", { fg = colors.fg })
	
	-- Fidget.nvim progress indicators
	hl("FidgetProgress", { fg = colors.func, italic = true })
	hl("FidgetProgressDone", { fg = colors.git_add })
	hl("FidgetProgressError", { fg = colors.error })
	hl("FidgetProgressCancelled", { fg = colors.warning })
	
	-- Fidget.nvim spinner
	hl("FidgetSpinner", { fg = colors.hint })
	hl("FidgetSpinnerDots", { fg = colors.func })
	hl("FidgetSpinnerArcs", { fg = colors.operator })
	hl("FidgetSpinnerBounce", { fg = colors.info })
	hl("FidgetSpinnerLine", { fg = colors.cursor })
	hl("FidgetSpinnerStar", { fg = colors.warning })
	hl("FidgetSpinnerFlip", { fg = colors.type })
	hl("FidgetSpinnerHamburger", { fg = colors.property })
	hl("FidgetSpinnerGrowVertical", { fg = colors.string })
	hl("FidgetSpinnerGrowHorizontal", { fg = colors.constant })
	hl("FidgetSpinnerNoise", { fg = colors.comment })
	hl("FidgetSpinnerDotting", { fg = colors.func })
	
	-- Fidget.nvim notification window
	hl("FidgetNotification", { fg = colors.fg, bg = colors.bg_alt })
	hl("FidgetNotificationTitle", { fg = colors.keyword, bold = true })
	hl("FidgetNotificationIcon", { fg = colors.info })
	hl("FidgetNotificationBorder", { fg = colors.border })
	
	-- Fidget.nvim LSP messages
	hl("FidgetLspMessage", { fg = colors.fg })
	hl("FidgetLspTitle", { fg = colors.func, bold = true })
	hl("FidgetLspProgress", { fg = colors.info, italic = true })
	hl("FidgetLspProgressTitle", { fg = colors.keyword })
	hl("FidgetLspProgressMessage", { fg = colors.comment })
	hl("FidgetLspProgressPercentage", { fg = colors.number })
	hl("FidgetLspClient", { fg = colors.type })
	
	-- Fidget.nvim server status
	hl("FidgetLspServerReady", { fg = colors.git_add })
	hl("FidgetLspServerPending", { fg = colors.warning })
	hl("FidgetLspServerError", { fg = colors.error })
	hl("FidgetLspServerStopped", { fg = colors.comment })
	
	-- Fidget.nvim history
	hl("FidgetHistory", { fg = colors.comment, italic = true })
	hl("FidgetHistoryTitle", { fg = colors.keyword, bold = true })
	hl("FidgetHistoryDone", { fg = colors.git_add })
	hl("FidgetHistoryError", { fg = colors.error })
	hl("FidgetHistoryCancelled", { fg = colors.warning })
	
	-- Fidget.nvim grouping
	hl("FidgetGroup", { fg = colors.type, bold = true })
	hl("FidgetGroupIcon", { fg = colors.operator })
	hl("FidgetGroupSeparator", { fg = colors.border })
	
	-- Fidget.nvim time stamps
	hl("FidgetTime", { fg = colors.comment })
	hl("FidgetTimeElapsed", { fg = colors.number })
	hl("FidgetTimeRemaining", { fg = colors.hint })
	
	-- Fidget.nvim debug information
	hl("FidgetDebug", { fg = colors.comment, italic = true })
	hl("FidgetDebugInfo", { fg = colors.info })
	hl("FidgetDebugWarn", { fg = colors.warning })
	hl("FidgetDebugError", { fg = colors.error })
	
	-- Fidget.nvim window styling
	hl("FidgetNormal", { fg = colors.fg, bg = colors.bg_alt })
	hl("FidgetNormalNC", { fg = colors.comment, bg = colors.bg_alt })
	hl("FidgetFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("FidgetFloatTitle", { fg = colors.keyword, bg = colors.bg_alt, bold = true })
end

return M