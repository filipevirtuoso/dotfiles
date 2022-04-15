"===============================================================
"general
"===============================================================

syntax on
set cursorline
set hidden
set number 
set relativenumber 
set mouse=a
set inccommand=split
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nobackup
set nowritebackup
set noswapfile
set clipboard=unnamedplus
	
"===============================================================
"plugins
"===============================================================

call plug#begin('~/.config/nvim/autoload/')

"Colour scheme
Plug 'dracula/vim', { 'as': 'dracula' }

"Language packs
Plug 'sheerun/vim-polyglot'

"JavaScript support
Plug 'pangloss/vim-javascript'

"TypeScript support
Plug 'leafgarland/typescript-vim'

"JSX support 
Plug 'maxmellon/vim-jsx-pretty'

"Emmet
Plug 'mattn/emmet-vim'

"Autcomplete for pairs(brackets, parens, quotes, ..)
Plug 'jiangmiao/auto-pairs'

"Manipulate surroundings
Plug 'tpope/vim-surround'

"NERDTree 
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"==============================================================================
"plugin configs
"==============================================================================

colorscheme dracula

"NERDTree shortcuts
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"==============================================================================
"key combos 
"============================================================================== 

set encoding=UTF-8
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
