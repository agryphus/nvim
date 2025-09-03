require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "css",
    "glsl",
    "go",
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

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.vert", "*.frag"},
  callback = function()
    vim.bo.filetype = "glsl"
  end,
})

