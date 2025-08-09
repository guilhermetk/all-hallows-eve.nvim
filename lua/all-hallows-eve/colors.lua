local M = {}

M.palette = {
	-- All Hallows Eve color palette from Vim theme
	bg0 = "#000000", -- Pure black background
	bg1 = "#000000", -- Main background
	bg2 = "#0f0f0f", -- CursorLine/CursorColumn background (darker)
	bg3 = "#0a0a0a", -- NonText background (darker)
	bg4 = "#1a1a1a", -- Floating windows, popups
	bg5 = "#151515", -- Slightly lighter for borders

	fg0 = "#ffffff", -- Pure white
	fg1 = "#ffffff", -- Main foreground
	fg2 = "#e6e6e6", -- Secondary foreground (slightly dimmed)
	fg3 = "#666666", -- LineNr foreground (dimmed more)
	fg4 = "#4a4a4a", -- Inactive text

	-- UI colors
	cursor_bg = "#ffffff", -- Cursor background
	visual_bg = "#2d1b3d", -- Visual selection background (darker purple)
	search_bg = "#3d2817", -- Search background (darker orange)
	split_fg = "#2a2a2a", -- VertSplit color (darker)
	status_bg = "#1a1a1a", -- StatusLine background (darker)
	pmenu_bg = "#0f0f0f", -- Popup menu background
	pmenu_sel_bg = "#2d1b3d", -- PmenuSel background (matching visual)
	border_fg = "#333333", -- Border color for floating windows

	-- Syntax colors
	comment = "#9933cc", -- Comment purple
	keyword = "#cc7833", -- Keywords/operators/statements (orange)
	string = "#66cc33", -- String green
	constant = "#3387cc", -- Constants/numbers/booleans (blue)
	regexp = "#cccc33", -- Regular expressions (yellow)

	-- Semantic colors
	red = "#c83730",
	orange = "#cc7833",
	yellow = "#cccc33",
	green = "#66cc33",
	blue = "#3387cc",
	purple = "#9933cc",

	-- Additional grays
	gray = "#4a4a4a",
	gray1 = "#808080",
	gray2 = "#404040",
}

function M.apply()
	local p = M.palette
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.background = "dark"
	vim.g.colors_name = "all-hallows-eve"

	-- Ensure pure black background
	vim.cmd("highlight clear Normal")
	vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg0 })
	vim.api.nvim_set_hl(0, "NormalNC", { fg = p.fg1, bg = p.bg0 })
	vim.api.nvim_set_hl(0, "NormalFloat", { fg = p.fg1, bg = p.bg4 })
	vim.api.nvim_set_hl(0, "FloatBorder", { fg = p.border_fg, bg = p.bg4 })
	vim.api.nvim_set_hl(0, "Cursor", { bg = p.cursor_bg })
	vim.api.nvim_set_hl(0, "Visual", { bg = p.visual_bg })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.fg2, bg = p.bg2, bold = true })
	vim.api.nvim_set_hl(0, "SignColumn", { fg = p.fg3, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = p.split_fg, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.split_fg, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "MatchParen", { fg = p.keyword, bg = p.bg2, bold = true })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg2, bg = p.status_bg })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg4, bg = p.status_bg })
	vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg4, bg = p.status_bg })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.status_bg })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg2, bold = true })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.pmenu_bg })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.pmenu_sel_bg, bold = true })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg5 })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg4 })
	vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg1, bg = p.orange, bold = true })
	vim.api.nvim_set_hl(0, "Search", { bg = p.search_bg })
	vim.api.nvim_set_hl(0, "Directory", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Folded", { fg = p.comment, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "FoldColumn", { fg = p.fg4, bg = p.bg1 })

	-- Additional UI improvements
	vim.api.nvim_set_hl(0, "WildMenu", { fg = p.fg1, bg = p.pmenu_sel_bg })
	vim.api.nvim_set_hl(0, "Question", { fg = p.green })
	vim.api.nvim_set_hl(0, "MoreMsg", { fg = p.green })
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 })
	vim.api.nvim_set_hl(0, "CmdLine", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = p.bg0, bg = p.bg0 })

	-- Ensure terminal colors don't override
	if vim.fn.has("termguicolors") == 1 then
		vim.o.termguicolors = true
	end

	-- Basic syntax highlighting (matching Vim theme)
	vim.api.nvim_set_hl(0, "Boolean", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Character", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Comment", { fg = p.comment })
	vim.api.nvim_set_hl(0, "Conditional", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "Constant", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Define", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "ErrorMsg", {})
	vim.api.nvim_set_hl(0, "WarningMsg", {})
	vim.api.nvim_set_hl(0, "Float", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Function", {})
	vim.api.nvim_set_hl(0, "Method", { fg = p.red })
	vim.api.nvim_set_hl(0, "Identifier", {})
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "Label", { fg = p.string })
	vim.api.nvim_set_hl(0, "NonText", { fg = p.fg4, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "Number", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Operator", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "Special", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "SpecialKey", { fg = p.fg4, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "Whitespace", { fg = p.fg4 })
	vim.api.nvim_set_hl(0, "Statement", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "StorageClass", {})
	vim.api.nvim_set_hl(0, "String", { fg = p.string })
	vim.api.nvim_set_hl(0, "Tag", {})
	vim.api.nvim_set_hl(0, "Title", { fg = p.fg1, bold = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.comment, reverse = true, bold = true })
	vim.api.nvim_set_hl(0, "Type", {})
	vim.api.nvim_set_hl(0, "Underlined", { underline = true })

	-- Diagnostic highlights
	vim.api.nvim_set_hl(0, "DiagnosticError", { fg = p.red })
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = p.orange })
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = p.blue })
	vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = p.purple })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = p.red })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = p.orange })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = p.blue })
	vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = p.purple })

	-- Git signs
	vim.api.nvim_set_hl(0, "DiffAdd", { fg = p.green, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = p.orange, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "DiffDelete", { fg = p.red, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "DiffText", { fg = p.yellow, bg = p.bg2, bold = true })

	-- LSP highlights
	vim.api.nvim_set_hl(0, "LspReferenceText", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = p.bg2, bold = true })

	-- Apply plugin theming
	pcall(function()
		require("all-hallows-eve.treesitter").apply()
	end)
	pcall(function()
		require("all-hallows-eve.lualine").apply()
	end)
	pcall(function()
		require("all-hallows-eve.snacks").apply()
	end)
	pcall(function()
		require("all-hallows-eve.todo-comments").apply()
	end)
	pcall(function()
		require("all-hallows-eve.noice").apply()
	end)
	pcall(function()
		require("all-hallows-eve.neotree").apply()
	end)
	pcall(function()
		require("all-hallows-eve.mason").apply()
	end)
end

return M
