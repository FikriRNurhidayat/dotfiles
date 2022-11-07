require('nvim-tree').setup({
  update_cwd = true,
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = false,
      },
    },
  },
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
