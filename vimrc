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
Plugin 'chriskempson/base16-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'mhinz/vim-signify'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-pug.git'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'justinj/vim-pico8-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'hashivim/vim-terraform.git'
Plugin 'w0rp/ale'
Plugin 'jparise/vim-graphql'
Plugin 'tbastos/vim-lua'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'neoclide/coc.nvim'



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
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" gitgutter
set updatetime=100

" ctrlp
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '.DS_Store\|.sass-cache\|bower_components\|build\|coverage\|node_modules\|vendor/bundle\|\v[\/]\.(git|hg|svn)$'

" jsx
let g:jsx_ext_required = 0

" vim-javascript
let g:javascript_plugin_jsdoc = 1

" terraform
let g:terraform_fmt_on_save = 1

" ale
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1

"style
syntax on
set background=dark
colorscheme base16-rebecca
set number                      "Line numbers
set gcr=a:blinkon0              "Disable cursor blink
set list listchars=tab:\ \ ,trail:· " show trailing spaces

if has("termguicolors")
    set termguicolors
endif

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
set timeoutlen=1000 ttimeoutlen=0 " eliminate delay between switching from insert to normal mode in zsh
set novisualbell        " silence flash
set noerrorbells        " silence ding

" Colorscheme highlight overrides
"hi Normal            cterm=none ctermbg=none ctermfg=none
"hi SignColumn        cterm=none ctermbg=none ctermfg=none
"hi DiffAdd           cterm=bold ctermbg=none ctermfg=119
"hi DiffDelete        cterm=bold ctermbg=none ctermfg=167
"hi DiffChange        cterm=bold ctermbg=none ctermfg=227
"hi SignifySignAdd    cterm=bold ctermbg=none ctermfg=119
"hi SignifySignDelete cterm=bold ctermbg=none ctermfg=167
"hi SignifySignChange cterm=bold ctermbg=none ctermfg=227
"hi Folded            cterm=none ctermbg=none ctermfg=darkgrey
"hi LineNr            cterm=none ctermbg=none ctermfg=darkgrey
hi SignifySignAdd    guibg=NONE
hi SignifySignDelete guibg=NONE
hi SignifySignChange guibg=NONE
hi DiffAdd           guibg=NONE
hi DiffDelete        guibg=NONE
hi DiffChange        guibg=NONE
hi LineNr            guibg=NONE ctermfg=darkgrey
hi SignColumn        guibg=NONE ctermfg=darkgrey
"hi VertSplit         cterm=none ctermbg=none ctermfg=magenta
"hi MatchParen        cterm=bold ctermbg=none ctermfg=magenta
"hi ColorColumn       cterm=none ctermbg=235  ctermfg=none
"hi CursorLine        cterm=none ctermbg=235  ctermfg=none
"hi Visual            cterm=none ctermbg=248  ctermfg=none
"hi Pmenu             cterm=none ctermbg=59   ctermfg=15
"hi PmenuSel          cterm=none ctermbg=188  ctermfg=0
"hi WildMenu          cterm=none ctermbg=188  ctermfg=0
"hi Search            cterm=none ctermbg=012  ctermfg=0
"hi IncSearch         cterm=none ctermbg=012  ctermfg=0
"hi StatusLine        cterm=none ctermbg=012  ctermfg=0
"hi Todo              cterm=none ctermbg=007  ctermfg=008
"hi ALEErrorSign      cterm=bold ctermbg=none ctermfg=167
"hi ALEWarningSign      cterm=bold ctermbg=none ctermfg=227
"highlight ALEWarning ctermbg=020

" Can't figure out how to change ale's highlight color, this doesn't work
" highlight ALEWarning ctermbg=DarkMagenta
" so just turning them off
let g:ale_set_highlights = 0

" make jsx open/close tags the same
" https://github.com/mxw/vim-jsx/issues/124
hi link xmlEndTag xmlTag

source ~/.vimrc_local
