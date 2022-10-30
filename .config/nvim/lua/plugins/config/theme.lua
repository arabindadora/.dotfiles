local lualine = require('lualine')
local colorscheme = vim.cmd.colorscheme

colorscheme('moonfly')

lualine.setup {
  options = {
    theme = 'moonfly',
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
