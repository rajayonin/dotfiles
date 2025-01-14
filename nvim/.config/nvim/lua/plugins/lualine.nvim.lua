vim.opt.showmode = false  -- prevent duplication of mode in status bar

-- gitsigns information extractor
local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns then
    return {
      added = gitsigns.added,
      modified = gitsigns.changed,
      removed = gitsigns.removed
    }
  end
end


return {
  {
    'nvim-lualine/lualine.nvim',
    enabled = true,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        -- theme = 'material'
        globalstatus = true,
        theme = 'nordic'
      },
      sections = {
        lualine_b = {
          {'branch', icon = ''},
          {'diff', source = diff_source},
          {'diagnostics'}
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
