local function config()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<C-c>', builtin.find_files, {})
end

return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
}
