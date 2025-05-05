# rajayonin's Neovim config
My configuration files for [Neovim](https://neovim.io/).



## General configuration
General configuration can be found at [`lua/settings.lua`](.config/nvim/lua/settings.lua).

<!-- TODO -->


## Plugins
My plugin manager is [lazy.nvim](https://github.com/folke/lazy.nvim).

Plugins can be found at [`lua/plugins/`](.config/nvim/lua/plugins/).

> [!NOTE]
> Configuration for each plugin is stored in its respective file, following the filename structure of `<plugin>.lua`.

The plugins I use are:
- [AutoIndent.nvim](https://github.com/VidocqH/auto-indent.nvim): Better & automatic indentation
<!-- - [Comment.nvim](https://github.com/numToStr/Comment.nvim): Enable quick commenting in/out lines (replaced by Neovim's comment implementation) -->
- [barbar.nvim](https://github.com/romgrk/barbar.nvim): Pretty tabs
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim): In-editor Git integration
- [guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim): Automatic indentation detection
<!-- - [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Indentation guides (replaced by snacks.nvim) -->
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): Pretty statusline
- [move.nvim](https://github.com/fedepujol/move.nvim): Easily move lines and blocks
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim): File explorer
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs): Automatic insertion of delimeter pairs (brackets, parenthesis, etc.)
- [nvim-lastplace](https://github.com/mrcjkb/nvim-lastplace): Reopen files at last position
- [nvim-numbertoggle](https://github.com/sitiom/nvim-numbertoggle): Use relative line numbers on current buffer, absolute on the rest
- [nvim-surround](https://github.com/kylechui/nvim-surround): Extra support for editing around delimeters
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Better syntax support
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context): Visually show the current context in the code
- [rainbow-delimeters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim): Color-code delimeters
- [snacks.nvim](https://github.com/folke/snacks.nvim): Collection of small QoL plugins
  - `bigfile`: Better support for big files
  - `indent`: Show indentation lines
  - `scope`: Scope detection
  - `notifier`: Prettier notifications
  - `quickfile`: Quicker startup
  - `scroll`: Better scrolling
  <!-- - `words`: LSP references navigation -->
  - `lazygit`: [Lazygit](https://github.com/jesseduffield/lazygit) integration
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): Fuzzy finder (files, words, refferences, etc.)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): Better terminal
- [trim.nvim](https://github.com/cappyzawa/trim.nvim): Trim trailing whitespace on-demand
- [conform.nvim](https://github.com/stevearc/conform.nvim): Formatter
- [hlsearch.nvim](https://github.com/nvimdev/hlsearch.nvim): Automatic removal of search highlighting
- [mini-operators](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-operators.md): Duplication of selected text
- [visual-whitespace.nvim](https://github.com/mcauley-penney/visual-whitespace.nvim): Show whitespace characters on visual selection
- [SylvanFranklin/omni-preview.nvim](https://github.com/SylvanFranklin/omni-preview.nvim): Previews for different files
  - [chomosuke/typst-preview.nvim](https://github.com/chomosuke/typst-preview.nvim): [Typst](https://typst.app) preview  
  - [hat0uma/csvview.nvim](https://github.com/hat0uma/csvview.nvim): CSV files
  - [peek.nvim](https://github.com/https://github.com/toppair/peek.nvim): Markdown preview  
    Requires [Deno](https://deno.com/) to be built.

<!-- TODO: categorize -->


### Colorschemes
- [nordic.nvim](https://github.com/AlexvZyl/nordic.nvim)


## Language Server Protocol
LSP config can be found at [`lua/lsp/`](.config/nvim/lua/lsp/).

The following plugins are used:
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): Basic LSP configuration
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Completions
- [mason.nvim](https://github.com/williamboman/mason-lspconfig.nvim): LSP servers manager



<!--## Autocommands ([`lua/autocmd.lua`](.config/nvim/lua/autocmd.lua))-->


## Keybindings

<!-- TODO -->
