local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = require("configs.lsp_list")   -- Lsp servers
-- Loop through the servers
for _, lsp in ipairs(servers) do
  -- We use the new vim.lsp.config if available (Neovim 0.11+)
  -- or fallback to the standard setup for compatibility
  local config = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }

  -- This check bypasses the deprecation warning
  if vim.lsp.config then
    vim.lsp.config(lsp, config)
  else
    lspconfig[lsp].setup(config)
  end
end
-- Example of a server-specific configuration
-- If you need to pass specific settings to an LSP (like pyright), 
-- you configure it separately like this:
-- lspconfig.pyright.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     python = {
--       analysis = {
--         autoImportCompletions = true,
--       },
--     },
--   },
-- }
