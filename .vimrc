set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Julia syntax highlighting
Plugin 'JuliaLang/julia-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" golang syntax highlighting
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.

" set syntax highlighting on
" filetype off
" filetype plugin indent off
" set runtimepath+=$GOROOT/misc/vim
" filetype plugin indent on
syntax on

" Use vim features
set nocompatible

" Show column and row in footer
set ruler

" Show line numbers
set number

" Allow vim to recognize filetype
filetype on

" Set colorscheme and font
colorscheme desert
set guifont=Consolas\ 14

" Set the correct tab setting
set tabstop=6 softtabstop=2 shiftwidth=2 noexpandtab

" `:set list` to display whitespace chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Automatically indent while editing
set autoindent

" Automatically wrap words at 79 characters
set textwidth=79

" Recognize markdown files.
au BufRead,BufNewFile *.md set filetype=markdown

" Project-specific vim settings
set exrc

"Use jj as escape in insert mode and command line mode
inoremap jj <C-c>
cnoremap jj <C-c>

" Set mapleader
let mapleader=" "

" Navigation by visual line rather than \n line
noremap j gj
noremap k gk

" Allow changing buffers w/o saving
set hidden

" Set backup directory
set backupdir=~/tmp,/var/tmp,/tmp

"Use semi-colon to clear highlighted search results
nmap <silent> <Leader>; :noh<CR>

" Leave space below cursor when strolling
set scrolloff=3

" Underline cursor line.
set cursorline

set backspace=2 " make backspace work like most other apps
