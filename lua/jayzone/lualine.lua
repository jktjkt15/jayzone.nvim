local colors = require("jayzone.colors").getColorScheme(vim.g.colors_name)

return {
	inactive = {
		a = { fg = colors.dark_grey, bg = colors.background },
		b = { fg = colors.dark_grey, bg = colors.background },
		c = { fg = colors.dark_grey, bg = "none" },
	},
	normal = {
		a = { fg = colors.white, bg = colors.blue },
		b = { fg = colors.white, bg = colors.dark_grey },
		c = { fg = colors.white, bg = "none" },
	},
	visual = { a = { fg = colors.background, bg = colors.purple } },
	replace = { a = { fg = colors.background, bg = colors.red } },
	insert = { a = { fg = colors.background, bg = colors.yellow } },
	command = { a = { fg = colors.background, bg = colors.orange } },
	terminal = { a = { fg = colors.background, bg = colors.green } },
}
