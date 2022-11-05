require('lspconfig').tsserver.setup({
  init_options = {
    preferences = {
        disableSuggestions = true,
    },
  },
})
