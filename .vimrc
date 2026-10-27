" Minimal Vim configuration
" Compatible with tmux
" Leader key: ,

let mapleader = ","
let maplocalleader = ","

" --- Basics ---
set nocompatible
syntax enable
filetype plugin indent on
set encoding=utf-8
set hidden
set history=200
set backspace=indent,eol,start

" --- Indentation ---
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" --- Search ---
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <Leader>s :set hlsearch!<CR>

" --- Display ---
set number
set relativenumber
set showcmd
set ruler
set laststatus=2
set signcolumn=yes
set nowrap

" --- Splits and navigation ---
set splitbelow
set splitright

" Move between Vim splits using Ctrl+h/j/k/l.
" Works with tmux when tmux is configured to recognize these keys.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- Files and completion ---
set wildmenu
set wildmode=list:longest
set path+=**
set autoread

" --- Editing ---
set noswapfile
set undofile
set scrolloff=4
set updatetime=300

" Remove trailing whitespace on save.
autocmd BufWritePre * if &modifiable && !empty(expand('%')) | keeppatterns %s/\s\+$//e | endif

" --- Useful shortcuts ---
nnoremap <Leader>w :write<CR>
nnoremap <Leader>q :quit<CR>
nnoremap <Leader>Q :qa<CR>
nnoremap <Leader>n :enew<CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>h :nohlsearch<CR>

" --- Git shortcuts (vim-fugitive required) ---
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gd :Gdiffsplit<CR>
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gl :Git log --oneline --decorate --graph<CR>
nnoremap <Leader>gc :Git commit<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gP :Git pull<CR>
nnoremap <Leader>ga :Git add %<CR>
nnoremap <Leader>gA :Git add -A<CR>
nnoremap <Leader>gC :Git checkout --
nnoremap <Leader>gB :Git switch 
nnoremap <Leader>gM :Git merge 
nnoremap <Leader>gR :Git rebase 

" --- Quick access to Vim help ---
nnoremap <Leader>? :help 
