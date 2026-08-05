vim.g.mapleader = ' '

-- Behaviours and general
--
vim.keymap.set('n', '<leader>nn', ':set number! relativenumber!<CR>')
vim.keymap.set('n', '<leader>cd', ':Ex<CR>')

-- Buffer and tab specific
--
--- Cycle to next listed (valid) buffer, skipping hidden/netrw buffers
vim.keymap.set("n", "<S-l>", function()
   vim.cmd("bnext")
   if vim.bo.filetype == "netrw" then
      vim.cmd("bnext")
   end
end, { silent = true, desc = "Next file buffer" })

vim.keymap.set("n", "<S-h>", function()
   vim.cmd("bprevious")
   if vim.bo.filetype == "netrw" then
      vim.cmd("bprevious")
   end
end, { silent = true, desc = "Previous file buffer" })

-- Lsp specifc
--
local opts = { silent = true }

vim.keymap.set('n', '<leader>lh', ':LspHover<CR><CR>', opts)
vim.keymap.set('n', '<leader>gd', ':LspDefinition<CR><CR>', opts)

vim.keymap.set('n', '<leader>ld', ':LspPeekDefinition<CR><CR>', opts)
vim.keymap.set('n', '<leader>lD', ':LspPeekDeclaration<CR><CR>', opts)

-- File based and searching
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR><C-l>', { silent = true,})
vim.keymap.set('n', '<leader>ff', ':Files<CR>', { silent = true,})
vim.keymap.set('n', '<leader>fh', ':History<CR>', { silent = true,})
vim.keymap.set('n', '<leader>fb', ':Buffer<CR>', { silent = true,})
