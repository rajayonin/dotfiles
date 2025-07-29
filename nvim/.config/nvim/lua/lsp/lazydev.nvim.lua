return {
  -- "folke/lazydev.nvim",
  "Jari27/lazydev.nvim",  -- fork w/ fix (see https://github.com/folke/lazydev.nvim/pull/106)

  enabled = true,
  ft = "lua", -- only load on lua files
  opts = {
    library = {
      -- See the configuration section for more details
      -- Load luvit types when the `vim.uv` word is found
      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
  },
}
