vim.opt.background = "dark" 

if not vim.opt.termguicolors:get() then
  vim.opt.termguicolors = true
end

if vim.o.background == "dark" then
   require("colors.dark")
else
   require("colros.light")
end
