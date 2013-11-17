set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

syntax on
syntax enable
set t_Co=16

"colorscheme zenesque
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized

set hidden

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

nnoremap <Leader>n :bn<cr>
nnoremap <Leader>p :bp<cr>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>x :x<cr>
nnoremap <Leader>wq :wq<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>qa :qa<cr>
nnoremap <Leader>wqa :wqa<cr>
" Don't need these with unimpaired
"nnoremap <Leader><s-cr> O<Esc
"nnoremap <Leader><CR> o<Esc> k

" Reload .vimrc automatically
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

set timeoutlen=500
set autoread
au CursorHold * checktime
