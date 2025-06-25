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

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
