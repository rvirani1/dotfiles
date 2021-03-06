set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard=unnamed " Use the OS clipboard by default

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Plugin 'airblade/vim-gitgutter'

Bundle 'vim-ruby/vim-ruby'
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'

Plugin 'scrooloose/nerdcommenter'
filetype plugin on

Plugin 'bling/vim-airline'
set laststatus=2

Plugin 'scrooloose/syntastic'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

call vundle#end()            " required

syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

set laststatus=2
if has("mouse")
	  set mouse=a
endif

:vnoremap < <gv
:vnoremap > >gv

colorscheme monokai
set t_Co=256
set backspace=indent,eol,start

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
