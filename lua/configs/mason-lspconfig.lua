local servers = require("configs.lsp_list")   -- Lsp servers

local ignore_install = {}                                     -- Servers to be ingnored from installing to mason

local function table_contains(t, value)
    for _, v in ipairs(t) do
        if v == value then return true end
    end
    return false
end

local all_servers = {}
for _, s in ipairs(servers) do
    if not table_contains(ignore_install, s) then
        table.insert(all_servers, s)
    end
end

require("mason-lspconfig").setup({
    ensure_installed = all_servers,
    automatic_installation = false,
})
