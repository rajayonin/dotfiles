" ----------------
" Vim config file
" @author: rajayonin
" @date: 12/03/22
" ----------------


" GENERAL STUFF
" ---
set tabstop=4
syntax on
set showmatch
set ruler
set smarttab
set shiftwidth=4
set number
set hlsearch
set incsearch
set titlestring="%t - vim"
set title
set linebreak
set mouse=a
set showcmd
set noerrorbells


" REMAPPINGS
" ---

" set values
execute "set <A-j>=\ej"
execute "set <A-k>=\ek"

" alt+j|k: move lines
:nmap <A-j> :m .+1<CR>==
:nmap <A-k> :m .-2<CR>==
":imap <A-j> <Esc>:m .+1<CR>==gi
":imap <A-k> <Esc>:m .-2<CR>==gi
":vmap <A-j> :m '>+1<CR>gv=gv
":vmap <A-k> :m '>-2<CR>gv=gv

" unmap arrow keys bc i'm no pussy
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
