require("mini.starter").setup({
  header = table.concat({
  }, "\n"),
  items = {
    { name = "New File",   action = "enew",                     section = "" },
    { name = "Find File",  action = "Telescope find_files",     section = "" },
    { name = "Recent",     action = "Telescope oldfiles",       section = "" },
    { name = "Quit",       action = "qall",                     section = "" },
  },
  footer = "", 
})

