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

      map('n', '<leader>hr', gitsigns.reset_hunk, { desc = "Reset Hunk" })
      map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, { desc = "Reset Hunk" })
      map('n', '<leader>hd', gitsigns.preview_hunk_inline, { desc = "Preview Hunk" })
      map('n', '<leader>hn', function() gitsigns.nav_hunk('next') end, { desc = "Next Hunk" })
      map('n', '<leader>hp', function() gitsigns.nav_hunk('prev') end, { desc = "Previous Hunk" })


      local wk = require("which-key")
      wk.add({
        { "<leader>h", group = "hunk" },
      })

    end

    },
  },
}
