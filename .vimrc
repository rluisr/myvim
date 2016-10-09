:syntax on
colorscheme darkblue

set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set number
set nocompatible

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
