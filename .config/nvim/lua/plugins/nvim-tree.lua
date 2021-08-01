vim.g.nvim_tree_show_icons = {
  files = 1,
  git = 0,
  folders = 1,
}

vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_width = 50

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
  lsp = {
    hint = "",
    info = "",
    warning = "",
    error = "",
  }
}

vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_ignore = { 'node_modules', '.cache' }
