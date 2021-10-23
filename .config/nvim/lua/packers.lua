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
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Kotlin
  use 'udalov/kotlin-vim'

  -- Native Neovim LSP
  use 'neovim/nvim-lspconfig'

  -- Liquid
  use 'tpope/vim-liquid'

  -- Rust
  use 'rust-lang/rust.vim'

  -- Surround
  use 'tpope/vim-surround'

  -- Rails
  use { 'tpope/vim-rails' }

  -- Auto completion
  use { 'hrsh7th/nvim-compe' }
end)
