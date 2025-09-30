local M = {}

---@param colors table
function M.get(colors)
	MasonHeader = { fg = colors.gray_light, bold = true }
	MasonHeaderSecondary = { fg = colors.accent_blue, bold = true }
end

return M
