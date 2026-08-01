-- Netrw Configuration
vim.g.netrw_banner = 0       -- Remove top banner

local function get_real_buf_count()
  local count = 0
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(buf) then
      local name = vim.api.nvim_buf_get_name(buf)
      local buftype = vim.bo[buf].buftype

      -- Include listed buffers, netrw (directory name or ft=netrw), or help pages
      if vim.bo[buf].buflisted or buftype == "help" or vim.bo[buf].filetype == "netrw" or name ~= "" then
        count = count + 1
      end
    end
  end
  return count
end

if get_real_buf_count() < 2 then
   vim.g.netrw_browse_split = 2
else
   vim.g.netrw_browse_split = 3
end


vim.g.netrw_liststyle = 0   -- Tree view mode

-- 1 = horizontal split, 2 = vertical split, 3 = new tab, 4 = right/left sidebar
vim.g.netrw_browse_split = 2

-- Set sidebar position: open on the left side
vim.g.netrw_altv = 1 

-- main window size in % 
vim.g.netrw_winsize = 75
