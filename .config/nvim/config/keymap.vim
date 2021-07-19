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
nnoremap <silent> <leader>f :NvimTreeToggle<CR>

source ~/.config/nvim/config/keymap/lsp-config.vim
source ~/.config/nvim/config/keymap/autocomplete.vim
source ~/.config/nvim/config/keymap/telescope.vim
