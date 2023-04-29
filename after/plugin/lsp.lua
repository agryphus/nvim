local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    "lua_ls",        -- Lua
    "rust_analyzer", -- Rust
    "pyright",       -- Python
    "texlab",        -- Latex
    "clangd",        -- C
    "jdtls",         -- Java
    "html",          -- Html
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                -- Making sure that lua recognizes the global variable 'vim'
                globals = { 'vim' },
            },
        },
    },
})

lsp.configure('pyright', {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",
            },
        },
    },
})

lsp.setup()

