return {
  {
    'nvim-lualine/lualine.nvim',
    enabled = true,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      vim.opt.showmode = false  -- prevent duplication of mode in status bar
    end,
    opts = {
      options = {
        -- theme = 'material'
        globalstatus = true,  -- share between splits
        theme = 'nordic'
      },
      sections = {
        lualine_b = {
          {'branch', icon = ''},
          {
            'diff',
            -- get diff from gitsigns
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed
                }
              end
            end
          },
          {
            'diagnostics',
            -- show only error and warn
            sections = { 'error', 'warn'},
          }
        },
        lualine_x = {
          {
            'fileformat',
            icons_enabled = true,
            symbols = {
              unix = 'LF',
              dos = 'CRLF',
              mac = 'CR',
            },
          },
          {'encoding'},
          {'filetype'},
        },
        lualine_c = {
          {'filename', path = 1}  -- relative path
        }
      }
    }
  }
}
