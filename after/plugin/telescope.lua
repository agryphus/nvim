local builtin = require("telescope.builtin")

require("telescope").setup{
  defaults = {
    file_ignore_patterns = { ".git\\", ".pyc", ".mypy_cache\\", "node_modules\\", ".svg"  }
  }
}

vim.keymap.set("n", "<leader>p", "<noop>", {desc = "Project"})
vim.keymap.set("n", "<leader>pf", ":Telescope find_files no_ignore=true <CR>", {desc = "Project find"})
vim.keymap.set("n", "<leader>.", builtin.find_files, {desc = "Project find (.gitignore)"})
vim.keymap.set("n", "<leader>ps",
  function ()
    builtin.grep_string({ search = vim.fn.input("Grep > "), no_ignore = true })
  end,
  { desc = "Project search" })

-- <leader> f
-- wk.add({f = { name = "find" }, prefix = "<leader>"})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent" })

-- <leader> h
-- wk.add({h = { name = "help" }, prefix = "<leader>"})
vim.keymap.set("n", "<leader>ht", builtin.colorscheme, { desc = "Load theme" })
vim.keymap.set("n", "<leader>hf", builtin.commands   , { desc = "Describe function" })
vim.keymap.set("n", "<leader>hk", builtin.keymaps    , { desc = "Describe key" })
vim.keymap.set("n", "<leader>hv", builtin.vim_options, { desc = "Describe variable" })
vim.keymap.set("n", "<leader>hh", builtin.help_tags  , { desc = "Search local wiki" })

