return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",

  enabled = true,

  opts = {
    ensure_installed = {
      -- linters
      "pylint",
      "eslint_d",
      "ast-grep",
      "ruff", -- also formatter
      -- formatters
      "prettier",
      "stylua",
      "typstyle",
      "jq",
      "clang-format",
    },
    integrations = {
      ["mason-lspconfig"] = true,
    },
  },
}
