-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- declare plugins
require("lazy").setup({
  -- theme
  'ellisonleao/gruvbox.nvim',
  'nvim-lualine/lualine.nvim',

  -- performance
  'nathom/filetype.nvim',
  'lewis6991/impatient.nvim',

  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  -- go
  {
    'ray-x/go.nvim',
    dependencies = {
      'mfussenegger/nvim-dap',
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'ray-x/guihua.lua',
    }
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- lsp
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-cmdline',

      -- snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
  },

  -- features
  'nvim-tree/nvim-tree.lua',
  'lewis6991/gitsigns.nvim',
  'voldikss/vim-floaterm',
  'NTBBloodbath/rest.nvim',
  'terrortylor/nvim-comment',
  'kyazdani42/nvim-web-devicons',
  'gpanders/editorconfig.nvim'
})
