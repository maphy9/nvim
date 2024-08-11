local function config()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
		},
	})
end

return {
	"nvimtools/none-ls.nvim",
	config = config,
}
