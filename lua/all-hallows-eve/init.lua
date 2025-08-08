local M = {}

function M.colorscheme()
  -- Load the main colors
  require("all-hallows-eve.colors").apply()
end

function M.lualine()
  return require("all-hallows-eve.lualine")
end

function M.snacks()
  require("all-hallows-eve.snacks").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M