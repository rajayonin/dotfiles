-- stolen from https://github.com/josean-dev/dev-environment-files

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "lua_ls",
        "jsonls",
        "bashls",
        "dockerls",
        "ltex",  -- Markdown, LaTeX, etc.
        "clangd",  -- C/C++
        "rust_analyzer",  -- 🦀
        "ruff",  -- Python
        "tinymist",  -- Typst
      },
      automatic_installation = true
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "ruff", -- python formatter
        "eslint_d",
      },
    })
  end,
}
