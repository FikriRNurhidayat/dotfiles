set nocompatible
filetype plugin on
syntax on

set textwidth=74

function! JournalHeader()
	return "# " . strftime('%a') . " " . strftime('%m/%d')
endfunction

nmap <Space>l :r ~/Documents/templates/vim-journal.md<CR>gg"=JournalHeader()<C-M>pgg

let g:vimwiki_list = [{ 'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md' }]

:au VimEnter * VimwikiDiaryIndex
:au VimEnter * if exists(':Goyo') | Goyo | endif

set syntax=markdown
