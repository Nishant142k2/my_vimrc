" ================================
" Primeagen-style Vim Config for VIM (not Neovim)
" ================================

set nocompatible
filetype off

" -------------------------
" Basic Settings
" -------------------------
set number
set relativenumber
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hidden
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set mouse=
set clipboard=unnamedplus
set termguicolors

" Keep cursor centered while moving
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Better movement with search
nnoremap * *Nzzzv

" Leader key
let mapleader = " "

" -------------------------
" Plugin Manager
" -------------------------
call plug#begin('~/.vim/plugged')

" Primeagen editing utilities
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Git integration (Prime uses Fugitive all the time)
Plug 'tpope/vim-fugitive'

" Netrw enhancements (Prime uses netrw+vinegar)
Plug 'tpope/vim-vinegar'

" Syntax highlighting for all languages
Plug 'sheerun/vim-polyglot'

" FZF (Primeagen uses Telescope in Neovim, FZF in Vim)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Harpoon alternative for Vim (Primeagen jumps a lot)
Plug 'ThePrimeagen/harpoon'

" Colorschemes Primeagen uses
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

filetype plugin indent on

" -------------------------
" Primeagen Keybinds
" -------------------------

" File explorer (like :Ex in Neovim)
nnoremap <leader>pv :Ex<CR>

" FZF bindings
nnoremap <leader>pf :Files<CR>
nnoremap <leader>ps :Rg<CR>

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y

" Paste without losing register
nnoremap <leader>p "_dP

" Move highlighted text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Window navigation (Prime style)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Harpoon keybinds (Prime’s favorite workflow)
nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>h :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>

" Quick close
nnoremap <leader>q :q<CR>

" Quick save
nnoremap <leader>w :w<CR>

" Exit insert mode quickly
inoremap jj <Esc>

" -------------------------
" Colorscheme
" -------------------------
set background=dark
colorscheme gruvbox
