require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "python", "bash", "json", "html", "java" }, -- add more
    highlight = { enable = true },
    indent = { enable = true },
  })
  