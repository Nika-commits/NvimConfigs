return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    'mrcjkb/rustaceanvim',
     version = '^9',
     lazy = false,
     config = function ()
        local mason_registry = require('mason-registry')
        local codelldb = mason_registry.get_package("codelldb")

        vim.g.rustaceanvim = {
          dap = {
            adapter = require("rustaceanvim.config").get_codelldb_adapter(
              codelldb:get_install_path().. "/extension/adapter/codelldb",
              codelldb:get_install_path().. "/extension/lldb/lib/liblldb.so"
            )
          }
        }
     end
  },

  {
    'mfussenegger/nvim-dap',
  },

  {
    'rcarriga/nvim-dap-ui',
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function ()
      require("dapui").setup()
    end
  },
}
