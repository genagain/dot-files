set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

let mapleader=","
set runtimepath^=~/.vim/bundle/ctrlp.vim
set shiftwidth=2

" Uss UTF-8
set encoding=utf-8

" Enable Python syntax highlighting
let python_highlight_all=1
syntax on

" Set current line number
set number

" Set relative line number
set relativenumber

" Toggle set paste and nopaste
set pastetoggle=<F3>

" make tabs two spaces
set tabstop=2 shiftwidth=2 expandtab

" Run Flake8 on save
" autocmd BufWritePost *.py call Flake8()

" Run Autoformat on save
" au BufWrite * :Autoformat

autocmd BufWritePre *.py :%s/\s\+$//e


" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Add all of the plugins I want here
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'chiel92/vim-autoformat'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'terryma/vim-multiple-cursors'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


