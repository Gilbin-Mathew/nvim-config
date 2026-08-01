local opt = vim.opt

-- ui

opt.background = "dark" 
opt.termguicolors = true

-- basic settings
opt.number = true                       -- line numbers
opt.relativenumber = true               -- relative line number
opt.cursorline = false                  -- highlighting the cursor
opt.scrolloff = 10                  -- Keep 10 lines above/below cursor 
opt.sidescrolloff = 8               -- Keep 8 columns left/right of cursor

-- Indentation
opt.tabstop = 3                     -- Tab width
opt.shiftwidth = 3                  -- Indent width
opt.softtabstop = 3                 -- Soft tab stop
opt.expandtab = true                -- Use spaces instead of tabs
opt.smartindent = true              -- Smart auto-indenting
opt.autoindent = true               -- Copy indent from current line

-- Search settings
opt.ignorecase = true               -- Case insensitive search
opt.smartcase = true                -- Case sensitive if uppercase in search
opt.hlsearch = true                 -- Don't highlight search results 
opt.incsearch = true                -- Show matches as you type

opt.backup = false                             -- Don't create backup files
opt.writebackup = false                        -- Don't create backup before writing
opt.swapfile = false                           -- Don't create swap files
opt.undofile = true                            -- Persistent undo
opt.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
opt.updatetime = 300                           -- Faster completion
opt.timeoutlen = 500                           -- Key timeout duration
opt.ttimeoutlen = 0                            -- Key code timeout
opt.autoread = true                            -- Auto reload files changed outside vim
opt.autowrite = false                          -- Don't auto save

-- Behavior settings
opt.hidden = true                              -- Allow hidden buffers
opt.errorbells = false                         -- No error bells
opt.backspace = "indent,eol,start"             -- Better backspace behavior
opt.autochdir = false                          -- Don't auto change directory
opt.iskeyword:append("-")                      -- Treat dash as part of word
opt.path:append("**")                          -- include subdirectories in search
opt.selection = "exclusive"                    -- Selection behavior
opt.mouse = "a"                                -- Enable mouse support
opt.clipboard:append("unnamedplus")            -- Use system clipboard
opt.modifiable = true                          -- Allow buffer modifications
opt.encoding = "UTF-8"                         -- Set encoding

-- Cursor behaviour
opt.selection = "inclusive"
opt.virtualedit = "block"
opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkof400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
