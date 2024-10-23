-- timeout for keybindings
vim.opt.timeoutlen = 400

-- leader key
vim.g.mapleader = ' '

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

-- prevent x/d from copying
vim.keymap.set("n", "x", '"_x', {noremap = true})
vim.keymap.set("n", "X", '"_X', {noremap = true})
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true })

-- prevent errors when exiting
vim.api.nvim_create_user_command("X", "x", {})
vim.api.nvim_create_user_command("Q", "q", {})
