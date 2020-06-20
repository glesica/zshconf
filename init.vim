call plug#begin(stdpath('data') . '/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'vimwiki/vimwiki'

call plug#end()

filetype plugin on
syntax on

set autoindent
set backspace=indent,eol,start
set expandtab
set hlsearch
set incsearch
set mouse=a
set nocompatible
set number
set shiftwidth=4
set smarttab
set tabstop=4
set textwidth=80

let g:vimwiki_hl_cb_checked = 2
let g:vimwiki_hl_headers = 1
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '~/Wiki/wiki/'}]

nnoremap <Leader>h :nohlsearch<CR>

