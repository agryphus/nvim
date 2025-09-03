require("compile-mode")

vim.g.compile_mode = {
  beleia_setup = true
}

vim.keymap.set("n", "<leader>cC", vim.cmd.Compile, {desc = "Compile"})
vim.keymap.set("n", "<leader>cc", vim.cmd.Recompile, {desc = "Recompile"})


