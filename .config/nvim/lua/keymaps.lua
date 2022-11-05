local g = vim.g -- a table to access global variables
local map = vim.keymap

local opts = { silent = true }

-- make space the leader key
map.set('', '<Space>', '<Nop>', opts)
g.mapleader = ' '
g.maplocalleader = ' '

-- source this file
map.set("n", "<leader>ss", "<cmd>so %<CR>", opts)

-- <Tab> to navigate the completion menu
map.set('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
map.set('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })

map.set('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights

map.set('n', ';', ':')
map.set('n', '<leader>w', '<cmd>:w<CR>')

map.set('n', '<leader>gg',
  ':FloatermNew --height=0.9 --width=0.9 --wintype=float --title=lazygit lazygit<CR>', opts)

-- remap increment/decrement shortcuts
map.set('n', '+', '<C-a>')
map.set('n', '-', '<C-x>')

map.set('', '<C-a>', '<Esc>ggVG<CR>', opts) -- select all
map.set('', '<C-c>', '"+y') -- copy to clipboard

-- manual indentation - stay in visual mode
map.set("v", "<", "<gv", opts)
map.set("v", ">", ">gv", opts)

-- tabs and buffers
map.set('', '<C-n>', '<cmd>:tabnew<cr>')
map.set('', '<C-x>', '<cmd>:tabclose<CR>', opts)
map.set("n", "]t", "<cmd>:tabnext<CR>", opts)
map.set("n", "[t", "<cmd>:tabprevious<CR>", opts)
map.set("n", "]b", "<cmd>:bnext<CR>", opts)
map.set("n", "[b", "<cmd>:bprevious<CR>", opts)

-- move line up/down
map.set("n", "<S-u>", "<Esc>:m .-2<CR>", opts)
map.set("n", "<S-d>", "<Esc>:m .+1<CR>", opts)

