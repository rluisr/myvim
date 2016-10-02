:syntax on
colorscheme darkblue

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set number
set nocompatible

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
