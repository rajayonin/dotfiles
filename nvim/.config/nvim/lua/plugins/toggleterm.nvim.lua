return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    enabled = true,
    keys = { "<leader>tt", desc = { "Toggle terminal" }},  -- wait for keybind input to lazy load
    init = function()
      local wk = require("which-key")
      wk.add({
        { "<leader>t", group = "toggle" },
      })
    end,
    opts = {
      direction = "float",
      open_mapping = [[<leader>tt]],
      insert_mappings = false,
      clear_env = true,  -- for some fucking reason, this fixes Ctrl-P navigating history when EDITOR=nvim
      terminal_mappings = false
    }
  }
}
