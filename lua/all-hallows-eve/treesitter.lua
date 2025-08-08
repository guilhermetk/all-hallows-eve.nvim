local colors = require("all-hallows-eve.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Treesitter highlight groups
  -- Comments (// This is a comment, /* block comment */, # Python comment)
  vim.api.nvim_set_hl(0, "@comment", { fg = p.comment })
  vim.api.nvim_set_hl(0, "@comment.documentation", { fg = p.comment }) -- /** JSDoc comments */
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.red }) -- // ERROR: something wrong
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.orange }) -- // WARNING: be careful
  vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.yellow, bold = true }) -- // TODO: implement this
  vim.api.nvim_set_hl(0, "@comment.fixme", { fg = p.red, bold = true }) -- // FIXME: broken code
  vim.api.nvim_set_hl(0, "@comment.hack", { fg = p.orange, bold = true }) -- // HACK: temporary solution
  vim.api.nvim_set_hl(0, "@comment.xxx", { fg = p.purple, bold = true }) -- // XXX: questionable code
  vim.api.nvim_set_hl(0, "@comment.note", { fg = p.comment }) -- // NOTE: important info

  -- Constants (const MAX_SIZE = 100, true, false, null, undefined)
  vim.api.nvim_set_hl(0, "@constant", { fg = p.blue })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.blue, bold = true }) -- true, false, null, undefined, None, True
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.blue }) -- #define MAX_SIZE 100

  -- Strings ("Hello World", 'single quotes', `template literals`, """multiline""")
  vim.api.nvim_set_hl(0, "@string", { fg = p.green })
  vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.green }) -- """Docstring content"""
  vim.api.nvim_set_hl(0, "@string.regex", { fg = p.yellow }) -- /pattern/gi, r"regex"
  vim.api.nvim_set_hl(0, "@string.escape", { fg = p.fg3 }) -- \n, \t, \", \\
  vim.api.nvim_set_hl(0, "@string.special", { fg = p.interpolated_fg, bg = p.interpolated_bg }) -- f"formatted {variable}"

  -- Characters ('a', 'b', '\n')
  vim.api.nvim_set_hl(0, "@character", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.orange }) -- '\0', '\x41'

  -- Numbers (42, 3.14, 0xFF, 0b1010, 1e10)
  vim.api.nvim_set_hl(0, "@number", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@number.float", { fg = p.orange }) -- 3.14, 2.5f

  -- Booleans (true, false, True, False)
  vim.api.nvim_set_hl(0, "@boolean", { fg = p.orange })

  -- Functions (function myFunc(), def my_function():, const arrow = () => {})
  vim.api.nvim_set_hl(0, "@function", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.red }) -- console.log(), print(), len()
  vim.api.nvim_set_hl(0, "@function.call", { fg = p.fg1 }) -- myFunc(), someFunction()
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.red }) -- #define FUNC(x) ((x) * 2)
  vim.api.nvim_set_hl(0, "@method", { fg = p.fg1 }) -- obj.method(), this.doSomething()
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.fg1 }) -- obj.method(), array.push()
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.fg1 }) -- new MyClass(), MyClass(), __init__()

  -- Variables (let myVar, const data, var counter, myVariable)
  vim.api.nvim_set_hl(0, "@variable", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.fg1 }) -- this, self, __name__, arguments
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.fg1, italic = true }) -- function(param1, param2)
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.fg1 }) -- obj.property, this.value

  -- Properties (obj.prop, this.name, user.email, data.length)
  vim.api.nvim_set_hl(0, "@property", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@field", { fg = p.fg1 }) -- struct fields, class properties

  -- Types (string, int, boolean, MyClass, React.Component)
  vim.api.nvim_set_hl(0, "@type", { fg = p.fg1, underline = true })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.fg1, underline = true }) -- int, string, boolean, number
  vim.api.nvim_set_hl(0, "@type.definition", { fg = p.fg1, underline = true }) -- class MyClass, interface User
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = p.orange }) -- const, readonly, static

  -- Keywords (if, else, for, while, class, function, return, import)
  vim.api.nvim_set_hl(0, "@keyword", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.orange }) -- function, def, func
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.orange }) -- and, or, not, in, is
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.orange }) -- return, yield
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.orange }) -- import, from, include, require
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.orange }) -- if, else, elif, switch, case
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.orange }) -- for, while, do, loop
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.red }) -- try, catch, except, finally, throw
  vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.preprocessor }) -- #include, #define, use strict
  vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.preprocessor }) -- #define, #ifdef

  -- Operators (+, -, *, /, =, ==, !=, &&, ||, +=)
  vim.api.nvim_set_hl(0, "@operator", { fg = p.fg1 })

  -- Punctuation (;, ,, ., :, {}, [], ())
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg1 }) -- , ; :
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg1 }) -- () [] {}
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.magenta }) -- ${}, #{}  template literals

  -- Markup (for markdown, etc.)
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.gray, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg1, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.fg0, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.gray, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.amber, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.pink })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.amber, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.yellow })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.magenta })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.orange })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.orange })

  -- Tags (HTML/XML: <div>, <Header>, <p>, <MyComponent>)
  vim.api.nvim_set_hl(0, "@tag", { fg = p.orange }) -- div, header, main, MyComponent
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.pink }) -- className, id, href, onClick
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.gray }) -- < > </ />

  -- Attributes (@decorators, [attributes], #[derive])
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.yellow }) -- @Component, @override, [Serializable]

  -- Labels (goto labels, break/continue labels)
  vim.api.nvim_set_hl(0, "@label", { fg = p.magenta }) -- label:, break label

  -- Namespace (std::, React., namespace MyNamespace)
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.pink }) -- std, React, System
  vim.api.nvim_set_hl(0, "@module", { fg = p.pink }) -- import * from 'module'

  -- Preproc
  vim.api.nvim_set_hl(0, "@preproc", { fg = p.magenta })

  -- Include
  vim.api.nvim_set_hl(0, "@include", { fg = p.magenta })

  -- Define
  vim.api.nvim_set_hl(0, "@define", { fg = p.magenta })

  -- Conditional
  vim.api.nvim_set_hl(0, "@conditional", { fg = p.magenta })

  -- Repeat
  vim.api.nvim_set_hl(0, "@repeat", { fg = p.magenta })

  -- Exception
  vim.api.nvim_set_hl(0, "@exception", { fg = p.red })

  -- Special characters
  vim.api.nvim_set_hl(0, "@character.printf", { fg = p.orange })

  -- Diff (git diff colors: +added, -removed, ~modified)
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.orange }) -- + added lines
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.red }) -- - removed lines
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.yellow }) -- ~ modified lines

  -- Language-specific
  -- Lua
  vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.lua", { fg = p.red, italic = true })

  -- Python
  vim.api.nvim_set_hl(0, "@function.builtin.python", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = p.red, italic = true })

  -- JavaScript/TypeScript
  vim.api.nvim_set_hl(0, "@function.builtin.javascript", { fg = p.fg2, bold = true })
  vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { fg = p.red, italic = true })

end

return M
