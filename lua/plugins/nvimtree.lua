local function config()
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1

	require("nvim-tree").setup()

	vim.keymap.set("n", "<C-f>", ":NvimTreeFindFileToggle<CR>")
	vim.keymap.set("n", "<C-t>", ":NvimTreeFocus<CR>")
end

return {
	"nvim-tree/nvim-tree.lua",
	config = config,
}
