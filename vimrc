" Editor behaviour
set nocompatible 
syntax enable
filetype plugin indent on
set showmode 
set backspace=indent,eol,start
set hidden
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set ruler
set hlsearch
set incsearch
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set backupdir=~/.vim/backup
set wrap
set scrolloff=5
set title
set visualbell
set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent



"Solarized VIM color scheme
"set background=dark
"let g:solarized_termcolors=16
"colorscheme solarized
