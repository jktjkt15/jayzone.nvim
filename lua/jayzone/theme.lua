local colors = require("jayzone.colors")

local M = {}

function M.colorScheme()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "jayzone"
end

function M.highlights()
	vim.g.terminal_color_0 = colors.background
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = colors.green
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.purple
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.grey
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.white

	local highlights = {
		Character = { fg = colors.orange },
		Number = { fg = colors.orange },
		Float = { fg = colors.orange },
		Boolean = { fg = colors.orange },
		Type = { fg = colors.yellow },
		Structure = { fg = colors.yellow },
		Constant = { fg = colors.cyan },
		PreProc = { fg = colors.purple },
		PreCondit = { fg = colors.purple },
		Include = { fg = colors.orange },
		Define = { fg = colors.purple },
		Typedef = { fg = colors.purple },
		Exception = { fg = colors.purple },
		Macro = { fg = colors.red },
		Error = { fg = colors.purple },
		Label = { fg = colors.purple },
		Special = { fg = colors.orange },
		SpecialChar = { fg = colors.red },
		Operator = { fg = colors.orange },
		Title = { fg = colors.cyan },
		Tag = { fg = colors.green },
		Delimiter = { fg = colors.bright_grey },
		Function = { fg = colors.blue },
		Keyword = { fg = colors.purple },
		Identifier = { fg = colors.orange },
		String = { fg = colors.green },
		Conditional = { fg = colors.purple },
		Repeat = { fg = colors.purple },
		Statement = { fg = colors.purple },
		Comment = { fg = colors.grey },
		SpecialComment = { fg = colors.grey },
		Todo = { fg = colors.red },

		["@parameter"] = { fg = colors.purple },
		-- ["@conditional"] = { fmt = "none" },
		["@variable"] = { fg = colors.white },
		["@namespace"] = { fg = colors.very_bright_grey },
		["@type"] = { fg = colors.yellow },
		["@type.builtin"] = { fg = colors.orange },
		["@constant"] = { underline = true, fg = colors.white },
		["@interface"] = { fg = colors.yellow, italic = true },
		["@number"] = { underline = true, fg = colors.red },
		["@comment"] = { italic = true, fg = colors.bright_grey },
		["@property"] = { fg = colors.cyan, italic = false, bold = false },
		["@keyword"] = { fg = colors.red },
		["@include"] = { fg = colors.orange },
		["@exception"] = { fg = colors.red },
		["@field"] = { fg = colors.dark_purple },
		["@operator"] = { fg = colors.bright_grey },
		["@punctuation"] = { fg = colors.white },
		["@label"] = { fg = colors.orange },
		["@storageclass"] = { fg = colors.orange },
		["StorageClass"] = { fg = colors.red },
		["@method"] = { fg = colors.blue },
		["@symbol"] = { fg = colors.orange },
		["Ps1Variables"] = { fg = colors.orange },
		["CursorLine"] = { bg = colors.dark_grey },
		["Visual"] = { bg = colors.dark_grey },
		["LspInlayHint"] = { fg = colors.very_bright_grey },
		["LspCodeLens"] = { fg = colors.green, bg = colors.dark_grey },

		TelescopeMatching = { fg = colors.cyan },
		TelescopeSelectionCaret = { fg = colors.yellow, bg = colors.dark_grey },
		TelescopePromptCounter = { fg = colors.blue, bg = colors.background },
		["TelescopeSelection"] = { bg = colors.dark_grey },
		["TelescopePromptBorder"] = { fg = colors.blue },
		["TelescopePreviewBorder"] = { fg = colors.blue },
		["TelescopeResultsBorder"] = { fg = colors.blue },
		["TelescopeBorder"] = { fg = colors.yellow },
		["TelescopePromptPrefix"] = { fg = colors.yellow },

		["PmenuThumb"] = { bg = colors.dark_grey },
		["Pmenu"] = { bg = colors.background, fg = colors.white },
		["CmpBorder"] = { bg = colors.background, fg = colors.blue },
		["CmpNormal"] = { bg = colors.background, fg = colors.white },
		["CmpMenu"] = { bg = "none", fg = colors.cyan },
		["CmpItemAbbr"] = { bg = "none", fg = colors.white },
		["CmpItemAbbrMatch"] = { bg = "none", fg = colors.cyan },
		["CmpItemAbbrMatchFuzzy"] = { bg = "none", fg = colors.cyan, underline = true },
		["IndentBlankLineContextStart"] = { bg = "none" },
		["DiagnosticError"] = { fg = colors.red },
		["DiagnosticVirtualTextError"] = { fg = colors.red, bg = colors.dark_grey },
		["DiagnosticWarn"] = { fg = colors.orange },
		["DiagnosticVirtualTextWarn"] = { fg = colors.orange, bg = colors.dark_grey },
		["DiagnosticInfo"] = { fg = colors.cyan },
		["DiagnosticVirtualTextInfo"] = { fg = colors.white, bg = colors.dark_grey },
		["DiagnosticHint"] = { fg = colors.blue },
		["DiagnosticVirtualTextHint"] = { fg = colors.blue, bg = colors.dark_grey },
		["LazyNormal"] = { bg = "none", fg = colors.white },
		["MasonNormal"] = { bg = "none", fg = colors.white },
		["Normal"] = { fg = colors.white, bg = colors.background },
		["Terminal"] = { fg = colors.white, bg = colors.background },
		["NormalFloat"] = { fg = colors.white, bg = colors.background },
		["EndOfBuffer"] = { fg = colors.background, bg = "none" },
		["FloatBorder"] = { fg = colors.blue, bg = colors.background },
		["VertSplit"] = { fg = colors.grey, bg = "none" },
		["IndentBlanklineChar"] = { fg = colors.grey, bg = "none" },
		["IndentBlanklineContextChar"] = { fg = colors.bright_grey, bg = "none" },
		["TSRainbowYellow"] = { fg = colors.yellow },
		["TSRainbowViolet"] = { fg = colors.purple },
		["TSRainbowPurple"] = { fg = colors.purple },
		["TSRainbowCyan"] = { fg = colors.cyan },
		["TSRainbowOrange"] = { fg = colors.orange },
		["TSRainbowBlue"] = { fg = colors.blue },
		["TSRainbowRed"] = { fg = colors.red },
		["TSRainbowGreen"] = { fg = colors.green },
		["RainbowDelimiterYellow"] = { fg = colors.yellow },
		["RainbowDelimiterViolet"] = { fg = colors.purple },
		["RainbowDelimiterPurple"] = { fg = colors.purple },
		["RainbowDelimiterCyan"] = { fg = colors.cyan },
		["RainbowDelimiterOrange"] = { fg = colors.orange },
		["RainbowDelimiterBlue"] = { fg = colors.blue },
		["RainbowDelimiterRed"] = { fg = colors.red },
		["RainbowDelimiterGreen"] = { fg = colors.green },
		LspSignatureActiveParameter = { bg = colors.dark_grey },

		["LineNr"] = { fg = colors.grey, bg = "none" },
		["CursorLineSign"] = { fg = colors.blue, bg = colors.dark_grey },
		["CursorLineFold"] = { fg = colors.blue, bg = colors.dark_grey },
		["CursorLineNr"] = { fg = colors.blue, bg = colors.dark_grey },

		-- ColorColumn = { bg = colors.orange },
		-- ToolbarLine = { bg = colors.orange },
		-- TabLine = { bg = colors.orange },
		NonText = { fg = colors.dark_grey },
		StatusLine = { fg = colors.white, bg = colors.background },
		StatusLineTerm = { fg = colors.white, bg = colors.background },
		StatusLineNC = { fg = colors.green, bg = colors.background },
		StatusLineTermNC = { fg = colors.orange, bg = colors.background },

		GitSignsAdd = { fg = colors.green, bold = true },
		GitSignsAddLn = { fg = colors.green, bold = true },
		GitSignsAddNr = { fg = colors.green, bold = true },
		GitSignsChange = { fg = colors.blue, bold = true },
		GitSignsChangeLn = { fg = colors.blue, bold = true },
		GitSignsChangeNr = { fg = colors.blue, bold = true },
		GitSignsDelete = { fg = colors.red, bold = true },
		GitSignsDeleteLn = { fg = colors.red, bold = true },
		GitSignsDeleteNr = { fg = colors.red, bold = true },

		MiniNotifyBorder = { fg = colors.blue, bg = colors.background },
		MiniNotifyNormal = { fg = colors.background, bg = colors.background },
		MiniNotifyTitle = { fg = colors.green, bg = colors.background },

		SignColumn = { fg = colors.white, bg = colors.background },
		FoldColumn = { fg = colors.white, bg = colors.background },
		Folded = { fg = colors.white, bg = colors.none, italic = true },

		ErrorMsg = { fg = colors.red, bold = false, gui = "none" },
		WarningMsg = { fg = colors.yellow },
		MoreMsg = { fg = colors.blue },
		Debug = { fg = colors.blue },

		CurSearch = { fg = colors.background, bg = colors.orange },
		IncSearch = { fg = colors.background, bg = colors.orange },
		Search = { fg = colors.background, bg = colors.yellow },
		Substitute = { fg = colors.background, bg = colors.green },
		MatchParen = { fg = colors.white, bg = colors.grey },

		DiffAdd = { fg = colors.green, bg = colors.dark_grey, italic = true, bold = false },
		DiffChange = { fg = colors.none, bg = colors.dark_grey, bold = false, underline = false },
		DiffDelete = { fg = colors.red, bg = colors.dark_grey, italic = true, bold = false },
		DiffText = { fg = colors.none, bg = colors.diff_change, bold = true },

		diffRemoved = { fg = colors.red, bg = colors.none },
		diffAdded = { fg = colors.green, bg = colors.none },

		DiffFile = { fg = colors.cyan },
		DiffIndexLine = { fg = colors.orange },

		QuickFixLine = { fg = colors.blue, underline = true },
		Directory = { fg = colors.blue },

		DiagnosticUnderlineError = { underline = false },
		DiagnosticUnderlineHint = { underline = false },
		DiagnosticUnderlineInfo = { underline = false },
		DiagnosticUnderlineWarn = { underline = false },

		LeapMatch = { fg = colors.blue },
		LeapLabelPrimary = { fg = colors.white, bg = colors.blue },
	}

	for target, highlight in pairs(highlights) do
		local hi = {
			fg = highlight.fg or "none",
			bg = highlight.bg or "none",
			italic = highlight.italic or false,
			underline = highlight.underline or false,
			bold = highlight.bold or false,
		}
		vim.api.nvim_set_hl(0, target, hi)
	end

	local links = {
		-- ["@lsp.type.type.cs"] = "@type",
		["@lsp.type.variable.cs"] = "@variable",
		["@lsp.type.property.cs"] = "@property",
		["@lsp.type.namespace.cs"] = "@namespace",
		["@lsp.type.class.cs"] = "@type",
		["@lsp.type.parameter.cs"] = "@parameter",
		["@lsp.type.local.cs"] = "@variable",
		["@lsp.type.type_parameter.cs"] = "@type",
		["@lsp.type.extension_method.cs"] = "@method",
		["@lsp.type.method.cs"] = "@method",
		["@lsp.type.constant.cs"] = "@constant",
		["@lsp.type.enum.cs"] = "@type",
		["@lsp.type.enum_member.cs"] = "@variable",
		["@lsp.type.interface.cs"] = "@interface",
		["@lsp.type.struct.cs"] = "@type",
		["@lsp.type.field.cs"] = "@field",
		["@lsp.type.fieldName.cs"] = "@field",
		["@lsp.type.delegate.cs"] = "@method",
		["@lsp.type.property_name.cs"] = "@property",
		["@lsp.type.namespace_name.cs"] = "@namespace",
		["@lsp.type.class_name.cs"] = "@type",
		["@lsp.type.parameter_name.cs"] = "@parameter",
		["@lsp.type.local_name.cs"] = "@variable",
		["@lsp.type.type_parameter_name.cs"] = "@type",
		["@lsp.type.extension_method_name.cs"] = "@method",
		["@lsp.type.method_name.cs"] = "@method",
		["@lsp.type.constant_name.cs"] = "@constant",
		["@lsp.type.enum_name.cs"] = "@type",
		["@lsp.type.enum_member_name.cs"] = "@variable",
		["@lsp.type.interface_name.cs"] = "@interface",
		["@lsp.type.struct_name.cs"] = "@type",
		["@lsp.type.field_name.cs"] = "@field",
		["@lsp.type.delegate_name.cs"] = "@method",
		["@lsp.type.string.cs"] = "String",
		["@lsp.type.operator.cs"] = "@operator",
		["@lsp.type.controlkeyword.cs"] = "@keyword",
		["@lsp.type.variable.ps1"] = "Ps1Variables",
		["@lsp.type.comment.ps1"] = "@comment",
		["@lsp.type.property.ps1"] = "@property",
		["@lsp.type.parameter.ps1"] = "@parameter",
		-- ["@lsp.type.constant.ps1"] = "@constant",
		["@lsp.typemod.variable.defaultLibrary.lua"] = "@keyword",
		["@lsp.type.parameter.lua"] = "@parameter",
		["@lsp.type.property.lua"] = "@property",
		["@lsp.typemod.variable.declaration.lua"] = "@variable",
		["@lsp.typemod.variable.global.lua"] = "@keyword",
		["@lsp.type.variable.lua"] = "@variable",
		["@lsp.typemod.function.defaultLibrary.lua"] = "@keyword",
		["@keyword.coroutine.c_sharp"] = "@keyword",
	}

	for newgroup, oldgroup in pairs(links) do
		vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
	end
end

return M
