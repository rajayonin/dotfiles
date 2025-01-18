vim.keymap.set("n", "<leader>ee", "<CMD>Neotree toggle<CR>", {desc = "Toggle Neotree", noremap = true, silent = true})

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added     = "A",
            modified  = "M",
            deleted   = "D", -- this can only be used in the git_status source
            renamed   = "R", -- this can only be used in the git_status source
            -- Status type
            untracked = "U",
            ignored   = "",
            unstaged  = "",
            staged    = "S",
            conflict  = "!",
          }
        },
      },
      -- close explorer on open file
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end
        }
      },
      window = {
        position = "left",
        width = 30,
        mappings = {
          -- easier navigation
          ["l"] = "open",
          ["h"] = "close_node"
        }
      },
      filesystem = {
        -- show hidden items by default
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
        -- exclude .git/
        never_show = { ".git" }
      }
    }
  }
}
