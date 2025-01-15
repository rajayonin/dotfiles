return {
  {
    "lewis6991/gitsigns.nvim",
    enabled = true,
    opts = {
      -- copied from https://www.lazyvim.org/plugins/editor#gitsignsnvim
      signs = {
        add = { text = "🮇" },
        change = { text = "🮇" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "🮇" },
        untracked = { text = "🮇" },
      },
      signs_staged = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
      },
      -- signs = {
      --   add = { text = "+" },
      --   change = { text = "~" },
      --   delete = { text = "-" },
      --   topdelete = { text = "-" },
      --   changedelete = { text = "~" },
      --   untracked = { text = "?" },
      -- },
    on_attach = function(bufnr)
      -- keymaps
      local gitsigns = require('gitsigns')

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      map('n', '<leader>gr', gitsigns.reset_hunk)
      map('v', '<leader>gr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
      map('n', '<leader>gs', gitsigns.preview_hunk_inline)
      map('n', '<leader>gn', function() gitsigns.nav_hunk('next') end)
      map('n', '<leader>gp', function() gitsigns.nav_hunk('prev') end)

    end

    },
  },
}
