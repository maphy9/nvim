require("config.lazy")

vim.o.smarttab				= true
vim.o.number					= true
vim.o.relativenumber	= true
vim.o.clipboard				= "unnamedplus"
vim.o.tabstop					= 2
vim.o.shiftwidth			= 2
vim.o.softtabstop			= 2
vim.o.expandtab				= true
vim.o.shiftround			= true
vim.o.smartcase				= true
vim.o.smartindent			= true
vim.o.smarttab				= true
vim.o.guicursor				= 'n-v-i-c:block-Cursor'

vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('x', '<M-j>', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })
vim.keymap.set('x', '<M-k>', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })

vim.keymap.set('n', 'c', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('', '<S-Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('', '<S-Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('', '<S-j>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('', '<S-k>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('', '<S-h>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('', '<S-l>', '<Nop>', { noremap = true, silent = true })

vim.keymap.set('n', "<C-S-t>", "<cmd>below terminal<CR>a")
vim.keymap.set('t', "<C-S-t>", "exit<CR>")

vim.lsp.set_log_level("off")
