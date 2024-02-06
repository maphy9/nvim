return require('packer').startup(function(use)
	use "https://github.com/wbthomason/packer.nvim"
	use "https://github.com/nvim-tree/nvim-web-devicons"
	use "https://github.com/nvim-lualine/lualine.nvim"
	use "https://github.com/nvim-tree/nvim-tree.lua"
	use "https://github.com/nvim-treesitter/nvim-treesitter"
	use {
		"https://github.com/williamboman/mason.nvim",
		"https://github.com/williamboman/mason-lspconfig.nvim",
		"https://github.com/neovim/nvim-lspconfig"
	}
	use "https://github.com/hrsh7th/nvim-cmp"
	use "https://github.com/hrsh7th/cmp-nvim-lsp"
	use "https://github.com/L3MON4D3/LuaSnip"
	use "https://github.com/saadparwaiz1/cmp_luasnip"
	use "https://github.com/rafamadriz/friendly-snippets"
	use "https://github.com/windwp/nvim-autopairs"
	use "https://github.com/terrortylor/nvim-comment"
	use('https://github.com/jose-elias-alvarez/null-ls.nvim')
	use('https://github.com/MunifTanjim/prettier.nvim')
	use("https://github.com/ziontee113/color-picker.nvim")

	-- color scheme
	use "https://github.com/bluz71/vim-moonfly-colors"
end)
