-- timeout for keybindings
vim.opt.timeoutlen = 400

-- leader key
-- vim.g.mapleader = ' '  -- moved to init.lua

-- easy escape from terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- visually go up/down (works with wrap)
vim.keymap.set("n", "j", "gj", {noremap = true, silent = true})
vim.keymap.set("n", "k", "gk", {noremap = true, silent = true})

-- kj to Esc
vim.keymap.set("i", "kj", "<Esc>", {noremap = true})

-- L/H to end/begin line
vim.keymap.set({"n", "v", "o"}, "L", "$", {noremap = true, silent = true})
vim.keymap.set({"n", "v", "o"}, "H", "0", {noremap = true, silent = true})

-- undo/redo in insert mode
vim.keymap.set("i", "<C-z>", '<Esc>ui', {noremap = true, desc = "Undo"})
vim.keymap.set("i", "<C-y>", '<Esc>ui', {noremap = true, desc = "Redo"})

-- emacs movement in insert mode
vim.keymap.set("i", "<C-f>", "<Right>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-b>", "<Left>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-p>", "<Up>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-n>", "<Down>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-a>", "<Home>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-e>", "<End>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-h>", "<BS>", {noremap = true, silent = true})
vim.keymap.set("i", "<C-d>", "<DEL>", {noremap = true, silent = true})
vim.keymap.set("i", "<M-d>", '<Esc>"_dwi', {noremap = true, desc = "Delete word forward", silent = true})
-- <C-w> deletes word backwards
vim.keymap.set("i", "<C-k>", '<Esc>"_d$i', {noremap = true, desc = "Delete to end of line", silent = true})
-- <C-u> deletes to end of line
vim.keymap.set("i", "<M-f>", '<Esc>ea', {noremap = true, desc = "Move word forward", silent = true})
vim.keymap.set("i", "<M-b>", '<Esc>bi', {noremap = true, desc = "Move word backwards", silent = true})

-- prevent x/d/c from copying
vim.keymap.set("n", "x", '"_x', {noremap = true, silent = true})
vim.keymap.set("n", "X", '"_X', {noremap = true, silent = true})
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'c', '"_c', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'C', '"_C', { noremap = true, silent = true })

-- easier indentation in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- prevent errors when exiting
vim.api.nvim_create_user_command("X", "x", {})
vim.api.nvim_create_user_command("Q", "q", {})

-- center screen around match
vim.keymap.set("n", "n", "nzzzv", { desc = "Fwd  search '/' or '?'", silent = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Back search '/' or '?'", silent = true })

