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
colorscheme pablo

" Use syntax highlighting
syntax enable


" GENERAL STUFF
" ---

" Add numbers to the lines.
set number

" Set title of window to the name of the file.
set title
set titlestring="%t - Vim"

" Hide mouse when typing.
set mousehide

" Show matching words.
set showmatch

" Show the line and column position of cursor.
set ruler

" Copy indent from current line when starting a new line.
set autoindent

" tabsize
set tabstop=4 shiftwidth=4 expandtab

" Show line number.
set number

" Change the command history lenght.
set history=1000

" Use highlighting when doing a search.
set hlsearch
set incsearch

" Wrap like a normal person.
set linebreak

" Show the current comand.
set showcmd

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

" jk to Esc in normal mode (watch out Dijkstra)
inoremap jk <Esc>

" unmap arrow keys bc i'm no pussy
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" autoinsert matching brackets 
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
