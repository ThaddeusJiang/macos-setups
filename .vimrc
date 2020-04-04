syntax on

set nu!
set tabstop=2
set cursorcolumn
set encoding=utf-8
set fileencodings=utf-8,euc-jp
set hlsearch
set ic

:let mapleader = ","

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'metakirby5/codi.vim'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafOfTree/vim-vue-plugin'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
nmap ,m :NERDTreeFind<CR>
nnoremap <silent> <C-T> :Files<CR>

