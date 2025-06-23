local notify = vim.notify
vim.notify = function(msg, ...)
  if type(msg) == "string" and msg:match("Lua language server refused to load this directory") then
    return
  end
  notify(msg, ...)
end

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" }, 
  automatic_installation = true,              
  handlers = {
    -- Default handler for any server not customized
    function(server_name)
      require("lspconfig")[server_name].setup({})
    end,
    -- Custom lua_ls config
    ["lua_ls"] = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      lspconfig.lua_ls.setup({
        root_dir = function(fname)
          -- If in config dir, return it as root
          local config_path = vim.fn.expand("~/.config/nvim")
          if fname:find(config_path, 1, true) == 1 then
            return config_path
          end
          -- Otherwise fallback to normal detection
          return util.root_pattern(".nvim-root", ".git")(fname) or util.path.dirname(fname)
        end,
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
                vim.fn.expand("~/.config/nvim/lua"),
              },
            },
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
})
