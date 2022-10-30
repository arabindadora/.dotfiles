local tsconfig = require('nvim-treesitter.configs')

tsconfig.setup {
  ensure_installed = { 'bash', 'cmake', 'dockerfile', 'go', 'gomod', 'hcl', 'http', 'json', 'python', 'yaml' },
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = true, },
}
