if exists(':lua')
  luafile $HOME/.config/nvim/lua/packers.lua
  luafile $HOME/.config/nvim/lua/lsp/typescript.lua
  luafile $HOME/.config/nvim/lua/lsp/vue.lua
  luafile $HOME/.config/nvim/lua/plugins/github-nvim-theme.lua
  luafile $HOME/.config/nvim/lua/plugins/nvim-tree.lua
  luafile $HOME/.config/nvim/lua/plugins/nvim-treesitter.lua
  luafile $HOME/.config/nvim/lua/plugins/nvim-web-devicons.lua
  luafile $HOME/.config/nvim/lua/plugins/telescope.lua
  luafile $HOME/.config/nvim/lua/plugins/gitsigns.lua
  luafile $HOME/.config/nvim/lua/colors/me.lua
endif

source $HOME/.config/nvim/config/keymap.vim
source $HOME/.config/nvim/config/ui.vim
source $HOME/.config/nvim/config/lsp/autocomplete.vim
source $HOME/.config/nvim/config/lsp/autoformat.vim
source $HOME/.config/nvim/colors/me.vim
