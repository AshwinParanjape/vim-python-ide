set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'vim-scripts/indentpython.vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'psf/black', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'puremourning/vimspector'
Plug 'sainnhe/everforest'
Plug 'jpalardy/vim-slime'
Plug 'vim-airline/vim-airline'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

call plug#end()

