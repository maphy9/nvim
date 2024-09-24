local function config()
	require'nvim-treesitter.configs'.setup {
		ensure_installed = { "c", "cpp", "lua", "python", "javascript", "html", "css", "cmake" },
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		-- indent = {
		-- 	enable = true,
		-- },
	}
end

return {
	"nvim-treesitter/nvim-treesitter",
	config = config,
}
