return {
  {
    'mcauley-penney/visual-whitespace.nvim',
    enabled = true,
    config = true,
    keys = { 'v', 'V', '<C-v>' },
    opts = {
      -- disable showing newline and CR
      nl_char = "",
      cr_char = ""  
    }
  }
}
