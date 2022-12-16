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
  use 'tweekmonster/startuptime.vim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- completion
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'

  -- lsp
  use 'williamboman/mason-lspconfig.nvim'
  use 'williamboman/mason.nvim'
  use 'neovim/nvim-lspconfig'

  -- go
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'ray-x/guihua.lua'
  use 'ray-x/go.nvim'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- features
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
