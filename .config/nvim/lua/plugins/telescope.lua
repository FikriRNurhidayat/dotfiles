require('telescope').setup {
  defaults = {
    border = {},
    prompt_prefix = "契",
    selection_caret = "  ",
    file_ignore_patterns = {
      "node_modules",
      "dist",
      "build",
    },
  },
}
