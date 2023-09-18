require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-c>', builtin.find_files, {})
