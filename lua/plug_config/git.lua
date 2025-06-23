require("gitsigns").setup({
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "_" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
    untracked    = { text = "┆" },
  },
  signcolumn = true,
  numhl      = false,
  linehl     = false,
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 300,
    virt_text_pos = 'eol',
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    -- keymaps
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "]c", gs.next_hunk, opts)
    vim.keymap.set("n", "[c", gs.prev_hunk, opts)
    vim.keymap.set("n", "<leader>gs", gs.stage_hunk, opts)
    vim.keymap.set("n", "<leader>gu", gs.undo_stage_hunk, opts)
    vim.keymap.set("n", "<leader>gp", gs.preview_hunk, opts)
  end
})

