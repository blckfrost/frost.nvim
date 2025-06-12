local M = {}

local colors = require("frost.colors")
local highlights = require("frost.highlights")
local plugins = require("frost.plugins")

-- Apply the theme
function M.setup()
    -- Clear existing highlights
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.background = "dark"
    vim.g.colors_name = "frost"

    -- Get all highlights
    local all_highlights = vim.tbl_extend(
        "force",
        highlights.get_highlights(colors.colors),
        plugins.get_plugin_highlights(colors.colors)
    )

    -- Apply all highlights
    for group, style in pairs(all_highlights) do
        vim.api.nvim_set_hl(0, group, style)
    end
end

-- Auto-setup if called as colorscheme
if vim.g.colors_name == "frost" then
    M.setup()
end

return M
