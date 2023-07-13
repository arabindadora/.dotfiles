local g = vim.g -- a table to access global variables
local map = vim.keymap.set

local opts = { silent = true }

-- make space the leader key
map('', '<Space>', '<Nop>', opts)
g.mapleader = ' '
g.maplocalleader = ' '

map("n", "<leader>ss", "<cmd>so %<CR>", opts) -- source this file
map("n", "<leader>rg", "<cmd>!go run %<CR>", opts) -- go run this file
map('n', '<C-l>', '<cmd>noh<CR>') -- clear highlights

map('n', ';', ':')
map('v', ';', ':')
map('n', '<leader>w', '<cmd>:w<CR>')

map('n', '<leader>gg',
  ':FloatermNew --height=0.9 --width=0.9 --wintype=float --title=lazygit lazygit<CR>', opts)

-- remap increment/decrement shortcuts
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

map('', '<C-a>', '<Esc>ggVG<CR>', opts) -- select all
map('', '<C-c>', '"+y') -- copy to clipboard
map('n', '<C-p>', '<cmd>:NvimTreeToggle<cr>')
map('n', '<C-f>', '<cmd>:NvimTreeFocus<cr>')

-- manual indentation - stay in visual mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- tabs and buffers
map('', '<C-n>', '<cmd>:tabnew<cr>')
map('', '<C-w>', '<cmd>:tabclose<CR>', opts)
map("n", "]t", "<cmd>:tabnext<CR>", opts)
map("n", "[t", "<cmd>:tabprevious<CR>", opts)
map("n", "]b", "<cmd>:bnext<CR>", opts)
map("n", "[b", "<cmd>:bprevious<CR>", opts)

-- move line up/down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Don't copy when pasting over selection
map("v", "p", '"_dP')
map("v", "P", '"_dp')

-- go to beginning and end
map("i", "<C-b>", "<ESC>^i") -- " beginning of line"
map("i", "<C-e>", "<End>") -- " end of line"

-- navigate within insert mode
map("i", "<C-h>", "<Left>") -- "  move left"
map("i", "<C-l>", "<Right>") -- " move right"
map("i", "<C-j>", "<Down>") -- " move down"
map("i", "<C-k>", "<Up>") -- " move up"
