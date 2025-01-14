return {
  {
    'windwp/nvim-autopairs',
    enabled = true,
    event = "InsertEnter",
    config = true,
    opts = {
      disable_filetype = { "TelescopePrompt", "vim" },
    },
  }
}
