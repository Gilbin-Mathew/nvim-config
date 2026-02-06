local lspconfig = require("lspconfig")
local nvlsp = require("nvchad.configs.lspconfig")

local servers = require("configs.lsp_list") -- Lsp servers

local custom_servers = { -- If you need customization in server behaviour // not to run on the default loop
    ["clangd"] = true,
    ["pyright"] = true,
}

for _, lsp in ipairs(servers) do
    if custom_servers[lsp] then
        print("SKIPPING default for " .. lsp)
    else
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
end

-- clangd lsp configuration for c and c++
local clangd_config = {
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
        nvlsp.on_attach(client, bufnr)
    end,
    capabilities = nvlsp.capabilities,
    cmd = {
        "clangd",
        "--offset-encoding=utf-16",
    },
}

-- 2. Apply it using the 0.11+ compatible check
if vim.lsp.config then
    vim.lsp.config("clangd", clangd_config)
else
    lspconfig.clangd.setup(clangd_config)
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
