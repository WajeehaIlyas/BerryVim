vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "light"
vim.g.colors_name="berrymatcha"

local colors = {
  bg         = "#f3f5da",   -- warm beige background
  fg         = "#3e302b",   -- deep coffee brown
  comment    = "#a38d82",   -- soft warm taupe
  keyword    = "#498849",   -- muted berry pink
  function_  = "#6b9e4b",   -- warm matcha green
  string     = "#c7965b",   -- golden honey
  number     = "#e28b5b",   -- apricot orange
  type       = "#a8835a",   -- cinnamon ochre
  constant   = "#d05f74",   -- dusty strawberry
  visual     = "#f1d9c7",   -- light rose beige
  cursorline = "#f7ede4",   -- lighter beige for cursorline
  linenr     = "#c8b3a5",   -- soft clay
  statusline = "#ebd4c3",   -- almond beige
  pmenu_bg   = "#f0ddd0",   -- creamy almond
  pmenu_sel  = "#e8c8bb",   -- rose milk
}


local set = vim.api.nvim_set_hl

-- UI
set(0, "Normal",       { fg = colors.fg, bg = colors.bg })
set(0, "CursorLine",   { bg = colors.cursorline })
set(0, "CursorLineNr", { fg = colors.fg, bold = true })
set(0, "LineNr",       { fg = colors.linenr })
set(0, "Visual",       { bg = colors.visual })
set(0, "StatusLine",   { fg = colors.fg, bg = colors.statusline })
set(0, "Pmenu",        { fg = colors.fg, bg = colors.pmenu_bg })
set(0, "PmenuSel",     { bg = colors.pmenu_sel, fg = colors.fg })

-- Syntax
set(0, "Comment",      { fg = colors.comment, italic = true })
set(0, "Keyword",      { fg = colors.keyword, bold = true })
set(0, "@keyword.function", { fg = colors.keyword, bold = true })

set(0, "Function",     { fg = colors.function_, bold = false })
set(0, "@function",    { fg = colors.function_, bold = false })

set(0, "String",       { fg = colors.string })
set(0, "@string",      { fg = colors.string })

set(0, "Number",       { fg = colors.number })
set(0, "@number",      { fg = colors.number })
set(0, "Constant",     { fg = colors.constant })

set(0, "Type",         { fg = colors.type })
set(0, "@type",        { fg = colors.type })

set(0, "@operator", { fg = "#b88c92" })
set(0, "@punctuation.delimiter", { fg = "#a65c7a" }) -- e.g., ; , . :
set(0, "@punctuation.bracket",   { fg = "#5e9473" }) -- e.g., ( ) { }
set(0, "@punctuation.special",   { fg = "#bf5f82" }) -- e.g., # @ etc.
set(0, "@variable.builtin", { fg = "#6e8c4c" })
set(0, "@type.builtin", { fg = "#6e8c4c" })
set(0, "@function.call", { fg = colors.function_ }) -- for things like set()
set(0, "@field",         { fg = colors.keyword })   -- for .api or .nvim_set
set(0, "@variable",      { fg = colors.constant })  -- for local variables
set(0, "@module",        { fg = colors.keyword })   -- for `vim`, `require`
set(0, "Identifier",     { fg = colors.keyword })   -- fallback for unmatche

vim.cmd("hi! link @keyword.function Keyword")
vim.cmd("hi! link @function Function")
vim.cmd("hi! link @keyword Keyword")
vim.cmd("hi! link @constant Constant")
vim.cmd("hi! link @string String")
vim.cmd("hi! link @number Number")
vim.cmd("hi! link @type Type")

vim.cmd("hi! link TSKeyword Keyword")
vim.cmd("hi! link TSFunction Function")
vim.cmd("hi! link TSString String")
vim.cmd("hi! link TSConstant Constant")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "berrymatcha",
  callback = function()
    vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#6e8c4c" })
  end,
})



