local M = {}

function M.setup(opts)
  opts = opts or {}
  -- Store any user configuration options here if needed
end

function M.load()
  require("all-hallows-eve.colors").apply()
end

function M.colorscheme()
  M.load()
end

function M.lualine()
  return require("all-hallows-eve.lualine")
end

return M