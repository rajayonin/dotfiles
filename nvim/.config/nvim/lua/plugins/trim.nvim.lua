return {
  "cappyzawa/trim.nvim",
  enabled = true,
  keys = {{"<leader>w", "<cmd>Trim<CR>", noremap = true}},
  opts = {
    ft_blocklist = {"markdown"},
    trim_last_line = false,
    trim_first_line = false,
    trim_on_write = false,
    notifications = false
  }
}

