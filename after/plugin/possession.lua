require("possession").setup({})

require('telescope').load_extension('possession')
vim.keymap.set("n", "<leader>pp", ":Telescope possession list<CR>",
  { desc = "List neovim sessions" })

vim.keymap.set("n", "<leader>ss", ":PossessionSave<CR>",
  { desc = "Save session" })

