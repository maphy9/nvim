local function config()
	require("neodev").setup({
		library = { plugins = { "nvim-dap-ui" }, types = true },
	})
end

return {
	"folke/neodev.nvim",
	config = config,
}
