local g = vim.g -- a table to access global variables
local map = vim.keymap

-- make space the leader key
map.set('', '<Space>', '<Nop>', { silent = true })
g.mapleader = ' '
g.maplocalleader = ' '

map.set('', '<leader>c', '"+y') -- Copy to clipboard in normal, visual, select and operator modes
map.set('i', '<C-u>', '<C-g>u<C-u>') -- Make <C-u> undo-friendly
map.set('i', '<C-w>', '<C-g>u<C-w>') -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
map.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })

map.set('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
map.set('n', '<leader>o', 'm`o<Esc>``') -- Insert a newline in normal mode

map.set('n', ';', ':')
map.set('n', '<leader>w', '<cmd>:w<CR>')

map.set('n', '<leader>gg',
  ':FloatermNew --height=0.9 --width=0.9 --wintype=float --title=lazygit lazygit<CR>', { silent = true })

-- remap increment/decrement shortcuts
map.set('n', '+', '<C-a>')
map.set('n', '-', '<C-x>')
map.set('', '<C-a>', '<Nop>', { silent = true })
map.set('', '<C-x>', '<Nop>', { silent = true })
