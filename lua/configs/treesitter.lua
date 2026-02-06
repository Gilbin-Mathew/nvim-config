local options = {                   -- Treesitters are just parsers to know the grammar of the language 
  ensure_installed = {              -- Here these are ensured installtion for highlighted
    "asm",                          -- texts
    "bash",
    "c",
    "cpp",
    "cmake",
    "css",
    "disassembly",
    "html",
    "json",
    "javascript",
    "lua",
    "luadoc",
    "markdown",
    "make",
    "ninja",
    "objdump",
    "python",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
