vim.keymap.set("n", "<leader>w", "<cmd>Trim<CR>", {noremap = true})

return {
  "cappyzawa/trim.nvim",
  enabled = true,
  opts = {
    ft_blocklist = {"markdown"},
    trim_last_line = false,
    trim_first_line = false,
    trim_on_write = false,
    notifications = false
  }
}

