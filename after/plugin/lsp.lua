-- LANGUAGE SERVERS
local lsp_zero = require('lsp-zero')
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- LUA
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        -- Making sure that lua recognizes the global variable 'vim'
        globals = { 'vim', 'xplr' },
      },
    },
  },
})
vim.lsp.enable('lua_ls')

vim.g.zig_fmt_autosave = 0

-- RUST
-- Must run `rustup default stable` and then `rustup component add rust-analyzer`
-- upon first install
vim.lsp.config('rust_analyzer', {})
vim.lsp.enable('rust_analyzer')

vim.lsp.config('clangd', {
  capabilities = lsp_capabilities,
})
vim.lsp.enable('clangd')

vim.lsp.config('gopls', {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})
vim.lsp.enable('gopls')

vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      pylint = { enabled = true, executable = "pylint" },
    },
  },
})
vim.lsp.enable('pylsp')

vim.keymap.set("n", "<leader>gf", ":GoFmt<CR>",
    { noremap = true, silent = true, desc = "Go Format" }
)

-- AUTOCOMPLETION

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  sources = {
    { name = "luasnip", option = { show_autosnippets = true } },
    { name = "nvim_lua" },
    { name = "nvim_lsp" },
    { name = "path" }, -- Auto complete paths
  },
  mapping = {
    -- Navigate between completion item
    ['<M-k>'] = cmp.mapping.select_prev_item(),
    ['<M-j>'] = cmp.mapping.select_next_item(),

    -- toggle completion
    ['<M-u>'] = cmp_action.toggle_completion(),

    -- navigate between snippet placeholder
    ['<C-a>'] = cmp_action.luasnip_jump_backward(),
    ['<C-d>'] = cmp_action.luasnip_jump_forward(),

    -- Confirm item
    ['<Tab>'] = cmp.mapping.confirm({select = true}),
  }
})

-- Show all diagnostics on current line in floating window
vim.keymap.set("n", "gl", ":lua vim.diagnostic.open_float()<CR>",
  { noremap = true, silent = true })

vim.keymap.set("n", "<leader>le", ":LspStop<CR>",
 { desc = "LSP Stop" })

vim.keymap.set("n", "<leader>ls", ":LspStart<CR>",
 { desc = "LSP Start" })

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,
 { desc = "Jump to definition" })
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end,
 { desc = "Jump to declaration" })
vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end,
 { desc = "Jump to type definition" })

