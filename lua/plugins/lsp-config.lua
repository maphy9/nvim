return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pyright", "gopls" },
        automatic_enable = false
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- lua
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }

      -- python
      lspconfig.pyright.setup {
        capabilities = capabilities,
      }

      -- go
      lspconfig.gopls.setup {
        capabilities = capabilities,
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "<C-a>", vim.lsp.buf.code_action)
    end
  }
}
