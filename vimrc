set nocompatible   " Disable vi-compatibility
set encoding=utf-8 " Necessary to show unicode glyphs

" vundle init
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" github
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'fatih/vim-go'

call vundle#end()

call vundle#end()

filetype plugin indent on
" end vundle init

" configuration
set exrc                " enable per-directory .vimrc files
set secure              " disable unsafe commands in local .vimrc files

" navigation
set backspace=indent,eol,start  "Allow backspace in insert mode

" command bar
set history=1000                "increase :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set wildmenu                    "Tab completion
set wildmode=list:longest

" airline
set laststatus=2   " Always show the statusline
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" solarized
let g:solarized_termcolors = &t_Co
let g:solarized_termtrans = 1

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules'

"style
syntax on
set background=light
colorscheme solarized
set t_Co=16
set number                      "Line numbers
set gcr=a:blinkon0              "Disable cursor blink
set list listchars=tab:\ \ ,trail:· " show trailing spaces

" search
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" saving
set hidden                      "background buffers
set noswapfile
set nobackup
set nowb
set autoread                    "Reload files changed outside vim

" indentation
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" text wrap
set linebreak    "Wrap lines at convenient points
" set nowrap       "Don't wrap lines

" folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins

" misc
set title               " window title
set shortmess=atI       " stifle unruly messages
set visualbell          " silence ding
