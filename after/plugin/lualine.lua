require("lualine").setup({
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'tabs', 'filename'},
    lualine_c = {'branch', 'diff', 'diagnostics'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
})

vim.cmd[[set showtabline=0]]
vim.cmd[[set noshowmode]]

