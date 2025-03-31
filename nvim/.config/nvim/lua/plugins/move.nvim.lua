return {
  {
    'fedepujol/move.nvim',
    enabled = true,
    keys = {
      {'<A-j>', '<CMD>MoveLine(1)<CR>', mode = 'n',  silent = true, noremap = true},
      {'<A-k>', '<CMD>MoveLine(-1)<CR>', mode = 'n', silent = true, noremap = true},
      {'<A-j>', ':MoveBlock(1)<CR>', mode = 'v', silent = true, noremap = true},
      {'<A-k>', ':MoveBlock(-1)<CR>', mode = 'v', silent = true, noremap = true},
    },
    opts = {
        word = { enable = false }  -- disable word movement
    }
  }
}
