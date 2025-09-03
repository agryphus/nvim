-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  -- Terminal file manager support
  -- "DreamMaoMao/yazi.nvim",
	{
	  "mikavilpas/yazi.nvim",
    event = "VeryLazy",
	},

  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.cmd [[Lazy load markdown-preview.nvim]]
      vim.fn['mkdp#util#install']()
    end,
  },

  -- Dashboard buffer
	{
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- Compile mode
  {
    "ej-shafran/compile-mode.nvim",
    -- tag = "v5.*",
    -- you can just use the latest version:
    branch = "latest",
    -- or the most up-to-date updates:
    -- branch = "nightly",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "m00qek/baleia.nvim", tag = "v1.3.0" },
    },
    config = function()
      vim.g.compile_mode = {
          baleia_setup = true,
      }
    end
  };

  -- Zen mode
  "folke/zen-mode.nvim",

  -- Show valid keys mid key chord
  "folke/which-key.nvim",
    -- config = function()
    --   vim.o.timeout = true
    --   vim.o.timeoutlen = 300
    -- end

  -- Find files and strings
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	},

  -- Themes
  "aktersnurra/no-clown-fiesta.nvim",
  "ellisonleao/gruvbox.nvim",
  { 'rose-pine/neovim', as = 'rose-pine' },
  'Mofiqul/vscode.nvim',

  -- Referencing a hex code highlights it in that color
  "norcalli/nvim-colorizer.lua",

  -- Relative line numbers disappear when not actively in buffer
  "jeffkreeftmeijer/vim-numbertoggle",

  -- History visualizer
  "mbbill/undotree",

  -- See function signatures when typing them
	{
    -- "ray-x/lsp_signature.nvim",
    -- event = "VeryLazy",
    -- opts = {},
    -- config = function(_, opts) require'lsp_signature'.setup(opts) end
  },

  -- Left-side file tree dispaly
  {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- for file icons
    },
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  {
    'jedrzejboczar/possession.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  },

  -- LSP
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},

  -- Better diagnostics
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Linting
  "jose-elias-alvarez/null-ls.nvim",

  -- Git wrapper
  "tpope/vim-fugitive",

  -- Latex editing in vim
  "lervag/vimtex",

  -- Auto comment
  "numToStr/Comment.nvim",
})

