require('options')
require('treesitters')

vim.cmd.colorscheme("default")

-- only load language specific after the colorscheme, else overriden
--
vim.cmd("syntax on")
require('VimWindow')
require('defaultSyn')


-- interface
vim.go.cmdheight = 0
