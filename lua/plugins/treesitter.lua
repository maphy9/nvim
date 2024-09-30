local function config()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = { "c", "cpp", "lua", "python", "javascript", "html", "css", "cmake", "vue" },
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	}
end

return {
	"nvim-treesitter/nvim-treesitter",
	config = config,
}
