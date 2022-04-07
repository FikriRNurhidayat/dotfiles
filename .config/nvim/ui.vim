" Set relative number
set nu rnu

" Set tab size
set tabstop=2
set expandtab

set shiftwidth=2
set wildignore+=*.swp
set nowrap
set breakindent
set lazyredraw
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set pastetoggle=<F9>
set nocursorline
set noswapfile

" Hide things
set shortmess+=at
set shortmess+=I
set shortmess+=F
set noshowcmd
set noruler
set nohlsearch
set laststatus=0

" Tab configuration
set showtabline=0

" Statusline
set statusline=

syntax on

highlight VertSplit cterm=NONE gui=NONE
highlight NonText ctermfg=black guibg=black
highlight CursorLine cterm=NONE gui=NONE
highlight Pmenu cterm=NONE gui=NONE
highlight NormalFloat ctermbg=NONE gui=NONE

" Remove tilde
set fcs=eob:\ 

" Remove vertical border
set fillchars+=vert:\ 
