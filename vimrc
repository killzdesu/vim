filetype off

" Plugin load with :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'digitaltoad/vim-pug'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

" Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
set laststatus=2

Plug 'easymotion/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

Plug 'frazrepo/vim-rainbow'
let g:rainbow_active = 1

Plug 'morhetz/gruvbox'
set termguicolors
let g:gruvbox_italic=1
autocmd vimenter * ++nested colorscheme gruvbox
" Set dark mode
set bg=dark

call plug#end()

syntax on
filetype plugin indent on
set nocompatible

" Set leader key
let mapleader = ","
map <leader>vm :e $MYVIMRC<CR>
map <leader>sv :source $MYVIMRC<CR> 

set number relativenumber
set modelines=0
set encoding=utf-8

" Whitespace
set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Smarttab with autoindent + smartindent
set smarttab
set ai
set si

nnoremap B ^
nnoremap E $

" Search
map <Leader><space> :let @/=''<cr> 
set hlsearch
set incsearch 
set lazyredraw 
set showmatch 
set mat=2

" For regular expressions turn magic on
set magic


" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set t_Co=256
set ttyfast
set showmode
set showcmd

set backspace=2

set guifont=consolas:h10
