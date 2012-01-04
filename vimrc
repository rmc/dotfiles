set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" Bundle 'dbext.vim'
Bundle 'rails.vim'
Bundle 'Haml'
" Wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
Bundle 'endwise.vim'
Bundle 'Gundo'
Bundle 'surround.vim'
Bundle 'AutoComplPop'
Bundle 'snipMate'
Bundle 'project'

" original repos on github
Bundle 'ervandew/supertab'
Bundle 'lokaltog/vim-easymotion'
" Bundle 'msanders/snipmate'
Bundle 'plasticboy/vim-markdown'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'skammer/vim-css-color'
Bundle 'sontek/minibufexpl.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/ZenCoding.vim'
Bundle 'altercation/vim-colors-solarized'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

syntax on
set number

" let g:solarized_termcolors=256
" set background=dark
colorscheme vividchalk

" tabs / spaces
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set nowrap
set ruler

" fix backspace
set backspace=indent,eol,start 

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set nohlsearch
set gdefault

" turn of backup and swap-files
set nobackup
set noswapfile

" Turn off any bell
set novisualbell
set t_vb=

" Status Line
set laststatus=2
set statusline=%<\ %n:%F%h%m%r%h%w%y\%=[%{&fileencoding}][%lx%c:%L]--%P--\%0([%{strftime(\"%H:%M\")}]%)
set showcmd


let mapleader = ","

set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

let g:sparkupExecuteMapping = '<C-e>'
let g:sparkupNextMapping = '<C-n>'

" Replace $RSENSE_HOME with the directory where RSense was installed
let g:rsenseHome = "/Users/ruairi/opt/rsense-0.3"
" let g:rsenseUseOmniFunc = 1

set completeopt=longest,menuone,preview
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" ZenCoding
let g:user_zen_leader_key = '<c-y>'
let g:use_zen_complete_tag = 1
