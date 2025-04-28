-- timeout for keybindings
vim.opt.timeoutlen = 400

-- leader key
-- vim.g.mapleader = ' '  -- moved to init.lua

-- easy escape from terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Terminal normal mode' })
vim.keymap.set('t', '<C-w><C-q>', '<Cmd>ToggleTerm<CR>', { desc = 'Exit terminal' })

-- visually go up/down (works with wrap)
vim.keymap.set("n", "j", "gj", {noremap = true, silent = true})
vim.keymap.set("n", "k", "gk", {noremap = true, silent = true})
vim.keymap.set("x", "j", function() if vim.fn.mode() ~= "V" then return 'gj' else return 'j' end end, {expr = true, noremap = true, silent = true})  --only in normal visual mode
vim.keymap.set("x", "k", function() if vim.fn.mode() ~= "V" then return 'gk' else return 'k' end end, {expr = true, noremap = true, silent = true})  --only in normal visual mode

-- kj to Esc
vim.keymap.set("i", "kj", "<Esc>", {noremap = true})

-- L/H to end/begin line
vim.keymap.set({"n", "v", "o"}, "L", "$", {noremap = true, silent = true})
vim.keymap.set({"n", "v", "o"}, "H", "_", {noremap = true, silent = true})

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

-- prevent x/d/c/s from copying
vim.keymap.set("n", "x", '"_x', {noremap = true, silent = true})
vim.keymap.set("n", "X", '"_X', {noremap = true, silent = true})
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'c', '"_c', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 'C', '"_C', { noremap = true, silent = true })
vim.keymap.set({'n', 'v'}, 's', '"_s', { noremap = true, silent = true })

-- easier indentation in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- move windows quicker
vim.keymap.set("n", "<C-h>", "<C-w>h", {noremap = true, silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j", {noremap = true, silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k", {noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})

-- prevent errors when exiting
vim.api.nvim_create_user_command("X", "x", {})
vim.api.nvim_create_user_command("Q", "q", {})

-- center screen around match
vim.keymap.set("n", "n", "nzzzv", { desc = "Fwd  search '/' or '?'", silent = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Back search '/' or '?'", silent = true })

-- tabs
vim.keymap.set("n", "<A-o>", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<A-q>", "<cmd>BufferClose<CR>", { noremap = true, desc = "Close current tab" })
vim.keymap.set("n", "<A-.>", "<cmd>BufferNext<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<A-,>", "<cmd>BufferPrevious<CR>", { desc = "Go to previous tab" })

