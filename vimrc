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

" Ag for searching projects
Bundle 'rking/ag.vim'

" ES6 support
Bundle 'pangloss/vim-javascript'

" Coffeescript
Bundle 'kchmck/vim-coffee-script'

" Elm
Bundle 'elmcast/elm-vim'

" Beautiful color scheme
Bundle 'joshdick/onedark.vim'
Bundle 'joshdick/airline-onedark.vim'
Bundle 'vim-airline/vim-airline-themes'

Bundle 'sheerun/vim-polyglot'

Bundle 'vim-airline/vim-airline'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Easily write (), [], {}...
Bundle 'jiangmiao/auto-pairs'

" Repeat commands
Bundle 'tpope/vim-repeat'

" Git wrapper
Bundle 'tpope/vim-fugitive'

" EasyMotion (like avy for emacs)
Bundle 'easymotion/vim-easymotion'

" =======================================
" Configs
" =======================================
syntax enable       " set syntax on
filetype plugin indent on
set encoding=utf-8
set wildmenu        " set vim menu
set expandtab
set tabstop=2
set shiftwidth=2
set ruler           " show cursor position
set number          " show numbers
set hlsearch        " set highlight for search
set nowrap          " set no wrap for big lines
set textwidth=0
set wrapmargin=0
set autoindent      " set autoindent
set nobackup        " set no backup
set background=dark
set backspace=2     " backspace over everything
set ai
set incsearch
set scrolloff=3     " offsets the scroll when possible
set laststatus=2    " always shows the status line
set ignorecase      " case-insensitive search
set smartcase       " but case-sensitive if contains capital letter
set guifont=Fira\ Code\ Light:h15
set foldlevelstart=50 " Files open expanded
set foldmethod=indent " Use decent folding
autocmd BufNewFile,BufRead *.html.ejs set syntax=html
autocmd BufNewFile,BufRead *.erb      set syntax=html
autocmd BufNewFile,BufRead *.md       set ft=markdown

" Toggles folding with space
nnoremap <Space> za

" Map leaders
let mapleader = ","
let localmapleader = "\\"

" Easy motion improvements
map <Leader> <Plug>(easymotion-prefix)

" colorscheme
let g:onedark_termcolors=16
colorscheme onedark

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='onedark'


if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" ctrl-p for big projects (like platform)
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" Markdown configs
au FileType markdown set wrap linebreak nolist textwidth=80 

" Ctrlp fasteeeer
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Auto Pairs config
let g:AutoPairsCenterLine = 0
