 require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "javascript", "python", "html", "css", "lua", "php" },

  sync_install = false,
  highlight = {
    enable = true,
		additional_vim_regex_highlighting = false,
  },
	indent = {
		enable = true,
	},
}
