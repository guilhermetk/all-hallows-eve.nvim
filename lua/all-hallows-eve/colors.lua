local M = {}

M.palette = {
  -- All Hallows Eve color palette
  bg0      = "#000000", -- Pure black background
  bg1      = "#000000", -- Main background 
  bg2      = "#333300", -- Line highlight
  bg3      = "#434242", -- Text base background
  bg4      = "#404040", -- Invisibles
  fg0      = "#FFFFFF", -- Pure white
  fg1      = "#FFFFFF", -- Main foreground
  fg2      = "#FFFFFF", -- Secondary foreground
  fg3      = "#AAAAAA", -- String escapes
  -- selection
  selbg    = "#73597E", -- Selection background (removing alpha)
  selfg    = "#FFFFFF",

  comment  = "#9933CC", -- Purple comments

  -- All Hallows Eve accent colors
  red      = "#C83730", -- Support function red
  orange   = "#CC7833", -- Keyword orange
  blue     = "#3387CC", -- Constant blue
  green    = "#66CC33", -- String green
  purple   = "#9933CC", -- Comment purple
  yellow   = "#CCCC33", -- Regular expression/literal yellow
  
  -- Additional colors from theme
  preprocessor = "#D0D0FF", -- Pre-processor line
  block_comment_bg = "#9B9B9B", -- Block comment background
  interpolated_bg = "#CCCC33", -- String interpolated background
  interpolated_fg = "#000000", -- String interpolated foreground
  escape_executed = "#555555", -- String escapes executed

  gray     = "#5C6370",
  gray1    = "#A3A3A3",
  gray2    = "#737373",
}

function M.apply()
  local p = M.palette
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "all-hallows-eve"

  -- Basic highlight groups
  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 }) -- Cursor line background
  vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg1, bg = p.fg1 }) -- White cursor
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 }) -- Cursor column background
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment }) -- Purple comments
  vim.api.nvim_set_hl(0, "Constant", { fg = p.blue }) -- Blue constants
  vim.api.nvim_set_hl(0, "String", { fg = p.green }) -- Green strings
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.fg1 }) -- White identifiers
  vim.api.nvim_set_hl(0, "Statement", { fg = p.orange }) -- Orange keywords/statements
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.preprocessor }) -- Light blue preprocessor
  vim.api.nvim_set_hl(0, "Type", { fg = p.fg1, underline = true }) -- White underlined types
  vim.api.nvim_set_hl(0, "Special", { fg = p.yellow }) -- Yellow special chars
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.fg1, underline = true }) -- White underlines
  vim.api.nvim_set_hl(0, "Todo", { fg = p.yellow, bg = p.bg1, bold = true }) -- Yellow todos

  -- Essential UI elements for better readability
  vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 }) -- Line numbers in subtle gray
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.orange, bold = true }) -- Current line number highlighted
  vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg }) -- Selection highlighting
  vim.api.nvim_set_hl(0, "Search", { fg = p.bg1, bg = p.yellow }) -- Search highlighting
  vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg1, bg = p.orange }) -- Incremental search
  vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 }) -- Status line
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 }) -- Inactive status line
  vim.api.nvim_set_hl(0, "VertSplit", { fg = p.bg4 }) -- Window splits
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.bg4 }) -- Modern window separators
  vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 }) -- Tab line
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 }) -- Tab line fill
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true }) -- Selected tab
  
  -- Popup menus for better completion readability
  vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg3 }) -- Popup menu
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg4 }) -- Selected popup item
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg4 }) -- Popup scrollbar
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 }) -- Popup scrollbar thumb
  
  -- Error and warning highlights
  vim.api.nvim_set_hl(0, "Error", { fg = p.red, bold = true }) -- Error text
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.red, bold = true }) -- Error messages
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.orange, bold = true }) -- Warning messages
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 }) -- Mode messages

  -- Apply Treesitter theming
  require("all-hallows-eve.treesitter").apply()

  -- Apply Snacks.nvim theming
  require("all-hallows-eve.snacks").apply()

  -- Apply todo-comments.nvim theming
  require("all-hallows-eve.todo-comments").apply()

  -- Apply Noice.nvim theming
  require("all-hallows-eve.noice").apply()

  -- Apply neotree theming
  require("all-hallows-eve.neotree").apply()
end

return M 