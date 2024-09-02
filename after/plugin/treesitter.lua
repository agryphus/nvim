require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "css",
    "html",
    "java",
    "javascript",
    "json",
    "lua",
    "perl",
    "php",
    "python",
    "rust",
    "typst",
    "vim",
    "vimdoc",
  },

  ignore_install = { "latex", "markdown", "htmldjango" },

  sync_install = false,

  auto_install = false,

  highlight = {
    enable = true,

    addition_vim_regex_highlighting = false,
  },
}

