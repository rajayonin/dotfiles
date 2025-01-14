return {
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "ada",
          "c",
          "cpp",
          "c_sharp",
          "bibtex",
          "css",
          "go",
          "java",
          "json",
          "latex",
          "make",
          "cmake",
          "rust",
          "nix",
          "commonlisp",
          "nix",
          "ocaml",
          "powershell",
          "ruby",
          "scala",
          "zig",
          "haskell",
          "bash",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "tsx",
          "typescript",
          "vim",
          "yaml",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
