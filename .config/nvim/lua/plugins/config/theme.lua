local colorscheme = vim.cmd.colorscheme
local gruvbox = require('gruvbox')
local lualine = require('lualine')
local lualine_theme = require('lualine.themes.gruvbox')

local colors = {
  purplish  = '#0A0E14',
  lightgray = '#282828',
}

gruvbox.setup {
  contrast = 'hard',
  italic = false,
  palette_overrides = {
    dark0_hard = colors.purplish, -- background
    dark1 = colors.lightgray, -- cursorline
  },
}

colorscheme('gruvbox')

lualine_theme.normal.c.bg = colors.lightgray
lualine_theme.insert.c.bg = colors.lightgray
lualine_theme.command.c.bg = colors.lightgray
lualine_theme.visual.c.bg = colors.lightgray

lualine.setup {
  options = {
    theme = lualine_theme,
    globalstatus = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
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
