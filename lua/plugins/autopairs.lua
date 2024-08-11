local function config()
	local npairs = require("nvim-autopairs")
	npairs.setup({
		check_ts = true,
		ts_config = {
		}
	})
end

return {
	'windwp/nvim-autopairs',
	event = "InsertEnter",
	config = config,
}
