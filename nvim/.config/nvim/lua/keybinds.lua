-- timeout for keybindings
vim.opt.timeoutlen = 400

-- leader key
vim.g.mapleader = ' '

-- easy escape from terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- kj to Esc
vim.keymap.set("i", "kj", "<Esc>", {noremap = true})

-- L/H to end/begin line
vim.keymap.set({"n", "v"}, "L", "$", {noremap = true})
vim.keymap.set({"n", "v"}, "H", "0", {noremap = true})

-- prevent x/d from copying
vim.keymap.set("n", "x", '"_x', {noremap = true})
vim.keymap.set("n", "X", '"_X', {noremap = true})
vim.keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true })
vim.keymap.set({'n', 'v'}, 'D', '"_D', { noremap = true })

-- prevent errors when exiting
vim.api.nvim_create_user_command("X", "x", {})
vim.api.nvim_create_user_command("Q", "q", {})
