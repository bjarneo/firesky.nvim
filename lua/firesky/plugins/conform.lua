local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Conform.nvim formatter indicators
	hl("ConformFormatting", { fg = colors.info, italic = true })
	hl("ConformFormattingDone", { fg = colors.git_add })
	hl("ConformFormattingError", { fg = colors.error })
	hl("ConformFormattingWarning", { fg = colors.warning })
	
	-- Conform.nvim progress indicators
	hl("ConformProgress", { fg = colors.hint, italic = true })
	hl("ConformProgressSpinner", { fg = colors.func })
	hl("ConformProgressDone", { fg = colors.git_add })
	
	-- Conform.nvim formatter names
	hl("ConformFormatterName", { fg = colors.type, bold = true })
	hl("ConformFormatterAvailable", { fg = colors.git_add })
	hl("ConformFormatterUnavailable", { fg = colors.error })
	hl("ConformFormatterDisabled", { fg = colors.comment })
	
	-- Conform.nvim file type indicators
	hl("ConformFiletype", { fg = colors.func })
	hl("ConformFiletypeSupported", { fg = colors.git_add })
	hl("ConformFiletypeUnsupported", { fg = colors.warning })
	
	-- Conform.nvim configuration
	hl("ConformConfig", { fg = colors.keyword })
	hl("ConformConfigError", { fg = colors.error, bold = true })
	hl("ConformConfigWarning", { fg = colors.warning })
	
	-- Conform.nvim diff highlighting for format changes
	hl("ConformDiffAdd", { fg = colors.git_add, bg = colors.bg })
	hl("ConformDiffDelete", { fg = colors.git_delete, bg = colors.bg })
	hl("ConformDiffChange", { fg = colors.git_change, bg = colors.bg })
	hl("ConformDiffText", { fg = colors.git_change, bg = colors.bg_highlight })
	
	-- Conform.nvim notification highlights
	hl("ConformNotification", { fg = colors.fg, bg = colors.bg_alt })
	hl("ConformNotificationInfo", { fg = colors.info })
	hl("ConformNotificationWarn", { fg = colors.warning })
	hl("ConformNotificationError", { fg = colors.error })
	hl("ConformNotificationSuccess", { fg = colors.git_add })
	
	-- Conform.nvim command highlights
	hl("ConformCommand", { fg = colors.operator })
	hl("ConformCommandArgs", { fg = colors.string })
	hl("ConformCommandOutput", { fg = colors.comment })
	hl("ConformCommandError", { fg = colors.error })
	
	-- Conform.nvim auto-format indicators
	hl("ConformAutoFormat", { fg = colors.hint, italic = true })
	hl("ConformAutoFormatEnabled", { fg = colors.git_add })
	hl("ConformAutoFormatDisabled", { fg = colors.comment })
	
	-- Conform.nvim timeout indicators
	hl("ConformTimeout", { fg = colors.warning, italic = true })
	hl("ConformTimeoutError", { fg = colors.error })
	
	-- Conform.nvim range formatting
	hl("ConformRangeFormat", { fg = colors.func, italic = true })
	hl("ConformRangeFormatBorder", { fg = colors.border, bg = colors.bg_highlight })
end

return M