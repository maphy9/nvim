vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.clipboard = "unnamedplus"
vim.o.number = true
vim.o.relativenumber = true

require("config.lazy")

vim.keymap.set('n', '<C-f>', '<Cmd>Neotree toggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', "<C-t>", ":Neotree focus<CR>")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
