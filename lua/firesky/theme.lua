-- firesky theme colors and highlight definitions
local M = {}

-- Color palette
M.colors = {
    background = "#040404",
    foreground = "#f5f0e8",
    black = "#0f1a1a",
    red = "#ff4d1a",
    green = "#1a7578",
    yellow = "#ff8f40",
    blue = "#2a858c",
    magenta = "#d4803d",
    cyan = "#40c4c0",
    white = "#e8ddd5",
    bright_black = "#4d7575",
    bright_red = "#ff7540",
    bright_green = "#40d4d0",
    bright_yellow = "#ffad52",
    bright_blue = "#52d9dd",
    bright_magenta = "#ffc275",
    bright_cyan = "#70f0ed",
    bright_white = "#fff8f0",
    cursor_cursor = "#ff5d2a",
    cursor_text = "#000000",
    selection_background = "#2a5555",
    selection_text = "#f0e8e0",

	-- UI colors
	bg_alt = "#0f1a1a",
	bg_highlight = "#1a2525",
	bg_visual = "#1f3a3a",
	border = "#4d7575",

	-- Syntax colors
	comment = "#6ba8a5",
	comment_alt = "#6ba8a5",

	-- Functions and methods
	func = "#7bb8bb",
	func_builtin = "#9bc8cb",

	-- Strings
	string = "#6ba8a5",
	string_template = "#9bc8cb",
	string_escape = "#9bc8cb",
	string_regex = "#9bc8cb",

	-- Keywords and control flow
	keyword = "#d4803d",

	-- Types and classes
	type = "#ff8f40",

	-- Constants and numbers
	constant = "#ff8f40",
	number = "#ff8f40",
	boolean = "#ff8f40",

	-- Variables and properties
	variable = "#f5f0e8",
	property = "#f5f0e8",

	-- Operators and punctuation
	operator = "#40c4c0",
	punctuation = "#e8ddd5",

	-- Special colors
	cursor = "#ff5d2a",
	line_number = "#4d7575",
	line_number_active = "#f5f0e8",

	-- Diagnostic colors
	error = "#ff4d1a",
	warning = "#ff8f40",
	info = "#1a7578",
	hint = "#40c4c0",

	-- Git colors
	git_add = "#1a7578",
	git_change = "#ff8f40",
	git_delete = "#ff4d1a",
	git_ignore = "#4d7575",

	-- Terminal colors
	terminal_black = "#0f1a1a",
	terminal_red = "#ff4d1a",
	terminal_green = "#1a7578",
	terminal_yellow = "#ff8f40",
	terminal_blue = "#2a858c",
	terminal_magenta = "#d4803d",
	terminal_cyan = "#40c4c0",
	terminal_white = "#e8ddd5",
	terminal_bright_black = "#4d7575",
	terminal_bright_red = "#ff7540",
	terminal_bright_green = "#6ba8a5",
	terminal_bright_yellow = "#ffad52",
	terminal_bright_blue = "#52d9dd",
	terminal_bright_magenta = "#ffc275",
	terminal_bright_cyan = "#70f0ed",
	terminal_bright_white = "#fff8f0",

	-- Additional colors
	none = "NONE",
}

-- Helper function to set highlights
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Apply theme with configuration
function M.apply(config)
	local colors = vim.tbl_deep_extend("force", M.colors, config.colors or {})

	-- Apply background override if disabled
	if config.disable.background then
		colors.bg = "NONE"
	end

	-- Editor highlights
	hl("Normal", { fg = colors.fg, bg = colors.bg })
	hl("NormalFloat", { fg = colors.fg, bg = colors.bg })
	hl("FloatBorder", { fg = colors.border, bg = colors.bg })
	hl("ColorColumn", { bg = colors.bg_alt })
	hl("Cursor", { fg = colors.cursor_text, bg = colors.cursor })
	hl("CursorLine", { bg = colors.bg_highlight })
	hl("CursorColumn", { bg = colors.bg_highlight })
	hl("LineNr", { fg = colors.line_number })
	hl("CursorLineNr", { fg = colors.line_number_active, bold = true })
	hl("SignColumn", { bg = colors.bg })
	hl("StatusLine", { fg = colors.fg, bg = colors.bg })
	hl("StatusLineNC", { fg = colors.comment_alt, bg = colors.bg })
	hl("TabLine", { fg = colors.comment_alt, bg = colors.bg })
	hl("TabLineFill", { bg = colors.bg })
	hl("TabLineSel", { fg = colors.fg, bg = colors.bg })
	hl("VertSplit", { fg = colors.border })
	hl("WinSeparator", { fg = colors.border })
	hl("Visual", { bg = colors.selection_background, fg = colors.selection_text })
	hl("VisualNOS", { bg = colors.selection_background, fg = colors.selection_text })
	hl("Search", { fg = colors.bg, bg = colors.func })
	hl("IncSearch", { fg = colors.bg, bg = colors.string_escape })
	hl("CurSearch", { fg = colors.bg, bg = colors.string_escape })
	hl("Substitute", { fg = colors.bg, bg = colors.string_escape })
	hl("MatchParen", { fg = colors.cursor, bg = colors.bg_highlight, bold = true })
	hl("Question", { fg = colors.info })
	hl("ModeMsg", { fg = colors.fg })
	hl("MoreMsg", { fg = colors.info })
	hl("ErrorMsg", { fg = colors.error })
	hl("WarningMsg", { fg = colors.warning })
	hl("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
	hl("PmenuSel", { fg = colors.fg, bg = colors.bg_highlight })
	hl("PmenuSbar", { bg = colors.bg_highlight })
	hl("PmenuThumb", { bg = colors.border })
	hl("WildMenu", { fg = colors.fg, bg = colors.bg_highlight })
	hl("Folded", { fg = colors.comment, bg = colors.bg_alt })
	hl("FoldColumn", { fg = colors.comment, bg = colors.bg })
	hl("Directory", { fg = colors.info })
	hl("Title", { fg = colors.keyword, bold = true })
	hl("NonText", { fg = colors.comment })
	hl("SpecialKey", { fg = colors.comment })
	hl("Whitespace", { fg = colors.comment })
	hl("EndOfBuffer", { fg = colors.bg })

	-- Syntax highlighting
	local comment_style = { fg = colors.comment }
	if not config.disable.italic_comments then
		comment_style.italic = true
	end

	hl("Comment", comment_style)
	hl("Todo", { fg = colors.comment_alt, bold = true })
	hl("Constant", { fg = colors.constant })
	hl("String", { fg = colors.string })
	hl("Character", { fg = colors.string })
	hl("Number", { fg = colors.number })
	hl("Float", { fg = colors.number })
	hl("Boolean", { fg = colors.boolean })
	hl("Identifier", { fg = colors.variable })
	hl("Function", { fg = colors.func })
	hl("Statement", { fg = colors.keyword })
	hl("Conditional", { fg = colors.keyword, bold = true })
	hl("Repeat", { fg = colors.keyword, bold = true })
	hl("Label", { fg = colors.type })
	hl("Operator", { fg = colors.operator })
	hl("Keyword", { fg = colors.keyword })
	hl("Exception", { fg = colors.keyword })
	hl("PreProc", { fg = colors.keyword })
	hl("Include", { fg = colors.keyword, italic = true })
	hl("Define", { fg = colors.keyword })
	hl("Macro", { fg = colors.keyword, bold = true })
	hl("PreCondit", { fg = colors.keyword })
	hl("Type", { fg = colors.type })
	hl("StorageClass", { fg = colors.keyword })
	hl("Structure", { fg = colors.type })
	hl("Typedef", { fg = colors.type })
	hl("Special", { fg = colors.string_escape })
	hl("SpecialChar", { fg = colors.string_escape, bold = true })
	hl("Tag", { fg = colors.keyword })
	hl("Delimiter", { fg = colors.punctuation })
	hl("SpecialComment", { fg = colors.comment_alt, italic = true })
	hl("Debug", { fg = colors.error })
	hl("Underlined", { underline = true })
	hl("Ignore", { fg = colors.comment })
	hl("Error", { fg = colors.error })

	-- Apply plugin-specific highlights based on config
	if config.plugins.treesitter then
		require("firesky.plugins.treesitter").apply(colors, config)
	end

	if config.plugins.lsp then
		require("firesky.plugins.lsp").apply(colors, config)
	end

	if config.plugins.telescope then
		require("firesky.plugins.telescope").apply(colors, config)
	end

	if config.plugins.nvimtree then
		require("firesky.plugins.nvimtree").apply(colors, config)
	end

	if config.plugins.whichkey then
		require("firesky.plugins.whichkey").apply(colors, config)
	end

	if config.plugins.gitsigns then
		require("firesky.plugins.gitsigns").apply(colors, config)
	end

	if config.plugins.indent_blankline then
		require("firesky.plugins.indent_blankline").apply(colors, config)
	end

	if config.plugins.markdown then
		require("firesky.plugins.markdown").apply(colors, config)
	end

	if config.plugins.blink then
		require("firesky.plugins.blink").apply(colors, config)
	end

	if config.plugins.comment then
		require("firesky.plugins.comment").apply(colors, config)
	end

	if config.plugins.conform then
		require("firesky.plugins.conform").apply(colors, config)
	end

	if config.plugins.diffview then
		require("firesky.plugins.diffview").apply(colors, config)
	end

	if config.plugins.fidget then
		require("firesky.plugins.fidget").apply(colors, config)
	end

	if config.plugins.flash then
		require("firesky.plugins.flash").apply(colors, config)
	end

	if config.plugins.lint then
		require("firesky.plugins.lint").apply(colors, config)
	end

	if config.plugins.mason then
		require("firesky.plugins.mason").apply(colors, config)
	end

	if config.plugins.mini then
		require("firesky.plugins.mini").apply(colors, config)
	end

	if config.plugins.noice then
		require("firesky.plugins.noice").apply(colors, config)
	end

	if config.plugins.nvim_dap then
		require("firesky.plugins.nvim-dap").apply(colors, config)
	end

	if config.plugins.snacks then
		require("firesky.plugins.snacks").apply(colors, config)
	end

	if config.plugins.trouble then
		require("firesky.plugins.trouble").apply(colors, config)
	end


	-- Apply terminal colors if not disabled
	if not config.disable.terminal_colors then
		vim.g.terminal_color_0 = colors.terminal_black
		vim.g.terminal_color_1 = colors.terminal_red
		vim.g.terminal_color_2 = colors.terminal_green
		vim.g.terminal_color_3 = colors.terminal_yellow
		vim.g.terminal_color_4 = colors.terminal_blue
		vim.g.terminal_color_5 = colors.terminal_magenta
		vim.g.terminal_color_6 = colors.terminal_cyan
		vim.g.terminal_color_7 = colors.terminal_white
		vim.g.terminal_color_8 = colors.terminal_bright_black
		vim.g.terminal_color_9 = colors.terminal_bright_red
		vim.g.terminal_color_10 = colors.terminal_bright_green
		vim.g.terminal_color_11 = colors.terminal_bright_yellow
		vim.g.terminal_color_12 = colors.terminal_bright_blue
		vim.g.terminal_color_13 = colors.terminal_bright_magenta
		vim.g.terminal_color_14 = colors.terminal_bright_cyan
		vim.g.terminal_color_15 = colors.terminal_bright_white
	end

	-- Apply user-defined highlight overrides
	for group, opts in pairs(config.highlights or {}) do
		hl(group, opts)
	end
end

return M