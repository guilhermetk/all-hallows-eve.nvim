local M = {}

M.palette = {
	-- All Hallows Eve color palette from Vim theme
	bg0 = "#000000", -- Pure black background
	bg1 = "#000000", -- Main background
	bg2 = "#191919", -- CursorLine/CursorColumn background
	bg3 = "#0d0d0d", -- NonText background
	bg4 = "#404040", -- SpecialKey/NonText foreground
	
	fg0 = "#ffffff", -- Pure white
	fg1 = "#ffffff", -- Main foreground
	fg2 = "#ffffff", -- Secondary foreground
	fg3 = "#808080", -- LineNr foreground
	
	-- UI colors
	cursor_bg = "#ffffff", -- Cursor background
	visual_bg = "#644d6e", -- Visual selection background
	search_bg = "#432811", -- Search background
	split_fg = "#4a4a4a", -- VertSplit color
	status_bg = "#4a4a4a", -- StatusLine background
	pmenu_sel_bg = "#644d6e", -- PmenuSel background
	
	-- Syntax colors
	comment = "#9933cc", -- Comment purple
	keyword = "#cc7833", -- Keywords/operators/statements (orange)
	string = "#66cc33", -- String green
	constant = "#3387cc", -- Constants/numbers/booleans (blue)
	regexp = "#cccc33", -- Regular expressions (yellow)
	rails_method = "#c83730", -- Rails methods (red)
	
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

	-- Core UI highlights (matching Vim theme exactly)
	vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
	vim.api.nvim_set_hl(0, "Cursor", { bg = p.cursor_bg })
	vim.api.nvim_set_hl(0, "Visual", { bg = p.visual_bg })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = p.bg2 })
	vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = p.split_fg, bg = p.split_fg })
	vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.split_fg, bg = p.split_fg })
	vim.api.nvim_set_hl(0, "MatchParen", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.status_bg, bold = true })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg1, bg = p.status_bg })
	vim.api.nvim_set_hl(0, "Pmenu", {})
	vim.api.nvim_set_hl(0, "PmenuSel", { bg = p.pmenu_sel_bg })
	vim.api.nvim_set_hl(0, "IncSearch", { bg = p.search_bg })
	vim.api.nvim_set_hl(0, "Search", { bg = p.search_bg })
	vim.api.nvim_set_hl(0, "Directory", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Folded", { fg = p.comment, bg = p.bg1 })

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
	vim.api.nvim_set_hl(0, "Identifier", {})
	vim.api.nvim_set_hl(0, "Keyword", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "Label", { fg = p.string })
	vim.api.nvim_set_hl(0, "NonText", { fg = p.gray2, bg = p.bg3 })
	vim.api.nvim_set_hl(0, "Number", { fg = p.constant })
	vim.api.nvim_set_hl(0, "Operator", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "PreProc", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "Special", { fg = p.fg1 })
	vim.api.nvim_set_hl(0, "SpecialKey", { fg = p.gray2, bg = p.bg2 })
	vim.api.nvim_set_hl(0, "Statement", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "StorageClass", {})
	vim.api.nvim_set_hl(0, "String", { fg = p.string })
	vim.api.nvim_set_hl(0, "Tag", {})
	vim.api.nvim_set_hl(0, "Title", { fg = p.fg1, bold = true })
	vim.api.nvim_set_hl(0, "Todo", { fg = p.comment, reverse = true, bold = true })
	vim.api.nvim_set_hl(0, "Type", {})
	vim.api.nvim_set_hl(0, "Underlined", { underline = true })

	-- Language-specific highlights from Vim theme
	-- Ruby
	vim.api.nvim_set_hl(0, "rubyClass", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "rubyFunction", { fg = p.red })
	vim.api.nvim_set_hl(0, "rubyInterpolationDelimiter", {})
	vim.api.nvim_set_hl(0, "rubySymbol", { fg = p.constant })
	vim.api.nvim_set_hl(0, "rubyConstant", {})
	vim.api.nvim_set_hl(0, "rubyStringDelimiter", { fg = p.string })
	vim.api.nvim_set_hl(0, "rubyBlockParameter", {})
	vim.api.nvim_set_hl(0, "rubyInstanceVariable", {})
	vim.api.nvim_set_hl(0, "rubyInclude", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "rubyGlobalVariable", {})
	vim.api.nvim_set_hl(0, "rubyRegexp", { fg = p.regexp })
	vim.api.nvim_set_hl(0, "rubyRegexpDelimiter", { fg = p.regexp })
	vim.api.nvim_set_hl(0, "rubyEscape", { fg = p.constant })
	vim.api.nvim_set_hl(0, "rubyControl", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "rubyClassVariable", {})
	vim.api.nvim_set_hl(0, "rubyOperator", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "rubyException", { fg = p.keyword })
	vim.api.nvim_set_hl(0, "rubyPseudoVariable", {})
	vim.api.nvim_set_hl(0, "rubyRailsUserClass", {})
	vim.api.nvim_set_hl(0, "rubyRailsARAssociationMethod", { fg = p.rails_method })
	vim.api.nvim_set_hl(0, "rubyRailsARMethod", { fg = p.rails_method })
	vim.api.nvim_set_hl(0, "rubyRailsRenderMethod", { fg = p.rails_method })
	vim.api.nvim_set_hl(0, "rubyRailsMethod", { fg = p.rails_method })

	-- ERB
	vim.api.nvim_set_hl(0, "erubyDelimiter", {})
	vim.api.nvim_set_hl(0, "erubyComment", { fg = p.comment })
	vim.api.nvim_set_hl(0, "erubyRailsMethod", { fg = p.red })

	-- HTML
	vim.api.nvim_set_hl(0, "htmlTag", {})
	vim.api.nvim_set_hl(0, "htmlEndTag", {})
	vim.api.nvim_set_hl(0, "htmlTagName", {})
	vim.api.nvim_set_hl(0, "htmlArg", {})
	vim.api.nvim_set_hl(0, "htmlSpecialChar", { fg = p.constant })

	-- JavaScript
	vim.api.nvim_set_hl(0, "javaScriptFunction", { fg = p.red })
	vim.api.nvim_set_hl(0, "javaScriptRailsFunction", { fg = p.red })
	vim.api.nvim_set_hl(0, "javaScriptBraces", {})

	-- YAML
	vim.api.nvim_set_hl(0, "yamlKey", {})
	vim.api.nvim_set_hl(0, "yamlAnchor", {})
	vim.api.nvim_set_hl(0, "yamlAlias", {})
	vim.api.nvim_set_hl(0, "yamlDocumentHeader", { fg = p.string })

	-- CSS
	vim.api.nvim_set_hl(0, "cssURL", {})
	vim.api.nvim_set_hl(0, "cssFunctionName", { fg = p.red })
	vim.api.nvim_set_hl(0, "cssColor", { fg = p.constant })
	vim.api.nvim_set_hl(0, "cssPseudoClassId", {})
	vim.api.nvim_set_hl(0, "cssClassName", {})
	vim.api.nvim_set_hl(0, "cssValueLength", { fg = p.constant })
	vim.api.nvim_set_hl(0, "cssCommonAttr", {})
	vim.api.nvim_set_hl(0, "cssBraces", {})

	-- Apply plugin theming
	pcall(function() require("all-hallows-eve.treesitter").apply() end)
	pcall(function() require("all-hallows-eve.lualine").apply() end)
	pcall(function() require("all-hallows-eve.snacks").apply() end)
	pcall(function() require("all-hallows-eve.todo-comments").apply() end)
	pcall(function() require("all-hallows-eve.noice").apply() end)
	pcall(function() require("all-hallows-eve.neotree").apply() end)
end

return M

