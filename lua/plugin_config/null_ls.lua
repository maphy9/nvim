local builtins = require("null-ls.builtins")
local formatting = builtins.formatting

local sources = {}

if vim.fn.executable("prettier") == 1 then
	ld = true
	sources[#sources+1] = formatting.prettier.with({
		command = "prettier",
		args = {"--stdin-filepath", "$FILENAME"},
	})
end

