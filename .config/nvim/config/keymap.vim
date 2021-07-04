" Save
map <silent> <F2> :w<CR>

" Go to top
map <Home> :0<CR>

" Go to bottom
map <End> :$<CR>

" Refresh buffer
map <F5> :e<CR>

" Fold
nnoremap <space> za

" Echo current filename
map <F4> :echo @%<CR>

" Reload init.vim
map <F10> :so ~/.config/nvim/init.vim<CR>

" Switch tab
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Open file explorer
nnoremap <C-B> :NvimTreeToggle<CR>

source ~/.config/nvim/config/keymap/lsp-config.vim
