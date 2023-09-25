local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>ht", builtin.colorscheme, {})

require("telescope").setup{
  defaults = {
    file_ignore_patterns = { ".git\\", ".pyc", ".mypy_cache\\", "node_modules\\", ".svg"  }
  }
}

