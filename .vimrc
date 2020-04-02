syntax on

set nu!
set tabstop=4
set cursorcolumn
set encoding=utf-8
set fileencodings=utf-8,euc-jp
set hlsearch
set ic

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'metakirby5/codi.vim'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
nmap ,m :NERDTreeFind<CR>

nnoremap <silent> <C-T> :Files<CR>

