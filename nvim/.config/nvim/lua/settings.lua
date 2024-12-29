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
vim.opt.relativenumber = true

-- highlight current line
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- better matching (match lowercase w/ everything, unless uppercase)
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- always show signcolumn
vim.opt.signcolumn = "yes"

-- cursor blink
vim.o.guicursor = table.concat({
    "i:ver1",
    "i-c-cr-sm:blinkon1",
    "r-cr:hor50"
}, ",")

-- whitespace
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- vim.opt.listchars = { tab = '  ', trail = '·', nbsp = '␣' }

-- preview substitutions live
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- set tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- set wrap
vim.opt.wrap = true
vim.opt.breakindent = true

-- save backups and other trash to another place so you don't see them
if jit.os == "Windows" then
    HOME = os.getenv("HOMEPATH")
else
    HOME = os.getenv("HOME")
end
vim.opt.backupdir = HOME .. "/.local/share/nvim/backup"
vim.opt.directory = HOME .. "/.local/share/nvim/swap"

-- save undo history
vim.opt.undofile = true

-- Ignore files with these extensions:
vim.opt.wildignore = "*.odt,*.doc*,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.JPG,*.exe,*.bmp,*.flv,*.gz,*.tgz,*.zip,*.iso,*.gzip,*.mov,*.xz,*.tar,*.img,*.docx,*.xlsx,*.xls"

