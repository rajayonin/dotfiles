-- leader key
vim.g.mapleader = ' '
-- easy escape from terminal
vim.keymap.set('t', "<Esc><Esc>", "<C-\><C-n>", "noremap")
-- jk to Esc (watch out Dijkstra)
vim.keymap.set("i", "jk", "<Esc>", "noremap")
