return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    lazy = false,
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    init = function()
      -- change dotfiles highlight color (set it to normal)
      vim.cmd('highlight NeoTreeDotfile guifg=NeoTreeNormal');
      vim.cmd('highlight NeoTreeGitIgnored guifg=#626262');  -- used to link to NeoTreeDotfile, undo that
      -- TODO: use vim.api.nvim_set_hl() instead
    end,
    keys = {{"<leader>ee", "<CMD>Neotree toggle<CR>", desc = "Toggle Neotree", noremap = true, silent = true}},
    opts = {
      enable_diagnostics = false,
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
        filtered_items = {
          -- show hidden items by default
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,

          -- exclude .git/
          never_show = { ".git" }
        },
      }
    }
  }
}
