" Set Leader key into space
let mapleader = " "

nnoremap <silent> <space> <nop>

" There's no escape
inoremap <silent> jj <ESC>

" Save
map <leader>s :w<CR>

" Go to top
map <silent> <Home> :0<CR>

" Go to bottom
map <silent> <End> :$<CR>

" Reload init.vim
map <silent> <leader>R :so ~/.config/nvim/init.vim<CR>

" Switch tab
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Open file explorer
nnoremap <silent> <leader>b :NvimTreeToggle<CR>
nnoremap <silent> <C-b> :NvimTreeToggle<CR>

" Get Highlight
nnoremap <silent> <leader>o :call SynStack()<CR>

source $HOME/.config/nvim/keys/lsp.vim
source $HOME/.config/nvim/keys/autocomplete.vim
source $HOME/.config/nvim/keys/telescope.vim
