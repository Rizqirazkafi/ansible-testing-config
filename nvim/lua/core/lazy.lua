local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'mbbill/undotree',
  'ThePrimeagen/harpoon', -- buffer navigation [GOAT]
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
  'folke/neodev.nvim',
  {
    "nvimtools/none-ls.nvim",
    opts = function() return require("null-ls") end,
  },
  "neovim/nvim-lspconfig",
  'nvim-lualine/lualine.nvim', -- Fancier statusline

  {
    "williamboman/mason.nvim"
  },
  "williamboman/mason-lspconfig.nvim",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  "jayp0521/mason-null-ls.nvim",
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  "nvim-treesitter/nvim-treesitter",
  { 'j-hui/fidget.nvim', tag = "legacy" },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim', { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' } }
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  {
    'rose-pine/neovim', name = 'rose-pine'
  },
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  }




}

local opts = {
}

require("lazy").setup(plugins, opts)
