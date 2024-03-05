local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local on_attach = function()
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
end

-- Lua
lspconfig.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
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
	settings = {
    python = {
      analysis = {
        typeCheckingMode = "off",
      },
    },
  },
}

-- C
lspconfig.clangd.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

-- css
lspconfig.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- php
lspconfig.intelephense.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = vim.loop.cwd,
	filetypes = { "php" },
})

-- emmet
lspconfig.emmet_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "php", "css", "html", "javascriptreact", "typescriptreact" },
	init_options = {
		html = {
			options = {
				["bem.enabled"] = true,
			},
		},
	}
})
