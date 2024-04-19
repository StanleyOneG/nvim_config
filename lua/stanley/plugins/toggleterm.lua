return {
    "akinsho/toggleterm.nvim",
    version = "*",

    config = function()
        local toggleterm = require("toggleterm")

        -- REQUIRED
        toggleterm:setup()
        -- REQUIRED

        vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=float<CR>", { desc = "Toggle terminal" })
    end,
}
