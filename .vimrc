set scrolloff=10
set history=1000
set showmode
set showcmd
set smartcase
set incsearch
set hlsearch
set visualbell
set clipboard+=unnamed
set expandtab    " Converts tabs to spaces
set autoindent   " Maintains indentation of previous line
set smartindent  " Smart auto-indentation
set number       " Show line numbers
set ruler        " Show cursor position

"deps
call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/typescript-language-server'
call plug#end()

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript',
        \ 'cmd': ['typescript-language-server', '--stdio'],
        \ 'allowlist': ['typescript', 'typescriptreact'],
        \ 'initialization_options': {},
        \ 'settings': {},
        \ })
endif


set gdefault
:set timeout timeoutlen=3000 ttimeoutlen=100
let mapleader=","
let maplocalleader=","
execute pathogen#infect()
syntax on
filetype plugin indent on
inoremap jk <Esc>

nnoremap <esc><esc> :noh<return>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
