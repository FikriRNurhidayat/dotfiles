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

  -- Vim Markdown
  use 'tpope/vim-markdown'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    ensure_installed = {
      "http",
      "json",
      "html",
      "css",
      "ruby",
      "go",
      "rust",
    }
  }
  use 'nvim-treesitter/playground'

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

  -- Github Theme
  use "projekt0n/github-nvim-theme"

  -- Rasi
  use {
    'Fymyte/rasi.vim',
    ft = { 'rasi' },
    run = ':TSInstall rasi',
    requires = {
      'nvim-treesitter/nvim-treesitter',
      'ap/vim-css-color',
    },
  }

  -- Trouble
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

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Nord
  use({
    "shaunsingh/nord.nvim", -- Colorscheme
    commit = "78f5f001709b5b321a35dcdc44549ef93185e024",
  })

  -- Rest Nvim
  use {
  "NTBBloodbath/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = false,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = false,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end
}

end)
