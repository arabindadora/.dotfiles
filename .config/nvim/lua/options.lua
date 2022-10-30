local g = vim.g -- a table to access global variables
local opt = vim.opt -- to set options

g.did_load_filetypes = 1 -- do not source the default filetype.vim
g.loaded_netrw = 1 -- disable netrw
g.loaded_netrwPlugin = 1
opt.background = 'dark'
opt.completeopt = { 'menuone', 'noinsert', 'noselect' } -- Completion options
opt.cursorline = true
opt.expandtab = true -- Use spaces instead of tabs
-- opt.foldmethod = 'expr'
-- opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.hidden = true -- Enable background buffers
opt.ignorecase = true -- Ignore case
opt.joinspaces = false -- No double spaces with join
opt.list = false -- Show some invisible characters
opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 8 -- Lines of context
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.sidescrolloff = 8 -- Columns of context
opt.smartcase = true -- Do not ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.wildmode = { 'list', 'longest' } -- Command-line completion mode
opt.wrap = false -- Disable line wrap