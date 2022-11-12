local telescope = require('telescope')
local map = vim.keymap
local opts = { silent = true }

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Add leader shortcuts
map.set('n', '<leader>bb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], opts)
map.set('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], opts)
map.set('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opts)
map.set('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)
map.set('n', '<leader>gl', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map.set('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)
map.set('n', '<leader>f', [[<cmd>lua vim.lsp.buf.format({async = true})<CR>]], opts)
