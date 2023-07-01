autocmd BufWritePre *.ts lua vim.lsp.buf.format()
autocmd BufWritePre *.go lua vim.lsp.buf.format()
