if vim.o.background == "light" then
   require('languages.c.light')
else
   require('languages.c.dark')
end
