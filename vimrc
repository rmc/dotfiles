set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" vim-scripts repos
Plug 'AutoComplPop'
Plug 'tomasr/molokai' " colour scheme
Plug 'wincent/command-t' " fast file nagations
Plug 'millermedeiros/vim-statline' " status line
Plug 'tpope/vim-fugitive' " git plugin
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'

call plug#end()

" system settings
set lazyredraw          " no redraws in macros
set confirm             " get a dialog when :q, :w, or :wq fails
set nobackup            " no backup~ files.
set noswapfile          " no swap files
set viminfo='20,\"500   " remember copy registers after quitting in the .viminfo file -- 20 jump links, regs up to 500 lines'
set hidden              " remember undo after quitting
set history=50          " keep 50 lines of command history
set mouse=v             " use mouse in visual mode (not normal,insert,command,help mode)

filetype plugin indent on

syntax on

" let g:solarized_termcolors=256
" set background=dark
colorscheme molokai

" tabs / spaces
set autoindent
set smartindent         " smart auto indenting
set smarttab            " smart tab handling for indenting
set magic               " change the way backslashes are used in search patterns
set bs=indent,eol,start " Allow backspacing over everything in insert mode
set expandtab           " turn a tabs into spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

" display
set nowrap
set number              " show line numbers
set relativenumber      " show relative line numbers
set ruler               " show cursor position in status bar
set cursorline          " highlight current line
set scrolloff=2         " 2 lines above/below cursor when scrolling
set showmatch           " show matching bracket (briefly jump)
set matchtime=2         " show matching bracket for 0.2 seconds
set showmode            " show mode in status bar (insert/replace/...)
set showcmd             " show typed command in status bar
set title               " show file in titlebar
set wildmenu            " completion with menu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn

" fix backspace
set backspace=indent,eol,start 
" fix regex
nnoremap / /\v
vnoremap / /\v

" Searching
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set hlsearch            " highlight search (very useful!)
set incsearch           " search incremently (search while typing)
set showmatch
set gdefault

" Turn off any bell
set novisualbell
set t_vb=

" Status Line
set laststatus=2
set statusline=%<\ %n:%F%h%m%r%h%w%y\%=[%{&fileencoding}][%lx%c:%L]--%P--\%0([%{strftime(\"%H:%M\")}]%)
set showcmd


let mapleader = ","

let g:loaded_netrwPlugin = 1

set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>

set completeopt=longest,menuone,preview

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

