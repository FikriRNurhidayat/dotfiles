local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup{}
lspconfig.rls.setup {
  settings = {
    rust = {
      unstable_features = true,
      build_on_save = false,
      all_features = true,
    },
  },
}
