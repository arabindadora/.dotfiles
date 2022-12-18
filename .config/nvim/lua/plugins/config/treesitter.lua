local tsconfig = require('nvim-treesitter.configs')

local parsers = { 'bash', 'cmake', 'dockerfile', 'go', 'hcl', 'http', 'json', 'lua', 'python', 'yaml' }

tsconfig.setup {
  ensure_installed = parsers,
  highlight = { enable = true },
  indent = { enable = true, disable = { "python" } },
  incremental_selection = { enable = true },
}
