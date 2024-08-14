local function config(_, _)
	local dap = require("dap")

	vim.keymap.set('n', '<C-l>', dap.toggle_breakpoint, {})
	vim.keymap.set('n', '<C-k>', dap.continue, {})
end

return {
	"mfussenegger/nvim-dap",
	config = config,
}
