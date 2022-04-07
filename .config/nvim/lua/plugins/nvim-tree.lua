require('nvim-tree').setup({
  update_cwd = true,
  lsp_diagnostics = true,
  git = {
    enable = false,
    ignore = true,
    timeout = 500,
  },
  filters = {
    custom = {
      'node_modules',
      '.cache',
    }
  },
  view = {
    width = 36,
    height = 64,
    side = 'left',
    auto_resize = true
  }
})

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 0,
  files = 0,
  folder_arrows = 0,
}
