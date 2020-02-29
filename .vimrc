set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set nu!
set tabstop=4
set cursorcolumn
set encoding=utf-8
set fileencodings=utf-8,euc-jp
set hlsearch
set incsearch

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$'] " ignore files in nerd tree

