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

" Tab configuration
set showtabline=0

" Statusline
set statusline=

syntax on

highlight clear
highlight VertSplit cterm=NONE
highlight NonText ctermfg=black
highlight CursorLine cterm=NONE gui=NONE

call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'udalov/kotlin-vim'
Plug 'cespare/vim-toml'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-rails'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mxw/vim-jsx'
Plug 'itchyny/vim-gitbranch'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'dag/vim-fish'
call plug#end()

" FZF Settings
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Keybindings 
map <F2> :w<CR>
map <C-f> :FZF<CR>
map <Home> :0<CR>
map <End> :$<CR>
map <F5> :e<CR>
nnoremap <space> za
map <C-b> :NERDTreeToggle<CR>
map <F4> :echo @%<CR>
map <F6> :echo gitbranch#name()<CR>
map <F10> :so ~/.config/nvim/init.vim<CR>

" Netrw Setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 20
let g:netrw_altv = 1
let g:netrw_browsex_viewer= "xdg-open"

" Vim Note
:let g:notes_directories = ['~/Documents/Notes']

" NERDTree Setup
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = ['\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak', '\.swp', '\.bs.js']

" Hide things
set shortmess+=F
set noshowcmd
set noruler
set nohlsearch
set laststatus=0
