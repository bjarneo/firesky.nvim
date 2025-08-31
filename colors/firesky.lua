-- Firesky colorscheme entry point
-- This file enables traditional colorscheme loading via `vim.cmd.colorscheme "firesky"`

-- Clear existing highlights
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

-- Set background and colorscheme name
vim.o.background = "dark"
vim.g.colors_name = "firesky"

-- Try to load the modular system
local ok, firesky = pcall(require, "firesky")
if ok then
	-- If modular system is available, use it
	pcall(firesky.setup, {})
	pcall(firesky.load)
else
	-- If modular system fails, load basic colors directly
	local theme = require("firesky.theme")
	local config = {
		disable = {},
		colors = {},
		highlights = {},
		plugins = {
			treesitter = true,
			lsp = true,
			telescope = true,
			nvimtree = true,
			whichkey = true,
			gitsigns = true,
			indent_blankline = true,
			markdown = true,
		}
	}
	theme.apply(config)
end