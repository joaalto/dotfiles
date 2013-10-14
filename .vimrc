"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Use smart case in searches
set ignorecase
set smartcase

set shell=zsh

let mapleader = "-"

nnoremap <Leader>n :tabn<cr>
nnoremap <Leader>p :tabp<cr>

" Don't need these with unimpaired
"nnoremap <Leader><s-cr> O<Esc
"nnoremap <Leader><CR> o<Esc> k

set t_Co=256

set ic

execute pathogen#infect()
syntax on
filetype plugin indent on

"colorscheme zenesque
set background=dark
colorscheme solarized

set hidden

" Reload .vimrc automatically
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END
