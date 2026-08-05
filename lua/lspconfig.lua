vim.g.lsp_diagnostics_signs_error = { text = '@' }
vim.g.lsp_diagnostics_signs_warning = { text = '$' }
vim.g.lsp_diagnostics_signs_information = { text = '#' }
vim.g.lsp_diagnostics_signs_hint = { text = '?' }

-- Lsp symbol column beside the line number
--
vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "lspErrorText", { fg = "#EF4444", bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "lspWarningText", { fg = "#F59E0B", bg = "NONE", ctermbg = "NONE" })


-- Lsp highlight
--
vim.api.nvim_set_hl(0, "LspErrorHighlight", { fg = "NONE", bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "LspWarningHighlight", { fg = "NONE", bg = "NONE", ctermbg = "NONE" })
