" =======================================
" .vimrc file
" =======================================
"
" Minimal vimfile with vundle support
" Hugo Bessa <http://github.com/hugobessaa>
" Based on the work of Weslley Araujo <http://github.com/weslleyaraujo>
" =======================================

" initial settings (specific for vundle)
set nocompatible
filetype off

" set vundle as plugin manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" =======================================
" Plugins
" =======================================

" Emmet vim
Bundle "mattn/emmet-vim"

" Editor config
Bundle 'editorconfig/editorconfig-vim'

" Ctrl p
Bundle 'kien/ctrlp.vim'

" Git Gutter
Bundle 'airblade/vim-gitgutter'

" Auto space while typing
Bundle 'jiangmiao/auto-pairs'

" Ag for searching projects
Bundle 'rking/ag.vim'

" Velocity support *shrugs*
Bundle 'lepture/vim-velocity'

" Clojure syntax highlighting
Bundle 'guns/vim-clojure-static'

" ES6 support
Bundle 'pangloss/vim-javascript'

" Beautiful color scheme
Bundle 'yosiat/oceanic-next-vim'

" =======================================
" Configs
" =======================================
syntax enable       " set syntax on
set encoding=utf-8
set wildmenu        " set vim menu
set expandtab
set tabstop=2
set shiftwidth=2
set ruler           " show cursor position
set cursorline      " hightlight for actual line
set number          " show numbers
set hlsearch        " set highlight for search
set nowrap          " set no wrap for big lines
set autoindent      " set autoindent
set nobackup        " set no backup
set background=dark
set ai
set incsearch
set scrolloff=3     " offsets the scroll when possible
set laststatus=2    " always shows the status line
set ignorecase      " case-insensitive search
set smartcase       " but case-sensitive if contains capital letter
set guifont=Monaco\ for\ Powerline:h13
autocmd BufNewFile,BufRead *.html.ejs set syntax=html
autocmd BufNewFile,BufRead *.erb      set syntax=html
autocmd BufNewFile,BufRead *.vm       set ft=velocity
autocmd BufNewFile,BufRead *.clj      set ft=clojure
autocmd BufNewFile,BufRead *.cljs     set ft=clojure

" setting theme
colorscheme OceanicNext
