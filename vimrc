filetype off

" Plugin load with :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
Plug 'suy/vim-context-commentstring' " Add context for commentstring
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'unblevable/quick-scope'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=2000
set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" --- Basic syntax
Plug 'posva/vim-vue'
let g:vue_pre_processors = ['scss']
Plug 'leafOfTree/vim-vue-plugin'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1

" ---- Optional vim syntax highlighter ----
" Plug 'StanAngeloff/php.vim'
" Plug 'lumiliet/vim-twig'
" Plug 'digitaltoad/vim-pug'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

command! MyFiles call fzf#run(fzf#wrap({
      \  'source': 'grep -l -R --exclude-dir=node_modules --exclude-dir=.git ""'
      \}))
" Or use ripgrep for better performance
" rg BLANK_PATTERN -uu -l -g !**/node_modules/* -g !**/.git/*

nnoremap <silent> <C-p> :MyFiles<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

Plug 'itchyny/lightline.vim'
set laststatus=2

Plug 'easymotion/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

" ---- Colorscheme ----

Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai' " Soften monokai theme

call plug#end()

" ---- Setup for colorscheme ----
"  termguicolors
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:gruvbox_italic=1
let g:sonokai_enable_italic = 1

" ---- ** SET COLORSCHEME HERE ** ----
" autocmd vimenter * ++nested colorscheme gruvbox
colorscheme sonokai
let g:lightline = {'colorscheme' : 'sonokai'}

" Set something about commentstring
autocmd FileType apache setlocal commentstring=#\ %s

" Set dark mode
set bg=dark

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
