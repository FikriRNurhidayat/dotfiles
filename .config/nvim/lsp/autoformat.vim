autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync()
