vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Find files and strings
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.0",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Treesitter
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

  -- Themes
  use "aktersnurra/no-clown-fiesta.nvim"

  -- Referencing a hex code highlights it in that color
  use "lilydjwg/colorizer"

  -- Relative line numbers disappear when not actively in buffer
  use "jeffkreeftmeijer/vim-numbertoggle"

  -- See function signatures when typing them
  use "ray-x/lsp_signature.nvim"
  require "lsp_signature".setup({})

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

  -- Linting
  use "jose-elias-alvarez/null-ls.nvim"

  -- Git wrapper
  use("tpope/vim-fugitive")

  -- Latex editing in vim
  use "lervag/vimtex"

  -- Auto comment
  use "numToStr/Comment.nvim"

  -- Markdown
  use({
      "agryphus/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Jupyter notebook integration
  use {
    "glacambre/firenvim",
    run = function() vim.fn["firenvim#install"](0) end
  }
end)

