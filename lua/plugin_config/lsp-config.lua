require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "tsserver", "pylsp"}
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function() 
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
end

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

require("lspconfig").tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = vim.loop.cwd,
	init_options = {
		preferences = {
			disableSuggestions = true,
		}
	},
}

require("lspconfig").pylsp.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = vim.loop.cwd,
}

