# all-hallows-eve.nvim

An All Hallows Eve colorscheme for Neovim, inspired by the classic TextMate theme.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "guilhermetk/all-hallows-eve.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "all-hallows-eve"
  end,
}
```

I've only tested this with lazy.nvim, but it should work with other plugin managers.

## Configuration

### Basic Usage

```lua
-- Apply the complete theme (includes treesitter and Snacks support)
require("all-hallows-eve").colorscheme()

-- Or use the traditional method
vim.cmd.colorscheme "all-hallows-eve"
```

## Contributing

Pull requests and issues are welcome! Please open an issue to discuss your ideas or report bugs.

## License

MIT
