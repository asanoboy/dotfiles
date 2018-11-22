set noswapfile
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set binary noeol

set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'uarun/vim-protobuf'
"NeoBundle 'joonty/vdebug'
call neobundle#end()

NeoBundleCheck

let g:syntastic_python_checkers = ['pyflakes', 'pep8']
"let g:vdebug_options = { "port" : 10000 }
syntax on

