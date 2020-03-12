syntax on

set nu!
set tabstop=4
set cursorcolumn
set encoding=utf-8
set fileencodings=utf-8,euc-jp
set hlsearch
set incsearch

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()
map <C-n> :NERDTreeToggle<CR>

