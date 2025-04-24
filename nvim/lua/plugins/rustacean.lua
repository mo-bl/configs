return {
  -- Add RustAcean.nvim for enhanced Rust support
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
}
--     dependencies = {
--       "williamboman/mason.nvim",       -- LSP/DAP installer
--       "williamboman/mason-lspconfig.nvim", -- Mason integration for LSPConfig
--     },
--     config = function()
--       require("rustacean").setup({
--         server = {
--           -- Customize Rust Analyzer options here if needed
--           settings = {
--             ["rust-analyzer"] = {
--               cargo = {
--                 allFeatures = true,
--               },
--               checkOnSave = {
--                 command = "clippy",
--               },
--             },
--           },
--         },
--         dap = {
--           -- Enable debugging with nvim-dap
--           adapter = require("rustacean.dap").get_adapter(),
--         },
--       })
--     end,
--   },
-- }
