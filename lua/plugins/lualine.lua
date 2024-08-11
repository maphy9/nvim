local function config()
	require('lualine').setup {
		options = {
			icons_enabled = true,
			theme = 'catppuccin',
			component_separators = { left = '', right = ''},
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch'},
			lualine_c = {'filename'},
			lualine_x = {'filetype'},
			lualine_y = {'progress'},
			lualine_z = {'location'}
		},
	}
end

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = config,
}
