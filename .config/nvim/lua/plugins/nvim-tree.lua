require('nvim-tree').setup({
  update_cwd = true,
  lsp_diagnostics = true,
  view = {
    width = 36,
    height = 36,
    side = 'left',
    auto_resize = true
  }
})

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

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

vim.g.nvim_tree_ignore = { 'node_modules', '.cache' }
