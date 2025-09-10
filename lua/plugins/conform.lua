return {
  "stevearc/conform.nvim",
  -- event = "VeryLazy",
  -- keys = {
  --   {
  --     -- Customize or remove this keymap to your liking
  --     "<leader>cf",
  --     function()
  --       require("conform").format({ async = true })
  --     end,
  --     mode = "n",
  --     desc = "Format buffer",
  --   },
  -- },
  formatters_by_ft = {
    lua = { "stylua" },
    fish = { "fish_indent" },
    sh = { "shfmt" },
    python = { "isort", "black" },
  },

  formatters = {
    black = {
      prepend_args = { "--line-length", "88", "--skip-string-normalization" },
    },
    isort = {
      prepend_args = { "--line-length", "88", "--profile", "black", "--multi-line", "3" },
    },
  },
}
