vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Let packer manage itself

  -- Telescope and Plenary
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
    }

    -- LSP
  use {
    'williamboman/mason.nvim'
  }

  use {
  "echasnovski/mini.starter",
  version = false
}

use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {}
  end
}

use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
}


  --nvim-tree
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', 
  },
  config = function()
    require("nvim-tree").setup()
  end
}

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  config = function()
    require('lualine').setup()
  end
}

  use {
    'williamboman/mason-lspconfig.nvim'
  }

  use "windwp/nvim-autopairs"

  use 'neovim/nvim-lspconfig'
   commit = '4bfc2b5'
        
     -- Autocompletion
  use 'hrsh7th/nvim-cmp'                  -- Main completion plugin
  use 'hrsh7th/cmp-nvim-lsp'              -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'                -- Buffer words
  use 'hrsh7th/cmp-path'                  -- Filesystem paths
  use 'hrsh7th/cmp-cmdline'               -- Command-line completions
  use 'saadparwaiz1/cmp_luasnip'          -- Snippet completions
  use 'L3MON4D3/LuaSnip'                  -- Snippet engine

end)

