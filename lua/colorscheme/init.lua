local M = {}
local highlights = require("colorscheme.highlights")

M.setup = function()
	vim.cmd("hi clear")

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "colorscheme"

	for group, highlight in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, highlight)
	end
end

return M
