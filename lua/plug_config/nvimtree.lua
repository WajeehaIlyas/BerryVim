require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
    number = false,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
  },
})

