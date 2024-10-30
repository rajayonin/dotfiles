vim.opt.showmode = false  -- prevent duplication of mode in status bar

return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                -- theme = 'material'
                theme = 'nordic'
            },
            sections = {
              lualine_b = {
                  {'branch', icon = ''}
                },
            },
        }
    }
}
