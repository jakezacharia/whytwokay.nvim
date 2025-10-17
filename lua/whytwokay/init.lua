local M = {}

function M.setup(opts)
	M.opts = vim.tbl_deep_extend("force", {
		transparent = false,
	}, opts or {})
end

function M.load()
	local p = require("whytwokay.palette")
	local h = require("whytwokay.highlights")

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "whytwokay"

	for group, spec in pairs(h) do
		vim.api.nvim_set_hl(0, group, spec)
	end

	if not M.opts.transparent then
		vim.api.nvim_set_hl(0, "Normal", { bg = p.bg, fg = p.fg })
	end

	for i, color in ipairs({
		p.black,
		p.red,
		p.green,
		p.yellow,
		p.blue,
		p.magenta,
		p.cyan,
		p.white,
		p.br_black,
		p.br_red,
		p.br_green,
		p.br_yellow,
		p.br_blue,
		p.br_magenta,
		p.br_cyan,
		p.br_white,
	}) do
		vim.g["terminal_color_" .. (i - 1)] = color
	end
end

return M
