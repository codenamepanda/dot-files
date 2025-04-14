local lspconfig = require("lspconfig")

-- Add your desired language servers
lspconfig.lua_ls.setup({})
lspconfig.pyright.setup({})
-- Add more as needed

require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
