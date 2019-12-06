set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" Bundle 'dbext.vim'
" Bundle 'rails.vim'
" Bundle 'Haml'
" Wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
" Bundle 'endwise.vim'
" Bundle 'Gundo'
" Bundle 'surround.vim'
Bundle 'AutoComplPop'
" Bundle 'snipMate'
" Bundle 'project'
Bundle 'molokai'
Bundle 'command-t'
Bundle 'scrooloose/nerdcommenter'

" original repos on github
Bundle 'millermedeiros/vim-statline'
" Bundle 'ervandew/supertab'
" Bundle 'lokaltog/vim-easymotion'
" Bundle 'msanders/snipmate'
" Bundle 'plasticboy/vim-markdown'
" Bundle 'skammer/vim-css-color'
" Bundle 'sontek/minibufexpl.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/ZenCoding.vim'
Bundle 'danchoi/ri.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'rizzatti/funcoo.vim'

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

" let g:sparkupExecuteMapping = '<C-e>'
" let g:sparkupNextMapping = '<C-n>'

" Replace $RSENSE_HOME with the directory where RSense was installed
" let g:rsenseHome = "/Users/ruairi/opt/rsense-0.3"
" let g:rsenseUseOmniFunc = 1

set completeopt=longest,menuone,preview
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" ZenCoding
let g:user_zen_leader_key = '<c-y>'
let g:use_zen_complete_tag = 1

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

