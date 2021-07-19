-- Bootstrapping Plugins
-- This following statement will help Packer to initialize all of the plugins.
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- List of Plugins
-- This is where you write the plugins that you want to use.
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Neovim Tree File Explorer
  use 'kyazdani42/nvim-tree.lua' 
  use 'kyazdani42/nvim-web-devicons'

  -- Native Neovim LSP
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use 'nvim-lua/completion-nvim'

  -- Github Theme
  use 'projekt0n/github-nvim-theme'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP Diagnostic
  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Vim Notes
  use { 'xolox/vim-notes', requires = 'xolox/vim-misc' }

  -- Git Sign
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
end)
