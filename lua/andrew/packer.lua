vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

    -- Find files and strings
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.0",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

    -- Treesittep
	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

    -- Themes
    use {
        "Mofiqul/vscode.nvim",
        commit = "db9ee33"
    }
    use "aktersnurra/no-clown-fiesta.nvim"

    -- Left-side file tree dispaly
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- for file icons
        },
        tag = "nightly" -- optional, updated every week
    }

    -- Shows current mode on bottom of screen
    use "itchyny/lightline.vim"

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    -- Git wrapper
    use("tpope/vim-fugitive")

    -- Latex editing in vim
    use "lervag/vimtex"

    -- Vim Games :D
    use "ThePrimeagen/vim-be-good"

    -- Auto comment
    use "numToStr/Comment.nvim"

    -- Jupyter notebook integration
    use {
        "glacambre/firenvim",
        run = function() vim.fn["firenvim#install"](0) end
    }
end)

