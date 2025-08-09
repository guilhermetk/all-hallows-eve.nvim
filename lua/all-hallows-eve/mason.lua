local M = {}

function M.apply()
	local p = require("all-hallows-eve.colors").palette

	-- Mason UI highlight groups
	vim.api.nvim_set_hl(0, "MasonBackdrop", { bg = p.bg0 })
	vim.api.nvim_set_hl(0, "MasonNormal", { fg = p.fg1, bg = p.bg4 })

	-- Headers and titles
	vim.api.nvim_set_hl(0, "MasonHeader", { fg = p.bg0, bg = p.orange, bold = true })
	vim.api.nvim_set_hl(0, "MasonHeaderSecondary", { fg = p.bg0, bg = p.blue, bold = true })
	vim.api.nvim_set_hl(0, "MasonHeading", { fg = p.fg1, bold = true })

	-- Primary highlighting
	vim.api.nvim_set_hl(0, "MasonHighlight", { fg = p.blue })
	vim.api.nvim_set_hl(0, "MasonHighlightBlock", { fg = p.bg0, bg = p.blue })
	vim.api.nvim_set_hl(0, "MasonHighlightBlockBold", { fg = p.bg0, bg = p.blue, bold = true })

	-- Secondary highlighting
	vim.api.nvim_set_hl(0, "MasonHighlightSecondary", { fg = p.orange })
	vim.api.nvim_set_hl(0, "MasonHighlightBlockSecondary", { fg = p.bg0, bg = p.orange })
	vim.api.nvim_set_hl(0, "MasonHighlightBlockBoldSecondary", { fg = p.bg0, bg = p.orange, bold = true })

	-- Links
	vim.api.nvim_set_hl(0, "MasonLink", { fg = p.blue, underline = true })

	-- Muted/subtle text
	vim.api.nvim_set_hl(0, "MasonMuted", { fg = p.fg4 })
	vim.api.nvim_set_hl(0, "MasonMutedBlock", { fg = p.bg0, bg = p.fg4 })
	vim.api.nvim_set_hl(0, "MasonMutedBlockBold", { fg = p.bg0, bg = p.fg4, bold = true })

	-- Status and messages
	vim.api.nvim_set_hl(0, "MasonError", { fg = p.red })
	vim.api.nvim_set_hl(0, "MasonWarning", { fg = p.yellow })
end

return M