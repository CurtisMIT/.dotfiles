function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.g.mapleader = " "
map("n", "<Leader>f", ":Telescope find_files<CR>")
map("n", "<Leader>g", ":Telescope live_grep<CR>")
