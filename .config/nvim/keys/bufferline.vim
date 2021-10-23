" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent><leader>h :BufferLineCycleNext<CR>
nnoremap <silent><leader>l :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><C-l> :BufferLineMoveNext<CR>
nnoremap <silent><C-h> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
