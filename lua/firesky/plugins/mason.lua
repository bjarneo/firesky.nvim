local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(colors, config)
	-- Mason.nvim main window
	hl("MasonNormal", { fg = colors.fg, bg = colors.bg })
	hl("MasonHeader", { fg = colors.keyword, bold = true })
	hl("MasonTitle", { fg = colors.type, bold = true })
	
	-- Mason.nvim package states
	hl("MasonInstalledPackage", { fg = colors.git_add })
	hl("MasonPendingPackage", { fg = colors.warning, italic = true })
	hl("MasonUninstalledPackage", { fg = colors.comment })
	hl("MasonErrorPackage", { fg = colors.error })
	
	-- Mason.nvim package categories
	hl("MasonLspPackage", { fg = colors.func })
	hl("MasonDapPackage", { fg = colors.info })
	hl("MasonLinterPackage", { fg = colors.warning })
	hl("MasonFormatterPackage", { fg = colors.hint })
	
	-- Mason.nvim highlights
	hl("MasonHighlight", { fg = colors.cursor, bg = colors.bg_highlight })
	hl("MasonHighlightBlock", { fg = colors.bg, bg = colors.cursor })
	hl("MasonHighlightBlockBold", { fg = colors.bg, bg = colors.cursor, bold = true })
	
	-- Mason.nvim mutedHighlight
	hl("MasonMuted", { fg = colors.comment })
	hl("MasonMutedBlock", { fg = colors.comment, bg = colors.bg_alt })
	hl("MasonMutedBlockBold", { fg = colors.comment, bg = colors.bg_alt, bold = true })
	
	-- Mason.nvim buttons and links
	hl("MasonLink", { fg = colors.info, underline = true })
	hl("MasonButton", { fg = colors.fg, bg = colors.bg_highlight })
	hl("MasonButtonActive", { fg = colors.bg, bg = colors.func })
	
	-- Mason.nvim progress indicators
	hl("MasonProgress", { fg = colors.func, italic = true })
	hl("MasonProgressSuccess", { fg = colors.git_add })
	hl("MasonProgressError", { fg = colors.error })
	hl("MasonProgressWarning", { fg = colors.warning })
	
	-- Mason.nvim version information
	hl("MasonVersion", { fg = colors.number })
	hl("MasonVersionLatest", { fg = colors.git_add })
	hl("MasonVersionOutdated", { fg = colors.warning })
	hl("MasonVersionPrerelease", { fg = colors.hint })
	
	-- Mason.nvim search and filter
	hl("MasonSearch", { fg = colors.string })
	hl("MasonSearchMatch", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("MasonFilter", { fg = colors.operator })
	hl("MasonFilterActive", { fg = colors.func, bold = true })
	
	-- Mason.nvim borders and separators
	hl("MasonBorder", { fg = colors.border })
	hl("MasonVertSplit", { fg = colors.border })
	hl("MasonSeparator", { fg = colors.border })
	
	-- Mason.nvim help and instructions
	hl("MasonHelp", { fg = colors.comment, italic = true })
	hl("MasonHelpHeader", { fg = colors.keyword, bold = true })
	hl("MasonInstruction", { fg = colors.info })
	hl("MasonKey", { fg = colors.operator, bold = true })
	
	-- Mason.nvim package information
	hl("MasonPackageName", { fg = colors.type, bold = true })
	hl("MasonPackageDescription", { fg = colors.fg })
	hl("MasonPackageTag", { fg = colors.hint, italic = true })
	hl("MasonPackageLanguage", { fg = colors.string })
	hl("MasonPackageHomepage", { fg = colors.info, underline = true })
	
	-- Mason.nvim installation status
	hl("MasonInstallationStatus", { fg = colors.func, italic = true })
	hl("MasonInstallationProgress", { fg = colors.hint })
	hl("MasonInstallationSuccess", { fg = colors.git_add, bold = true })
	hl("MasonInstallationError", { fg = colors.error, bold = true })
	hl("MasonInstallationCancelled", { fg = colors.warning })
	
	-- Mason.nvim log levels
	hl("MasonLogTrace", { fg = colors.comment })
	hl("MasonLogDebug", { fg = colors.info })
	hl("MasonLogInfo", { fg = colors.fg })
	hl("MasonLogWarn", { fg = colors.warning })
	hl("MasonLogError", { fg = colors.error })
	
	-- Mason.nvim registry information
	hl("MasonRegistry", { fg = colors.type })
	hl("MasonRegistrySource", { fg = colors.string })
	hl("MasonRegistryVersion", { fg = colors.number })
	hl("MasonRegistryUpdateAvailable", { fg = colors.git_change })
	
	-- Mason.nvim floating window
	hl("MasonFloat", { fg = colors.fg, bg = colors.bg_alt })
	hl("MasonFloatBorder", { fg = colors.border, bg = colors.bg_alt })
	hl("MasonFloatTitle", { fg = colors.keyword, bg = colors.bg_alt, bold = true })
end

return M