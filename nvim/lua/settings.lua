-- enable syntax highlighting
vim.opt.syntax = "enable"

-- set system clipboard by default
vim.opt.clipboard = 'unnamedplus'

-- file encoding
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- show numbers
vim.opt.number = true

-- better matching (match lowercase w/ everything, unless uppercase)
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight current line
-- vim.opt.cursorline = true

-- set tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- set wrap
vim.opt.wrap = true

-- save backups and other trash to another place so you don't see them
HOME = os.getenv("HOME")
vim.opt.backupdir = HOME .. "/.local/share/nvim/backup"
vim.opt.directory = HOME .. "/.local/share/nvim/swap"

-- Ignore files with these extensions:
vim.opt.wildignore = "*.odt,*.doc*,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.JPG,*.exe,*.bmp,*.flv,*.gz,*.tgz,*.zip,*.iso,*.gzip,*.mov,*.xz,*.tar,*.img,*.docx,*.xlsx,*.xls"

