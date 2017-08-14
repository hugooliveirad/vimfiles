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

" Ag for searching projects
Bundle 'rking/ag.vim'

" Searching and editing
Plugin 'gabesoft/vim-ags'

" ES6 support
Bundle 'pangloss/vim-javascript'

" Coffeescript
Bundle 'kchmck/vim-coffee-script'

" Elm
Bundle 'elmcast/elm-vim'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Easily write (), [], {}...
Bundle 'jiangmiao/auto-pairs'

" Repeat commands
Bundle 'tpope/vim-repeat'

" Git wrapper
Bundle 'tpope/vim-fugitive'

" Git Gutter
Bundle 'airblade/vim-gitgutter'

" Git timemachine
Bundle 'gregsexton/gitv'

" EasyMotion (like avy for emacs)
Bundle 'easymotion/vim-easymotion'

" Undo tree
Bundle 'mbbill/undotree'

" Color scheme
" Plugin 'chriskempson/base16-vim'

" Surround
Bundle 'tpope/vim-surround'

Bundle 'joshdick/onedark.vim'
Bundle 'rakr/vim-one'
Bundle 'sheerun/vim-polyglot'

Bundle 'w0rp/ale'

" =======================================
" Configs
" =======================================
syntax on       " set syntax on
filetype plugin indent on
set encoding=utf-8
set wildmenu        " set vim menu
set expandtab
set tabstop=2
set shiftwidth=2
set hidden          " just hide the buffer when switching files
set ruler           " show cursor position
set hlsearch        " set highlight for search
set nowrap          " set no wrap for big lines
set textwidth=0
set wrapmargin=0
set autoindent      " set autoindent
set nobackup        " set no backup
set backspace=2     " backspace over everything
set ai
set incsearch
set scrolloff=3     " offsets the scroll when possible
set laststatus=2    " always shows the status line
set ignorecase      " case-insensitive search
set smartcase       " but case-sensitive if contains capital letter
set foldlevelstart=50 " Files open expanded
set foldmethod=indent " Use decent folding

autocmd BufNewFile,BufRead *.html.ejs set syntax=html
autocmd BufNewFile,BufRead *.elm      set ft=elm
autocmd BufNewFile,BufRead *.erb      set syntax=html
autocmd BufNewFile,BufRead *.md       set ft=markdown

autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu | set ft=markdown
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']

" Markdown configurations
au FileType markdown set wrap linebreak nolist textwidth=80

" undo improvements
set undofile
set undodir=$HOME/.vim/undo " persist undo info here

set undolevels=1000
set undoreload=10000        " undo info survives reloads

" show hidden chars, EOL and trailing spaces
set list
set lcs=tab:»·
set lcs+=trail:·

" Toggles folding with space
nnoremap <Space> za

" Map leaders
let mapleader = ","
let localmapleader = "\\"

" Easy motion improvements
" map <Leader> <Plug>

" Easy motion bindings
" map <C-v> ,s

" colorscheme
" let g:onedark_termcolors=16
" colorscheme onedark

set background=dark
colorscheme one

" Improve syntax
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

" Ctrlp fasteeeer
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -g ""'
endif

" Binding to open ctrlP in CurFile
map <C-x> :CtrlPCurFile<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Command mode and save
nmap <c-s> :w<CR>
imap <c-s> <esc>:w<CR>
vmap <c-s> <esc>:w<CR>

" Command mode, save and quit
nmap <c-q> :wq<CR>
imap <c-q> <esc>:wq<CR>
vmap <c-q> <esc>:wq<CR>

" Auto Pairs config
let g:AutoPairsCenterLine = 0

" Elm
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1

" Elm
let g:elm_format_autosave = 1

" Ale
let g:ale_fixers = {'javascript': ['prettier_standard']}
let g:ale_linters = {'javascript': ['']}
let g:ale_fix_on_save = 1

let g:prettier#exec_cmd_async = 1
