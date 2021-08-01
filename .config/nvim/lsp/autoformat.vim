autocmd BufWritePre *.ts lua vim.lsp.buf.formatting_sync()
