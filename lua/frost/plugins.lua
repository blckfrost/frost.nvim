local M = {}

function M.get_plugin_highlights(colors)
	return {
		-- Tree-sitter highlights
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

		-- Telescope
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

		-- Which-key
		WhichKey = { fg = colors.accent_blue },
		WhichKeyGroup = { fg = colors.accent_purple, bold = true },
		WhichKeyDesc = { fg = colors.fg_dim },
		WhichKeySeparator = { fg = colors.fg_subtle },
		WhichKeyFloat = { bg = colors.bg_alt },

		-- Neo-tree
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
		IndentBlanklineChar = { fg = colors.bg_highlight }, -- main indent lines
		IndentBlanklineContextChar = { fg = colors.gray_dark }, -- current context
		IndentBlanklineSpaceChar = { fg = colors.bg_highlight }, -- space indents
		IndentBlanklineSpaceCharBlankline = { fg = colors.bg_highlight },
		IndentBlanklineContextStart = { sp = colors.accent_blue, underline = true },

		-- Completion menu (nvim-cmp)
		CmpItemAbbr = { fg = colors.fg },
		CmpItemAbbrDeprecated = { fg = colors.fg_dim, strikethrough = true },
		CmpItemAbbrMatch = { fg = colors.gray_light, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.gray_light, bold = true },
		CmpItemKind = { fg = colors.gray_mid },
		CmpItemMenu = { fg = colors.fg_dim },

		-- Blink.cmp completion
		BlinkCmpMenu = { fg = colors.fg, bg = colors.bg_alt },
		BlinkCmpMenuBorder = { fg = colors.border, bg = colors.bg_alt },
		BlinkCmpMenuSelection = { fg = colors.bg, bg = colors.gray_light },
		BlinkCmpLabel = { fg = colors.fg },
		BlinkCmpLabelDeprecated = { fg = colors.fg_dim, strikethrough = true },
		BlinkCmpLabelMatch = { fg = colors.gray_light, bold = true },
		BlinkCmpKind = { fg = colors.gray_mid },
		BlinkCmpSource = { fg = colors.fg_dim },
		BlinkCmpGhostText = { fg = colors.fg_subtle, italic = true },

		-- Lualine
		lualine_a_normal = { fg = colors.bg, bg = colors.gray_light, bold = true },
		lualine_a_insert = { fg = colors.bg, bg = colors.accent_green, bold = true },
		lualine_a_visual = { fg = colors.bg, bg = colors.accent_purple, bold = true },
		lualine_a_replace = { fg = colors.bg, bg = colors.error, bold = true },
		lualine_a_command = { fg = colors.bg, bg = colors.accent_orange, bold = true },
		lualine_a_terminal = { fg = colors.bg, bg = colors.accent_cyan, bold = true },
		lualine_a_inactive = { fg = colors.fg_dim, bg = colors.bg_subtle },

		lualine_b_normal = { fg = colors.fg, bg = colors.bg_subtle },
		lualine_b_insert = { fg = colors.fg, bg = colors.bg_subtle },
		lualine_b_visual = { fg = colors.fg, bg = colors.bg_subtle },
		lualine_b_replace = { fg = colors.fg, bg = colors.bg_subtle },
		lualine_b_command = { fg = colors.fg, bg = colors.bg_subtle },
		lualine_b_terminal = { fg = colors.fg, bg = colors.bg_subtle },
		lualine_b_inactive = { fg = colors.fg_dim, bg = colors.bg_alt },

		lualine_c_normal = { fg = colors.fg_dim, bg = colors.bg },
		lualine_c_insert = { fg = colors.fg_dim, bg = colors.bg },
		lualine_c_visual = { fg = colors.fg_dim, bg = colors.bg },
		lualine_c_replace = { fg = colors.fg_dim, bg = colors.bg },
		lualine_c_command = { fg = colors.fg_dim, bg = colors.bg },
		lualine_c_terminal = { fg = colors.fg_dim, bg = colors.bg },
		lualine_c_inactive = { fg = colors.fg_subtle, bg = colors.bg },

		-- Fidget.nvim (LSP progress notifications)
		FidgetTitle = { fg = colors.accent_blue, bold = true },
		FidgetTask = { fg = colors.fg_dim },
		FidgetIcon = { fg = colors.accent_cyan },
	}
end

return M
