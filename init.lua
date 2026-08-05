require('options')
require('VimWindow')

vim.cmd.colorscheme("default")
vim.cmd("syntax on")

require('defaultSyn')

-- Load language specifc after the colorscheme and the default color
require('treesitters')

require('plugins')
require('lspconfig')

-- I think the keymaps should be loaded after the plugins and lsp because of the... Ahh! i forgot to say
require('keymaps')
