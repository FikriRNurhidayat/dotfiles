require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },

  indent = {
    enable = false,
    disable = {}
  },

  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "html",
    "css",
    "scss",
    "ruby",
    "typescript",
    "javascript"
  }
}
