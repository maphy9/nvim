local function config()
	local dap = require("mason-nvim-dap")
	dap.setup({
		handlers = {},
	})
end

return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
	},
	config = config,
	event = "VeryLazy",
}
