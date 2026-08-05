local M = {}
M.hi = vim.api.nvim_set_hl

function M.syntax_hi()

  M.hi(0, "MatchParen", { fg = "#ff1493", bg = nil, bold = true, italic = true })
  M.hi(0, "@punctuation", { fg = "#d2d7dd", bg = nil, bold = false, italic = false })
  M.hi(0, "Operator", { fg = "#d2d7dd", bg = nil, bold = true, italic = false })
  M.hi(0, "Error", { fg = "#ff0000", bg = nil, bold = false, italic = false })
  M.hi(0, "WarningMsg", { fg = "#ffff00", bg = nil, bold = false, italic = false })

  -- Comments --
  M.hi(0, "Comment", { fg = "#d5c4a1", bg = nil})

  --Preprocessor --
  -- M.hi(0, "PreProc", { fg = "#56b6c2", bg = nil, bold = false, italic = false })
  M.hi(0, "PreProc", { fg = "#9d9e9d", bg = nil, bold = false, italic = false })

  -- String --
  M.hi(0, "String", { fg = "#7aca82", bg = nil, bold = false, italic = false })
  M.hi(0, "Character", { fg = "#7aca82", bg = nil, bold = false, italic = false })

  -- Functions --
  -- M.hi(0, "Function", { fg = "#bba3d6", bg = nil, bold = false, italic = false })
  M.hi(0, "Function", { fg = "#b5c8f2", bg = nil, bold = false, italic = false })

  -- Keywords and statements --
  M.hi(0, "Keyword", { fg = "#f0ec8c", bg = nil, bold = false, italic = false })
  M.hi(0, "Conditional", { fg = "#f0ec8c", bg = nil, bold = false, italic = false })
  M.hi(0, "Statement", { fg = "#f0ec8c", bg = nil, bold = false, italic = false })
  M.hi(0, "@type.qualifier", { fg = "#f0ec8c", bg = nil, bold = false, italic = false })
  M.hi(0, "StorageClass", { fg = "#f0ec8c", bg = nil, bold = false, italic = false })

  -- Identifiers and constants --
  M.hi(0, "Identifier", { fg = "#d2d7dd", bg = nil, bold = false, italic = false })
  M.hi(0, "Constant", { fg = "#d2d7dd", bg = nil, bold = false, italic = false })
  M.hi(0, "Number", { fg = "#d19a66", bg = nil, bold = false, italic = false })
  M.hi(0, "Special", { fg = "#d19a66", bg = nil, bold = false, italic = false })
  M.hi(0, "Boolean", { fg = "#d19a66", bg = nil, bold = false, italic = false })

  -- Type and typedef
  M.hi(0, "Type", { fg = "#d2d7dd", bg = nil, bold = false, italic = false })
  M.hi(0, "Typedef", { fg = "#d2d7dd", bg = nil, bold = false, italic = false })
  M.hi(0, "@type.builtin", { fg = "#9d9e9d", bg = nil, bold = false, italic = false })

end

-- overriding the h file for cpp --
--
vim.g.c_syntax_for_h = 1
vim.g.do_filetype_lua = 1

vim.filetype.add({
  extension = {
    h = "c",
  },
})

--setting and enabling the 24 bit color && starting the treesitters --

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp"},
  callback = function()
    if not vim.opt.termguicolors:get() then
      vim.opt.termguicolors = true
    end
      vim.treesitter.start()
      M.syntax_hi()
    end
})
