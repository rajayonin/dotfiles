return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    enabled = true,
    keys = { "<leader>tt" },  -- wait for keybind input to lazy load
    opts = {
      direction = "float",
      open_mapping = [[<leader>tt]],
      insert_mappings = false,
      clear_env = true,  -- for some fucking reason, this fixes Ctrl-P navigating history when EDITOR=nvim
      terminal_mappings = false
    }
  }
}
