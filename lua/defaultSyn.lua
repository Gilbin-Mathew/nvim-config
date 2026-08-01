local M = {}
M.hi = vim.api.nvim_set_hl

function M.syntax_hi()

  -- cursor and else --
  M.hi(0, "Cursor", {fg = nil, bg = "#f0ec8c", bold = true })
  M.hi(0, "LineNr", {fg = "#5c6370", bg = nil, bold = true })
  M.hi(0, "CursorLineNr", {fg = "#f0ec8c", bg = nil, bold = true })

  M.hi(0, "StatusLine", { fg = "#9d9e9d", bg = nil, bold = false })
  M.hi(0, "StatusLineNC", { fg = "#b5c8f2", bg = nil, bold = false })

  -- netrw Dir and the '/'
  M.hi(0, "netrwDir", {fg = "#b5c8f2", bg = nil, bold = true })
  M.hi(0, "netrwClassify", {fg = "#b5c8f2", bg = nil, bold = true })

  M.hi(0, "EndOfBuffer", {fg = "#565656", bg = nil, bold = true })
  M.hi(0, "VertSplit", {fg = "#565656", bg = nil, bold = true })
  M.hi(0, "WinSeparator", {fg = "#565656", bg = nil, bold = true })

  -- :hi StatusLine ctermbg=234 ctermfg=253 cterm=NONE
  --  :hi StatusLineNC ctermbg=234 ctermfg=244 cterm=NONE
  --  :hi VertSplit ctermbg=234 ctermfg=237 cterm=NONE
  --  :hi WinSeparator ctermbg=234 ctermfg=237 cterm=NONE


  M.hi(0, "MatchParen", { fg = "#ff1493", bg = nil, bold = true, italic = true })
  M.hi(0, "Operator", { fg = "#ffffff", bg = nil, bold = true, italic = false })
  M.hi(0, "Error", { fg = "#ff0000", bg = nil, bold = false, italic = false })
  M.hi(0, "WarningMsg", { fg = "#ffff00", bg = nil, bold = false, italic = false })
end

if not vim.opt.termguicolors:get() then
  vim.opt.termguicolors = true
end
M.syntax_hi()

  -- Comments --
--  M.hi(0, "Comment", { fg = "#eb9a4c", bg = nil})
--
--  -- String --
--  M.hi(0, "String", { fg = "#7aca82", bg = nil, bold = false, italic = false })
--
--  -- Functions --
--  M.hi(0, "Function", { fg = "#bba3d6", bg = nil, bold = false, italic = false })
--
--  -- Keywords and statements --
--  M.hi(0, "Keyword", { fg = "#f0ec8c", bg = nil, bold = true, italic = false })
--  M.hi(0, "Conditional", { fg = "#f0ec8c", bg = nil, bold = true, italic = false })
--  M.hi(0, "Statement", { fg = "#f0ec8c", bg = nil, bold = true, italic = false })
--
--  -- Identifiers and constants --
--  M.hi(0, "Identifier", { fg = "#ffffff", bg = nil, bold = false, italic = false })
--  M.hi(0, "Constant", { fg = "#ffffff", bg = nil, bold = false, italic = false })
--  M.hi(0, "Number", { fg = "#d19a66", bg = nil, bold = false, italic = false })
--  M.hi(0, "Boolean", { fg = "#ff0000", bg = nil, bold = false, italic = false })
--
--
--  -- Change inactive split statuslines (optional)
--  --vim.api.nvim_set_hl
--end
--
---- overriding the h file for cpp --
----
---- vim.g.c_syntax_for_h = 1
-- vim.g.do_filetype_lua = 1
-- 
-- vim.filetype.add({
--   extension = {
--     h = "c",
--   },
-- })


--if 
--  vim.treesitter.start()

-- setting and enabling the 24 bit color && starting the treesitters --
--
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "c" },
--   callback = function()
--     if not vim.opt.termguicolors:get() then
--       vim.opt.termguicolors = true
--     end
--       vim.treesitter.start()
--       M.syntax_hi()
--     end
-- })
