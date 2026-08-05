local M = {}
M.hi = vim.api.nvim_set_hl

function M.syntax_hi()

   -- Background color
   M.hi(0, "Normal", { bg = "#151717" })

   -- cursor and else --
   M.hi(0, "Cursor", {fg = nil, bg = "#f0ec8c", bold = true })
   M.hi(0, "LineNr", {fg = "#565656", bg = nil, bold = true })
   M.hi(0, "CursorLineNr", {fg = "#f0ec8c", bg = nil, bold = true })

   M.hi(0, "StatusLine", { fg = "#9d9e9d", bg = nil, bold = false })
   M.hi(0, "StatusLineNC", { fg = "#bba3d6", bg = nil, bold = false })

   -- netrw Dir and the '/'
   M.hi(0, "netrwDir", {fg = "#b5c8f2", bg = nil, bold = true })
   M.hi(0, "netrwClassify", {fg = "#b5c8f2", bg = nil, bold = true })

   M.hi(0, "EndOfBuffer", {fg = "#565656", bg = nil, bold = true })
   M.hi(0, "VertSplit", {fg = "#565656", bg = nil, bold = true })
   M.hi(0, "WinSeparator", {fg = "#565656", bg = nil, bold = true })

   M.hi(0, "MatchParen", { fg = "#ff1493", bg = nil, bold = true, italic = true })
   M.hi(0, "Operator", { fg = "#ffffff", bg = nil, bold = true, italic = false })
   M.hi(0, "Error", { fg = nil, bg = nil, bold = false, italic = false })
   M.hi(0, "Todo", { fg = nil, bg = nil, bold = false, italic = false })
   M.hi(0, "WarningMsg", { fg = "#ffff00", bg = nil, bold = false, italic = false })

   M.hi(0, "NormalFloat", { bg = "NONE", ctermbg = "NONE" })
   M.hi(0, "FloatBorder", { fg = "#565656", bg = "NONE", ctermbg = "NONE" })
   M.hi(0, "FloatTitle", { fg = "#b5c8f2", bg = "NONE", ctermbg = "NONE" })
   M.hi(0, "Pmenu", { bg = "NONE", ctermbg = "NONE" })
end

M.syntax_hi()
