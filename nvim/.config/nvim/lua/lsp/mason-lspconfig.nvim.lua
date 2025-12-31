return {
  "mason-org/mason-lspconfig.nvim",

  enabled = true,

  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      },
    },
    "neovim/nvim-lspconfig",
  },

  opts = {
    ensure_installed = {
      -- LSPs
      "lua_ls",
      "jsonls",
      "yamlls",
      "bashls",
      "dockerls",
      "ltex", -- Markdown, LaTeX, etc.
      "clangd", -- C/C++
      "rust_analyzer", -- 🦀
      "ty", -- Python
      "tinymist", -- Typst
      "vimls",
    },
  },
}
