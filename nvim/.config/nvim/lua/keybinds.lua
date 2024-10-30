-- timeout for keybindings
vim.opt.timeoutlen = 400

-- leader key
-- vim.g.mapleader = ' '  -- moved to init.lua

-- easy escape from terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- kj to Esc
vim.keymap.set("i", "kj", "<Esc>", {noremap = true})

-- L/H to end/begin line
vim.keymap.set({"n", "v", "o"}, "L", "$", {noremap = true})
vim.keymap.set({"n", "v", "o"}, "H", "0", {noremap = true})

-- undo/redo in insert mode
vim.keymap.set("i", "<C-z>", '<Esc>ui', {noremap = true, desc = "Undo"})
vim.keymap.set("i", "<C-y>", '<Esc>ui', {noremap = true, desc = "Redo"})

-- emacs movement in insert mode
vim.keymap.set("i", "<C-f>", "<Right>", {noremap = true})
vim.keymap.set("i", "<C-b>", "<Left>", {noremap = true})
vim.keymap.set("i", "<C-p>", "<Up>", {noremap = true})
vim.keymap.set("i", "<C-n>", "<Down>", {noremap = true})
vim.keymap.set("i", "<C-a>", "<Home>", {noremap = true})
vim.keymap.set("i", "<C-e>", "<End>", {noremap = true})
vim.keymap.set("i", "<C-h>", "<BS>", {noremap = true})
vim.keymap.set("i", "<C-d>", "<DEL>", {noremap = true})
vim.keymap.set("i", "<M-d>", '<Esc>"_dwi', {noremap = true, desc = "Delete word forward"})
-- <C-w> deletes word backwards
vim.keymap.set("i", "<C-k>", '<Esc>"_d$i', {noremap = true, desc = "Delete to end of line"})
-- <C-u> deletes to end of line
vim.keymap.set("i", "<M-f>", '<Esc>ea', {noremap = true, desc = "Move word forward"})
vim.keymap.set("i", "<M-b>", '<Esc>bi', {noremap = true, desc = "Move word backwards"})

-- prevent x/d/c from copying
vim.keymap.set("n", "x", '"_x', {noremap = true})
vim.keymap.set("n", "X", '"_X', {noremap = true})
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true })
vim.keymap.set({'n', 'v'}, 'c', '"_c', { noremap = true })
vim.keymap.set({'n', 'v'}, 'C', '"_C', { noremap = true })

-- prevent errors when exiting
vim.api.nvim_create_user_command("X", "x", {})
vim.api.nvim_create_user_command("Q", "q", {})



-- -------
-- PLUGINS
-- -------

-- telescope.nvim
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- move.nvim
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

