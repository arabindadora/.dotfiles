local lualine = require('lualine')
local colorscheme = vim.cmd.colorscheme

local theme = 'gruvbox'

colorscheme(theme)

lualine.setup {
  options = {
    theme = theme,
    globalstatus = true,
  },
  sections = {
    lualine_b = { 'branch' },
    lualine_x = {
      {
        'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', hint = ' ', info = ' ' }
      },
      'filetype',
    },
  },
}

