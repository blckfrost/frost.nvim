-- Frost Theme for Neovim
-- or as ~/.config/nvim/lua/frost.lua

local M = {}

local colors = {
	-- Base colors
	bg = "#1a1a1a", -- Main background
	bg_alt = "#202020", -- Card/panel background
	bg_highlight = "#2a2a2a", -- Muted background
	bg_subtle = "#303030", -- Secondary background
	fg = "#d9d9d9", -- Main foreground text
	fg_dim = "#808080", -- Muted foreground
	fg_subtle = "#666666", -- Very dim text

	-- Grayscale accent variations
	gray_light = "#a0a0a0", -- Primary accent
	gray_mid = "#707070", -- Medium gray
	gray_dark = "#404040", -- Dark accent
	gray_darker = "#353535", -- Border color

	-- Subtle color accents (very low contrast)
	accent_blue = "#7a8a95", -- Subtle blue-gray for functions
	accent_cyan = "#7a9295", -- Subtle cyan-gray for strings
	accent_purple = "#8a7a95", -- Subtle purple-gray for keywords
	accent_orange = "#95857a", -- Subtle orange-gray for numbers
	accent_green = "#7a957a", -- Subtle green-gray for comments

	-- Status colors (very desaturated)
	error = "#b87a7a", -- Very muted red
	warning = "#b8a87a", -- Very muted yellow
	info = "#7aa8b8", -- Very muted blue
	success = "#7ab87a", -- Very muted green

	-- UI specific
	border = "#353535",
	selection = "#404040",
	cursor_line = "#252525",
	line_nr = "#585858",
	line_nr_active = "#a0a0a0",
}

-- Apply the theme
function M.setup()
	-- Clear existing highlights
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.background = "dark"
	vim.g.colors_name = "frost"

	local highlights = {
		-- Editor highlights
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg_alt },
		ColorColumn = { bg = colors.bg_highlight },
		Cursor = { fg = colors.bg, bg = colors.fg },
		CursorLine = { bg = colors.cursor_line },
		CursorLineNr = { fg = colors.line_nr_active, bold = true },
		LineNr = { fg = colors.line_nr },
		SignColumn = { fg = colors.line_nr, bg = colors.bg },

		-- Visual selection
		Visual = { bg = colors.selection },
		VisualNOS = { bg = colors.selection },

		-- Search
		Search = { fg = colors.bg, bg = colors.gray_light },
		IncSearch = { fg = colors.bg, bg = colors.fg },

		-- Syntax highlighting (subtle color hints)
		Comment = { fg = colors.accent_green, italic = true },
		Constant = { fg = colors.accent_orange },
		String = { fg = colors.accent_cyan },
		Character = { fg = colors.accent_cyan },
		Number = { fg = colors.accent_orange },
		Boolean = { fg = colors.accent_orange },
		Float = { fg = colors.accent_orange },

		Identifier = { fg = colors.fg },
		Function = { fg = colors.accent_blue, bold = true },

		Statement = { fg = colors.accent_purple, bold = true },
		Conditional = { fg = colors.accent_purple, bold = true },
		Repeat = { fg = colors.accent_purple, bold = true },
		Label = { fg = colors.accent_purple },
		Operator = { fg = colors.fg_dim },
		Keyword = { fg = colors.accent_purple, bold = true },
		Exception = { fg = colors.accent_purple, bold = true },

		PreProc = { fg = colors.accent_blue },
		Include = { fg = colors.accent_blue },
		Define = { fg = colors.accent_blue },
		Macro = { fg = colors.accent_blue },
		PreCondit = { fg = colors.accent_blue },

		Type = { fg = colors.accent_blue },
		StorageClass = { fg = colors.accent_purple, bold = true },
		Structure = { fg = colors.accent_blue },
		Typedef = { fg = colors.accent_blue },

		Special = { fg = colors.gray_mid },
		SpecialChar = { fg = colors.gray_mid },
		Tag = { fg = colors.gray_light },
		Delimiter = { fg = colors.fg_dim },
		SpecialComment = { fg = colors.fg_subtle },
		Debug = { fg = colors.error },

		-- Error and warning
		Error = { fg = colors.error },
		ErrorMsg = { fg = colors.error },
		WarningMsg = { fg = colors.warning },

		-- UI elements
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.gray_light },
		PmenuSbar = { bg = colors.bg_highlight },
		PmenuThumb = { bg = colors.gray_mid },

		StatusLine = { fg = colors.fg, bg = colors.bg_subtle },
		StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_alt },
		TabLine = { fg = colors.fg_dim, bg = colors.bg_alt },
		TabLineFill = { bg = colors.bg_alt },
		TabLineSel = { fg = colors.fg, bg = colors.bg_highlight },

		-- Borders and splits
		VertSplit = { fg = colors.border },
		WinSeparator = { fg = colors.border },

		-- Diff colors (subtle frost)
		DiffAdd = { fg = colors.success, bg = colors.bg },
		DiffChange = { fg = colors.warning, bg = colors.bg },
		DiffDelete = { fg = colors.error, bg = colors.bg },
		DiffText = { fg = colors.warning, bg = colors.bg_highlight },

		-- Git signs
		GitSignsAdd = { fg = colors.success },
		GitSignsChange = { fg = colors.warning },
		GitSignsDelete = { fg = colors.error },

		-- Tree-sitter highlights (subtle color coding)
		["@variable"] = { fg = colors.fg },
		["@variable.builtin"] = { fg = colors.accent_orange },
		["@function"] = { fg = colors.accent_blue, bold = true },
		["@function.builtin"] = { fg = colors.accent_blue, bold = true },
		["@function.macro"] = { fg = colors.accent_blue },
		["@method"] = { fg = colors.accent_blue, bold = true },
		["@keyword"] = { fg = colors.accent_purple, bold = true },
		["@keyword.function"] = { fg = colors.accent_purple, bold = true },
		["@keyword.operator"] = { fg = colors.accent_purple, bold = true },
		["@type"] = { fg = colors.accent_blue },
		["@type.builtin"] = { fg = colors.accent_blue },
		["@string"] = { fg = colors.accent_cyan },
		["@number"] = { fg = colors.accent_orange },
		["@boolean"] = { fg = colors.accent_orange },
		["@comment"] = { fg = colors.accent_green, italic = true },
		["@operator"] = { fg = colors.fg_dim },
		["@punctuation"] = { fg = colors.fg_dim },
		["@tag"] = { fg = colors.accent_blue },
		["@tag.attribute"] = { fg = colors.accent_orange },
		["@property"] = { fg = colors.fg },
		["@parameter"] = { fg = colors.fg },
		["@constant"] = { fg = colors.accent_orange },
		["@constant.builtin"] = { fg = colors.accent_orange },
		["@constructor"] = { fg = colors.accent_blue },

		-- LSP highlights
		LspReferenceText = { bg = colors.bg_highlight },
		LspReferenceRead = { bg = colors.bg_highlight },
		LspReferenceWrite = { bg = colors.bg_highlight },

		-- Diagnostic highlights
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warning },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.accent_cyan },

		-- Diagnostic underlines
		DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.accent_cyan },

		-- Telescope (subtle color touches)
		TelescopeSelection = { fg = colors.fg, bg = colors.bg_highlight },
		TelescopeSelectionCaret = { fg = colors.accent_blue },
		TelescopeMultiSelection = { fg = colors.accent_purple },
		TelescopeNormal = { fg = colors.fg, bg = colors.bg },
		TelescopeBorder = { fg = colors.border, bg = colors.bg },
		TelescopePromptBorder = { fg = colors.border, bg = colors.bg },
		TelescopeResultsBorder = { fg = colors.border, bg = colors.bg },
		TelescopePreviewBorder = { fg = colors.border, bg = colors.bg },
		TelescopePromptTitle = { fg = colors.fg, bold = true },
		TelescopeResultsTitle = { fg = colors.fg, bold = true },
		TelescopePreviewTitle = { fg = colors.fg, bold = true },

		-- Which-key (subtle accents)
		WhichKey = { fg = colors.accent_blue },
		WhichKeyGroup = { fg = colors.accent_purple, bold = true },
		WhichKeyDesc = { fg = colors.fg_dim },
		WhichKeySeparator = { fg = colors.fg_subtle },
		WhichKeyFloat = { bg = colors.bg_alt },

		-- Neo-tree (directory colors)
		NeoTreeNormal = { fg = colors.fg, bg = colors.bg_alt },
		NeoTreeDirectoryIcon = { fg = colors.accent_blue },
		NeoTreeDirectoryName = { fg = colors.accent_blue },
		NeoTreeFileName = { fg = colors.fg },
		NeoTreeFileIcon = { fg = colors.fg_dim },
		NeoTreeGitAdded = { fg = colors.success },
		NeoTreeGitDeleted = { fg = colors.error },
		NeoTreeGitModified = { fg = colors.warning },
		NeoTreeGitIgnored = { fg = colors.fg_subtle },

		-- Indent lines
		IndentBlanklineChar = { fg = colors.bg_highlight },
		IndentBlanklineContextChar = { fg = colors.gray_dark },

		-- Folding
		Folded = { fg = colors.fg_dim, bg = colors.bg_highlight },
		FoldColumn = { fg = colors.fg_dim, bg = colors.bg },

		-- Completion menu
		CmpItemAbbr = { fg = colors.fg },
		CmpItemAbbrDeprecated = { fg = colors.fg_dim, strikethrough = true },
		CmpItemAbbrMatch = { fg = colors.gray_light, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.gray_light, bold = true },
		CmpItemKind = { fg = colors.gray_mid },
		CmpItemMenu = { fg = colors.fg_dim },

		-- NonText = { fg = colors.bg_highlight }, -- Make ~ very dim
		-- EndOfBuffer = { fg = colors.bg_highlight }, -- Same effect
	}

	-- Apply all highlights
	for group, style in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, style)
	end
end

-- Auto-setup if called as colorscheme
if vim.g.colors_name == "frost" then
	M.setup()
end

return M
