-- pluggins manager

local plugin_dir = vim.fs.normalize("~/.config/nvim/plugins")

local function plug(repo)
   local name = vim.split(repo, "/", { plain = true })[2]
   local path = plugin_dir .. "/" .. name

   if vim.fn.isdirectory(path) == 0 then
      if vim.fn.isdirectory(plugin_dir) == 0 then
      vim.fn.mkdir(plugin_dir, "p")
      end

      local url = "https://github.com/" .. repo
      local cmd = string.format("git clone --depth=1 %s %s", vim.fn.shellescape(url), vim.fn.shellescape(path))
      vim.fn.system(cmd)
   end

   vim.opt.runtimepath:append(path)
end

-- Fuzzy finding
plug("junegunn/fzf")
plug("junegunn/fzf.vim")

-- Lsp
plug('prabirshrestha/vim-lsp')
plug('mattn/vim-lsp-settings')
