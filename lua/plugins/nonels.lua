local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local function config()
	local null_ls = require("null-ls")
	null_ls.setup({
		sources = {
			null_ls.builtins.formatting.clang_format,
			null_ls.builtins.formatting.goimports,
			null_ls.builtins.formatting.golines,
			null_ls.builtins.formatting.gofumpt,
		},
		on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ async = false })
					end,
				})
			end
    end,
	})
end

return {
	"nvimtools/none-ls.nvim",
	config = config,
	event = "VeryLazy",
}
