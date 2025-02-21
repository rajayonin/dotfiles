return {
  {
    'fedepujol/move.nvim',
    enabled = true,
    keys = {
      {'<A-j>', '<CMD>MoveLine(1)<CR>', mode = 'n',  silent = true, noremap = true},
      {'<A-k>', '<CMD>MoveLine(-1)<CR>', mode = 'n', silent = true, noremap = true},
      {'<A-j>', '<CMD>MoveBlock(1)<CR>', mode = 'v', silent = true, noremap = true},
      {'<A-k>', '<CMD>MoveBlock(-1)<CR>', mode = 'v', silent = true, noremap = true},
      {'<A-h>', '<CMD>MoveHBlock(-1)<CR>', mode = 'v', silent = true, noremap = true},
      {'<A-l>', '<CMD>MoveHBlock(1)<CR>', mode = 'v', silent = true, noremap = true},
    },
    opts = {
        word = { enable = true }  -- disable word movement
    }
  }
}
