" -------------------------------------------------------------------
"               _                         _      _                   
"    _ __ __ _ (_) __ _ _   _  ___  _ __ (_)_ __( )__                
"   | '__/ _` || |/ _` | | | |/ _ \| '_ \| | '_ \/ __|               
"   | | | (_| || | (_| | |_| | (_) | | | | | | | \__ \               
"   |_|  \__,_|/ |\__,_|\__, |\___/|_| |_|_|_| |_|___/               
"            |__/       |___/                                        
"           _                              __ _          __ _ _      
"    /\   /(_)_ __ ___     ___ ___  _ __  / _(_) __ _   / _(_) | ___ 
"    \ \ / / | '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` | | |_| | |/ _ \
"     \ V /| | | | | | | | (_| (_) | | | |  _| | (_| | |  _| | |  __/
"      \_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, | |_| |_|_|\___|
"                                               |___/                
" -------------------------------------------------------------------

" Special thanks to Brandon Wallace (https://github.com/brandon-wallace/vimrc)

" COLORS
" ---
colo default

" Use syntax highlighting
syntax enable


" GENERAL STUFF
" ---

" Set title of window to the name of the file.
set title
set titlestring="%t - Vim"

" Hide mouse when typing.
set mousehide

" Show matching words.
set showmatch

" Show the line and column position of cursor.
set ruler

" better matching (match lowercase w/ everything, unless uppercase)
set ignorecase
set smartcase

" Copy indent from current line when starting a new line.
set autoindent

" tabsize
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Change the command history lenght.
set history=1000

" Use highlighting when doing a search.
set hlsearch
set incsearch

" Wrap like a normal person.
set linebreak wrap breakindent

" Show the current comand.
set showcmd

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=10

" Fuck errors, I don't wanaa see 'em.
set noerrorbells

" If using a fast terminal.
set ttyfast

" Set the character enconding when writing file.
set fileencoding=utf-8

" Set the character encoding.
set encoding=utf-8

" Ignore files with these extentions.
set wildignore=*.odt,*.doc*,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.JPG,*.exe,*.bmp,*.flv,*.gz,*.tgz,*.zip,*.iso,*.gzip,*.mov,*.xz,*.tar,*.img,*.docx,*.xlsx,*.xls

" Enable Python syntax highlighting features (thank god).
autocmd BufRead,BufNewFile *.py let python_highlight_all=1

" Save undo history to ~/.local/share/vim/undo.
set undofile
if !isdirectory("~/.local/share/vim/undo")
    silent! execute "!mkdir -p ~/.local/share/vim/undo"
endif
set undodir=~/.local/share/vim/undo
" Save backups to ~/.local/share/vim/backup.
set backup
if !isdirectory("~/.local/share/vim/backup")
    silent! execute "!mkdir -p ~/.local/share/vim/backup"
endif
set backupdir=~/.local/share/vim/backup
" Save swap to ~/.local/share/vim/swap.
set swapfile
if !isdirectory("~/.local/share/vim/swap")
    silent! execute "!mkdir -p ~/.local/share/vim/swap"
endif
set directory=~/.local/share/vim/swap

" Show whitespace
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" Copy to system clipboard.
set clipboard+=unnamed
set clipboard+=unnamedplus

" Better backspace.
set backspace=indent,eol,start

" Cursor config.
let &t_SI="\e[5 q"  " blinking bar (insert mode)
let &t_EI="\e[2 q"  " steady block (normal else)
let &t_SR="\<Esc>[1 q"  " blinking block (replace mode)



" COMMANDS
" --------

" :TrimWhitespace  -- deletes all trailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()



" KEYBINDINGS
" ---

" leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

" lower timeout for keybindings
set timeoutlen=400

" kj to Esc in normal mode
inoremap kj <Esc>

" remap L/H to end/begin line
nnoremap L $
vnoremap L $
onoremap L $
nnoremap H _
vnoremap H _
onoremap H _

" emacs movement in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-h> <BS>
inoremap <C-d> <Del>
" <C-w> deletes word backwards
inoremap <C-k> <Esc>"_d$i
" <C-u> deletes to end of line

" visually go up/down (usefull for wrap)
nnoremap j gj
nnoremap k gk
" same for normal visual mode
xnoremap <expr> j mode() ==# 'V' ? 'j' : 'gj'
xnoremap <expr> k mode() ==# 'V' ? 'k' : 'gk'

" autoinsert matching brackets
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
" inoremap " ""<Esc>ha
" inoremap ' ''<Esc>ha

" easier indentation in visual mode
vnoremap < <gv
vnoremap > >gv

" prevent x/d/c/s from copying
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap s "_s
vnoremap s "_s

" use TrimWhitespace command
"noremap <Leader>w :TrimWhitespace<CR>
