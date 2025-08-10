# Wood

A simple, elegant, and dark theme for Neovim.

<p align="center">
  <img src="theme.png" alt="Wood Theme Preview">
</p>

## Installation

Install with your favorite plugin manager.

### lazy.nvim

Add the following to your `lazy.nvim` configuration:

```lua
{
  "bjarneo/wood.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme wood]])
  end,
}
```

## Usage

To use the theme, add the following to your `init.lua`:

```lua
vim.cmd.colorscheme "wood"
```

