local function mason_config()
	require("mason").setup({
		ensure_installed = { "clang-format", "codelldb" },
	})
end

local function masonlsp_config()
	require("mason-lspconfig").setup({
		ensure_installed = { "lua_ls", "tsserver", "clangd", "emmet_ls", "cssls", "pyright", "cmake" },
	})
end

local function nvimlsp_config()
	local capabilities = require('cmp_nvim_lsp').default_capabilities()
	local lspconfig = require("lspconfig")
	local on_attach = function()
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	end


	-- Lua
	lspconfig.lua_ls.setup {
		on_attach = on_attach,
		capabilities = capabilities,
		root_dir = vim.loop.cwd,
	}

	-- JavaScript and TypeScript
	lspconfig.tsserver.setup {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
		root_dir = vim.loop.cwd,
	}

	-- Python
	lspconfig.pyright.setup {
		on_attach = on_attach,
		capabilities = capabilities,
		root_dir = vim.loop.cwd,
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "off",
				},
			},
		},
	}

	-- C/C++
	lspconfig.clangd.setup {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { "clangd", "--compile-commands-dir=build" },
		root_dir = function(fname)
			return lspconfig.util.root_pattern("CMakeLists.txt", "Makefile")(fname)
		end,
	}

	-- cmake
	lspconfig.cmake.setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	-- css
	lspconfig.cssls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})

	-- emmet
	lspconfig.emmet_ls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "css", "html", "php", "javascriptreact", "typescriptreact", "htmldjango" },
		init_options = {
			html = {
				options = {
					["bem.enabled"] = true,
				},
			},
		}
	})
end

return {
	{
		"williamboman/mason.nvim",
		config = mason_config,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = masonlsp_config,
	},
	{
		"neovim/nvim-lspconfig",
		config = nvimlsp_config,
	},
	config = config,
}
