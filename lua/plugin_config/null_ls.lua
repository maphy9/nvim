local builtins = require("null-ls.builtins")
local formatting = builtins.formatting

local sources = {}
local ld = false

-- "javascript", "javascriptreact", "typescript", "typescriptreact", "vue",
-- "css", "scss", "less", "html", "json", "yaml", "markdown", "graphql"
if vim.fn.executable("prettier") == 1 then
	ld = true
	sources[#sources+1] = formatting.prettier.with({
		command = "prettier",
		args = {"--stdin-filepath", "$FILENAME"},
	})
end


-- Django ("htmldjango")
if vim.fn.executable("djlint") == 1 then
	ld = true
	sources[#sources+1] = formatting.djlint.with({
		command = "djlint",
		args = { "--reformat", "-"},
	})
end
