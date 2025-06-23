require("core.plugins")            -- loads packer plugins
require("plug_config.treesitter")  -- loads treesitter setup
require("plug_config.telescope")
require("plug_config.lsp")
require("plug_config.cmp")
require("plug_config.nvimtree")
require("plug_config.lualine")
require("plug_config.mini_starter")
require("plug_config.whichkey")
require("plug_config.git")
require("plug_config.autopairs")
require("key_maps")

-- Set basic Neovim options
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = false

-- Load your custom colorscheme
vim.cmd("colorscheme berrymatcha")
vim.cmd("syntax enable")

