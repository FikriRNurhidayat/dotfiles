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

au BufRead,BufNewFile *.md setlocal textwidth=80

" Hide things
set shortmess+=F
set shortmess+=I
set shortmess+=q
" set noshowcmd
set noruler
set nohlsearch
set laststatus=0

" Tab configuration
set showtabline=0

" Statusline
set statusline=

syntax on

" Remove tilde
set fcs=eob:\ 

" Remove vertical border
set fillchars+=vert:\ 
