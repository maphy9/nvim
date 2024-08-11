require("config.lazy")

vim.o.smarttab				= true
vim.o.number					= true
vim.o.relativenumber	= true
vim.o.clipboard				= "unnamedplus"
vim.o.shiftwidth			= 2
vim.o.tabstop					= 2
vim.o.softtabstop			= 2
vim.o.shiftround			= true
vim.o.smartcase				= true
vim.o.smartindent			= true
vim.o.smarttab				= true

vim.api.nvim_set_keymap('n', '<M-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-j>', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-k>', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'c', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-j>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-k>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-h>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-l>', '<Nop>', { noremap = true, silent = true })
