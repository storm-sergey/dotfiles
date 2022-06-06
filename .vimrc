set background=dark
set number
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cursorline
set incsearch
set hlsearch
set nocompatible
set encoding=UTF-8
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

call plug#begin()
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/NERDTree'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
