return {
  -- copied from https://www.lazyvim.org/plugins/editor#gitsignsnvim
  {
    "lewis6991/gitsigns.nvim",
    enabled = true,
    opts = {
      signs = {
        add = { text = "🮇" },
        change = { text = "🮇" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "🮇" },
        untracked = { text = "🮇" },
      },
      -- signs_staged = {
        -- add = { text = "🮇" },
        -- change = { text = "🮇" },
        -- delete = { text = "" },
        -- topdelete = { text = "" },
        -- changedelete = { text = "🮇" },
      -- },
    },
  },
}
