set scrolloff=10
set history=1000
set number relativenumber
set showmode
set showcmd
set smartcase
set incsearch
set hlsearch
set visualbell
set clipboard+=unnamed

let mapleader="\<space>"
set gdefault
execute pathogen#infect()
syntax on
filetype plugin indent on
inoremap jk <Esc>
set backspace=indent,eol,start

