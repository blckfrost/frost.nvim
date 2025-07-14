local M = {}

function M.get_highlights(colors)
	return {
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

		-- Folding
		Folded = { fg = colors.fg_dim, bg = colors.bg_highlight },
		FoldColumn = { fg = colors.fg_dim, bg = colors.bg },
	}
end

return M
