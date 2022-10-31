set nocompatible
set filetype=off
call plug#begin()
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/NERDTree'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wincent/command-t'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
call plug#end()
filetype plugin indent on

set number
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showtabline=1
set smarttab
set cursorline
set incsearch
set hlsearch
set nocompatible
set encoding=UTF-8
set termencoding=UTF-8
set fileencodings=utf8,cp1251
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set mouse=a
set mousehide
set backspace=indent,eol,start whichwrap+=<,>,[,]
set wrap
set linebreak
set nobackup
set noswapfile
set ruler
set clipboard=unnamed
set hidden
set novisualbell
set t_vb=
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

"python mode
let python_highlight_all = 1
set t_Co=256

"NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"nerdcommenter
let g:NERDCreateDefaultMappings = 1
let g:NERDDefaultAlign = 'left'
let g:NERDToggleCheckAllLines = 1
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"vim-airline-themes
let g:airline_theme='minimalist'

"dense-analysis/ale
let g:ale_linters = {
\ 'dockerfile': ['hadolint'],
\ 'zsh': ['bashlint', 'shellcheck'],
\ 'cpp': ['clangd'],
\ 'python': ['pylsp', 'pylint', 'bandit', 'mypy'],
\ 'go': ['golangci-lint', 'gopls', 'gobuild'],
\ 'rust': ['analyzer', 'cargo', 'rls'],
\ 'yaml': ['yamllint'],
\ 'javascript': ['yarn lint', 'eslint', 'vls'],
\ 'asciidoc': ['alex', 'textlint', 'proselint', 'write-good'],
\ 'haskell': ['stack-build', 'hlint', 'hie', 'hdevtools'],
\ 'markdown': ['alex', 'textlint', 'proselint', 'write-good'],
\ }
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier', 'eslint'],
\ 'typescript': ['prettier', 'eslint'],
\	'typescriptreact': ['prettier', 'eslint'],
\	'python': ['black', 'autopep8', 'yapf', 'isort'],
\ 'asciidoc': ['textlint'],
\ 'bash': ['shfmt'],
\ 'c': ['clang-format'],
\ 'cpp': ['clang-format'],
\ 'css': ['prettier'],
\ 'go': ['gofmt', 'goimports'],
\ 'haskell': ['floskell', 'hlint'],
\ 'html': ['prettier'],
\ 'less': ['prettier'],
\ 'json': ['prettier'],
\ 'markdown': ['prettier', 'textlint'],
\ 'nix': ['nixpkgs-fmt'],
\ 'rust': ['rustfmt'],
\ 'scss': ['prettier'],
\ 'sh': ['shfmt'],
\ 'terraform': ['terraform'],
\ }
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ℹ'
let g:ale_sh_shfmt_options = '-i 4'
let g:ale_go_golangci_lint_package = 1
let g:ale_go_golangci_lint_options = '--fast'
let g:ale_rust_rustfmt_options = '--edition=2018'
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰', '│', '─']

"command-t
let g:CommandTPreferredImplementation='lua'

syntax on
colorscheme OceanicNext
