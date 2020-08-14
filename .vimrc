set relativenumber
set nu rnu
set tabstop=2
set expandtab
set shiftwidth=2
set wildignore+=*.swp
set nowrap
set breakindent
set cursorline
set lazyredraw
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set pastetoggle=<F9>
set showcmd
set nohlsearch

call plug#begin('~/.vim/plugged')

Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdtree'
Plug 'crusoexia/vim-monokai'
Plug 'skielbasa/vim-material-monokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-editors/vim-elixir'
Plug 'vim-ruby/vim-ruby'
Plug 'iamcco/markdown-preview.vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'nikvdp/ejs-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'netsgnut/arctheme.vim'
Plug 'tpope/vim-surround'

call plug#end()

syntax on

highlight clear
highlight VertSplit cterm=NONE
highlight NonText ctermfg=black
highlight CursorLine cterm=NONE gui=NONE
highlight NERDTreeCWD cterm=NONE
highlight NERDTreeCWD cterm=NONE

map <F2> :w<CR>
map <C-n> :NERDTreeToggle<CR>
map <Home> :0<CR>
map <End> :$<CR>
map <F5> :e<CR>
map <F3> :Files<CR>
nnoremap <space> za
map <C-space> tabn
map <C-m> :MarkdownPreview<CR>

let NERDTreeQuitOnOpen = 0
let NERDTreeCWD = 0
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak', '\.swp']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 0
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let NERDTreeWinSize=24

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

