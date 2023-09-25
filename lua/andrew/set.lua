-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "auto"

vim.o.shell = "/usr/bin/zsh"

-- Local settings for when in :terminal mode
-- I don't believe this functionality has been ported to lua.
vim.cmd([[
function! TerminalSettings()
  setlocal nonumber norelativenumber
  setlocal scrolloff=0
endfunction
autocmd TermOpen * call TerminalSettings()
]])

