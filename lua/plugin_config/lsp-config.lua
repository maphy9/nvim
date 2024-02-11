require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "tsserver", "clangd", "emmet_ls", "pyright", "phpactor", "gopls"}
})

require("plugin_config.lsp")
