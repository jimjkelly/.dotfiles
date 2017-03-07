" Vundle config from
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/#.Vi9-CN7uzXY.reddit

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set clipboard=unnamed

set bs=2

syntax enable
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch
let python_highlight_all = 1
