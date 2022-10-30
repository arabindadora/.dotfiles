local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')

cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}' -- disabled in visual mode
cmd 'autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500)'
-- Run gofmt + goimport on save
cmd "autocmd BufWritePre *.go :silent! lua require('go.format').goimport()"
