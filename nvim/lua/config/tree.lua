-- lua/config/tree.lua

require("nvim-tree").setup({
    view = {
      width = 30,
      side = "left",
      relativenumber = true,
    },
    renderer = {
      icons = {
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
      },
    },
    filters = {
      dotfiles = false, -- show dotfiles
    },
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
  })
  