local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local on_attach = function()
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
end

-- lua
lspconfig.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities
}

-- JavaScript and TypeScript
lspconfig.tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" },
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

-- php
lspconfig.intelephense.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		intelephense = {
			stubs = {
				'Core',
				'SPL',
				'imagick',
				'standard',
				'pcre',
				'date',
				'json',
				'ctype',
				'SimpleXML',
				'Reflection',
				'exif',
			}
		}
	}
})

-- emmet
lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css",  "html", "javascript", "javascriptreact", "less", "sass", "scss", "typescriptreact", "php" },
    init_options = {
      html = {
        options = {
          ["bem.enabled"] = true,
        },
      },
    }
})

