local p = require("whytwokay.palette")

return {
	Cursor = { fg = p.bg, bg = p.cursor },
	Visual = { fg = p.bg, bg = p.selection },
	Pmenu = { fg = p.fg, bg = "#10130f" },
	PmenuSel = { fg = p.bg, bg = p.selection },
	StatusLine = { fg = p.fg, bg = "#10130f" },
	Comment = { fg = p.br_black, italic = true },
	String = { fg = p.green },
	Keyword = { fg = p.blue, bold = true },
	Function = { fg = p.cyan },
	Type = { fg = p.magenta },
	Constant = { fg = p.yellow },
	DiagnosticError = { fg = p.red },
	DiagnosticWarn = { fg = p.yellow },
	DiagnosticInfo = { fg = p.blue },
	DiagnosticHint = { fg = p.cyan },
}
