-- set leader key (must be done before lazy.nvim)
vim.g.mapleader = ' '

-- general settings
require('settings')


-- plugins through lazy.nvim

-- bootstrap lazy.nvim (install if it's not already installed)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")  -- load plugins


-- small plugins
require('autocmd')

-- keybinds
require('keybinds')

-- colors
require('colors')
