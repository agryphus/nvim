local wk = require("which-key")

-- wk.add({g = { name = "git" }, prefix = "<leader>"})
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
