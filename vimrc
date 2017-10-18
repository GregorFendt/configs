" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
runtime! debian.vim

"compatible setting with vi
"set compatible
"syntax highlighting
syntax on

"better copy&paste large blocks
set pastetoggle=<F2>
"set clipboard = unnamed

let mapleader =";"

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"OWN CHANGES
"
"lightline.vim
Plugin 'itchyny/lightline.vim'

set rnu
set nu
set autoindent
set tabstop=2
set softtabstop=2
set shiftround
set expandtab
set ruler
"search settings
set hlsearch
set ignorecase
set smartcase

"color themes
set termguicolors
"set background=dark
"colors elflord
colorscheme ron 
"colorscheme slate
