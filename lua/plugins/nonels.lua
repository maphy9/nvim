return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup {
        diagnostics_format = "#{m}",
        on_attach = function(client, bufnr)
            client.server_capabilities.documentDiagnosticsProvider = false
        end,
        sources = {
        },
      }
    end
  }
}
