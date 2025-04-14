return {
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }, -- Treesitter
    { "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    }, -- Telescope
    { "nvim-telescope/telescope-media-files.nvim" }, -- Telescope media files
    { "neovim/nvim-lspconfig" }, -- LSP
      -- Mason (LSP installer)
    {
      "williamboman/mason.nvim",
      build = ":MasonUpdate",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = { "williamboman/mason.nvim" },
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = { "lua_ls", "pyright" } -- auto-install these
        })
      end
    },
    {
      "nvim-tree/nvim-tree.lua",
      requires = { "nvim-tree/nvim-web-devicons" },  -- optional, for file icons
      config = function()
        require("nvim-tree").setup({
          -- Customize nvim-tree settings here if needed
        })
      end
    }
    }
    