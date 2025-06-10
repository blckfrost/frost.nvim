# Frost.nvim

A subtle monochrome Neovim theme with low-contrast color hints for distraction-free coding.

## ✨ Features

- **Monochrome base** with subtle color accents
- **Low contrast design** to reduce eye strain
- **Modern syntax highlighting** with Tree-sitter support
- **LSP integration** with diagnostic colors
- **Plugin support** for Telescope, Neo-tree, Which-key, and more
- **Professional aesthetic** perfect for focused work

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "blckfrost/frost.nvim",
  priority = 1000,
  config = function()
    require("frost").setup()
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'blckfrost/frost.nvim',
  config = function()
    require('frost').setup()
  end
}
```

``

## 🚀 Usage

### Method 1: Lua setup (recommended)

```lua
require('frost').setup()
```

### Method 2: Traditional colorscheme

```lua
vim.cmd('colorscheme frost')
```

### Method 3: With options

```lua
require('frost').setup({
  -- Add any future customization options here
})
```

## 🎨 Color Palette

The theme uses a carefully crafted monochrome palette with subtle color hints:

- **Background**: `#1a1a1a` - Deep dark base
- **Foreground**: `#d9d9d9` - Clean light text
- **Accents**: Subtle tinted grays for syntax highlighting
- **Functions**: Blue-gray tint (`#7a8a95`)
- **Strings**: Cyan-gray tint (`#7a9295`)
- **Keywords**: Purple-gray tint (`#8a7a95`)
- **Numbers**: Orange-gray tint (`#95857a`)
- **Comments**: Green-gray tint (`#7a957a`)

## 🔌 Plugin Support

Works seamlessly with popular Neovim plugins:

- **LSP** - Diagnostic highlighting and references
- **Tree-sitter** - Modern syntax highlighting
- **Telescope** - Fuzzy finder integration
- **Neo-tree** - File explorer styling
- **Which-key** - Keybinding helper
- **Git signs** - Git integration
- **Completion** - nvim-cmp styling

## 🖼️ Screenshots

_Add screenshots here showing the theme in action_

## 🤝 Contributing

Issues and pull requests are welcome! Please feel free to contribute.

## 📄 License

MIT License - see LICENSE file for details.
