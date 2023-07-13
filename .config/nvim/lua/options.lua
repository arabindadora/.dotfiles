local g = vim.g -- a table to access global variables
local opt = vim.opt -- to set options

g.loaded_netrw = 1 -- disable netrw
g.loaded_netrwPlugin = 1
opt.background = 'dark'
opt.completeopt = { 'menu', 'menuone', 'noinsert', 'noselect' } -- Completion options
opt.cursorline = true
-- opt.foldmethod = 'expr'
-- opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.hidden = true -- Enable background buffers
opt.ignorecase = true -- Ignore case
opt.joinspaces = false -- No double spaces with join
opt.list = false -- Show some invisible characters
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 8 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context
opt.smartcase = true -- Do not ignore case with capitals
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.termguicolors = true -- True color support
opt.wildmode = { 'list', 'longest' } -- Command-line completion mode
opt.wrap = false -- Disable line wrap

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.shiftround = true -- Round indent
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath('data') .. '/.undo'
opt.undofile = true
