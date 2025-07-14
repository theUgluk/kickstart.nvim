-- Config the plugins
require("custom.plugins.config.telescope");
require("custom.plugins.config.file_browser");
require("custom.set");

-- Get my remaps
require("custom.remap");
-- Some custom config

local lspconfig = require('lspconfig')

-- If you're using mason-lspconfig, ensure rust-analyzer is installed
require("mason-lspconfig").setup({
  ensure_installed = { "rust_analyzer" },
})

-- rust-analyzer setup with Clippy
lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy", -- use Clippy instead of cargo check
      },
    },
  },
})

vim.diagnostic.config {
    virtual_lines = true,
    virtual_text = false,
}
