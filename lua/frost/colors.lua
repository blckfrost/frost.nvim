local M = {}

M.colors = {
	-- Base colors
	bg = "#191919", -- Main background
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

return M
