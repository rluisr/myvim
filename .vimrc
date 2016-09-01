:syntax on
colorscheme darkblue

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set number
set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  endif
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'scrooloose/syntastic'
  call neobundle#end()
  filetype plugin indent on

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
