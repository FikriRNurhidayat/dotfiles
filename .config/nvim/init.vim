if exists(':lua')
  luafile ~/.config/nvim/lua/plugins.lua
  luafile ~/.config/nvim/lua/lsp/typescript.lua
  luafile ~/.config/nvim/lua/plugins/nvim-tree.lua
  luafile ~/.config/nvim/lua/plugins/nvim-treesitter.lua
endif

source ~/.config/nvim/config/keymap.vim
source ~/.config/nvim/config/ui.vim
source ~/.config/nvim/config/lsp/autoformat.vim
