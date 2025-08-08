local colors = require("all-hallows-eve.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Treesitter highlight groups based on All Hallows Eve theme
  -- Comments
  vim.api.nvim_set_hl(0, "@comment", { fg = p.comment })
  vim.api.nvim_set_hl(0, "@comment.documentation", { fg = p.comment })
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.red })
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.comment, reverse = true, bold = true })
  vim.api.nvim_set_hl(0, "@comment.note", { fg = p.comment })

  -- Constants
  vim.api.nvim_set_hl(0, "@constant", { fg = p.constant })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.constant })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.constant })

  -- Strings
  vim.api.nvim_set_hl(0, "@string", { fg = p.string })
  vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.string })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = p.regexp })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = p.constant })
  vim.api.nvim_set_hl(0, "@string.special", { fg = p.string })

  -- Characters
  vim.api.nvim_set_hl(0, "@character", { fg = p.constant })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.constant })

  -- Numbers
  vim.api.nvim_set_hl(0, "@number", { fg = p.constant })
  vim.api.nvim_set_hl(0, "@number.float", { fg = p.constant })

  -- Booleans
  vim.api.nvim_set_hl(0, "@boolean", { fg = p.constant })

  -- Functions
  vim.api.nvim_set_hl(0, "@function", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.rails_method })
  vim.api.nvim_set_hl(0, "@function.call", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.rails_method })
  vim.api.nvim_set_hl(0, "@method", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.fg1 })

  -- Variables
  vim.api.nvim_set_hl(0, "@variable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.fg1 })

  -- Properties
  vim.api.nvim_set_hl(0, "@property", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@field", { fg = p.fg1 })

  -- Types
  vim.api.nvim_set_hl(0, "@type", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@type.definition", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = p.keyword })

  -- Keywords
  vim.api.nvim_set_hl(0, "@keyword", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.keyword })

  -- Operators
  vim.api.nvim_set_hl(0, "@operator", { fg = p.keyword })

  -- Punctuation
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.fg1 })

  -- Markup
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.gray1, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg1, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.gray1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.regexp })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.constant, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.string })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.constant, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.regexp })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.regexp })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.keyword })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.keyword })

  -- Tags
  vim.api.nvim_set_hl(0, "@tag", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.fg1 })

  -- Attributes
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.keyword })

  -- Labels
  vim.api.nvim_set_hl(0, "@label", { fg = p.string })

  -- Namespace
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@module", { fg = p.fg1 })

  -- Diff
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.string })
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.red })
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.regexp })

end

return M
