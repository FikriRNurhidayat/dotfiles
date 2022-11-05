require('nvim-tree').setup({
  update_cwd = true,
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
    side = 'left',
  }
})

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 0,
}
