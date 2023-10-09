require("plugins")
require("plugin_config")

--Options
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.clipboard = "unnamed"

-- moving selected line
vim.api.nvim_set_keymap('n', '<M-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Move selected lines up or down in visual mode
vim.api.nvim_set_keymap('x', '<M-Up>', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<M-Down>', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })

-- unbind some keyr
vim.api.nvim_set_keymap('n', 'c', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', '<S-Up>', '<Nop>', { noremap = true, silent = true })

-- rust
vim.g.rust_recommended_style = 0

-- colorscheme
vim.cmd("colorscheme catppuccin-mocha")
