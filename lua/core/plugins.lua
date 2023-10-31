local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup({
	{ 'Mofiqul/dracula.nvim' },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },

--    { "ThePrimeagen/harpoon" },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { "szw/vim-maximizer" },

    { "christoomey/vim-tmux-navigator" },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },

    {"nvim-treesitter/nvim-treesitter"},


    { "L3MON4D3/LuaSnip", event = "VeryLazy",
    config = function()
        require("luasnip.loaders.from_lua").load({paths = "./snippets"})
    end
    },


    { "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        require('mason').setup()
        local mason_lspconfig = require 'mason-lspconfig'
        mason_lspconfig.setup {
            ensure_installed = { "pyright" }
        }
        require("lspconfig").pyright.setup {
            capabilities = capabilities,
        }
    end
    },

    -- Nvim-surround
    {
        "kylechui/nvim-surround",
        --tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },


    -- Autocomplete
    {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'}, {'lewis6991/gitsigns.nvim'},
    {"L3MON4D3/LuaSnip"},
    {"saadparwaiz1/cmp_luasnip"},

    -- Comments
    {"numToStr/Comment.nvim"},

    {"williamboman/mason.nvim"},


    -- Python virtual envs
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", },
        config = true,
        event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    },

    -- {"AckslD/swenv.nvim"},

    -- {"nvim-lualine/lualine.nvim"},

    {
        'stevearc/dressing.nvim',
        opts = {},
    },


    -- Tabnine
    -- {
    --     "codota/tabnine-nvim",
    --     build = "./dl_binaries.sh"
    -- },

    -- Fugitive
    {"tpope/vim-fugitive"},

    -- Terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Tabs
  --   {'romgrk/barbar.nvim',
  --   dependencies = {
  --     'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
  --     'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  --   },
  --   init = function() vim.g.barbar_auto_setup = false end,
  --   opts = {
  --     -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
  --     -- animation = true,
  --     -- insert_at_start = true,
  --     -- …etc.
  --   },
  --   version = '^1.0.0', -- optional: only update when a new 1.x version is released
  -- },
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

  -- Git status
  {"lewis6991/gitsigns.nvim"},

  -- Edgedb syntax highlighting
  {"edgedb/edgedb-vim"}

  

})
