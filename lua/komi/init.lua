local colors = require("komi.colors").colors
local config = require("komi.config")

--- Apply terminal highlighting.
local function set_terminal_colors()
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.bg
	vim.g.terminal_color_2 = colors.bg
	vim.g.terminal_color_3 = colors.bg
	vim.g.terminal_color_4 = colors.bg
	vim.g.terminal_color_5 = colors.bg
	vim.g.terminal_color_6 = colors.bg
	vim.g.terminal_color_7 = colors.bg
	vim.g.terminal_color_8 = colors.bg
	vim.g.terminal_color_9 = colors.error
	vim.g.terminal_color_10 = colors.bg
	vim.g.terminal_color_11 = colors.bg
	vim.g.terminal_color_12 = colors.bg
	vim.g.terminal_color_13 = colors.bg
	vim.g.terminal_color_14 = colors.regexp
	vim.g.terminal_color_15 = colors.comment
	vim.g.terminal_color_background = colors.bg
	vim.g.terminal_color_foreground = colors.fg
end

--- Apply groups highlighting.
local function set_groups()
	local groups = require("komi.groups")
	groups =
		vim.tbl_extend("force", groups, type(config.overrides) == "function" and config.overrides() or config.overrides)

	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

local M = {}

--- Apply user settings.
---@param values table
function M.setup(values)
	setmetatable(config, { __index = vim.tbl_extend("force", config.defaults, values) })
end

M.load = function()
	if vim.version().minor < 7 then
		vim.notify_once("komi.nvim: you must use neovim 0.7 or higher")
		return
	end

	if vim.g.colors_name then
		vim.notify_once("komi.nvim: colors cleared")
	end

	vim.g.colors_name = "komi"
	vim.o.termguicolors = true

	set_terminal_colors()
	set_groups()
end

return M
