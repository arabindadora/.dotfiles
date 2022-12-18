local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- install packer
local packer_bootstrap = ensure_packer()
local packer = require('packer')
local util = require('packer.util')

-- initialize packer
packer.init({
  display = {
    open_fn = function()
      return util.float({ border = 'single' })
    end
  },
})

-- declare plugins
packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theme
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- performance
  use 'nathom/filetype.nvim'
  use 'lewis6991/impatient.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
    }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- go
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'ray-x/guihua.lua'
  use 'ray-x/go.nvim'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- lsp
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'hrsh7th/cmp-cmdline' },

      -- snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- features
  use 'nvim-tree/nvim-tree.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'voldikss/vim-floaterm'
  use 'NTBBloodbath/rest.nvim'
  use 'terrortylor/nvim-comment'
  use 'kyazdani42/nvim-web-devicons'
  use 'gpanders/editorconfig.nvim'

  -- bootstrap packer on fresh installs
  if packer_bootstrap then
    packer.sync()
  end
end)
