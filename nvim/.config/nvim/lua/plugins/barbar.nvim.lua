return {
  {
    'romgrk/barbar.nvim',
    enabled = true,
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      sidebar_filetypes = {
        ['neo-tree'] = true  -- support for neo-tree.nvim
      }
    },
  }
}
