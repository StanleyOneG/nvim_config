return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        vim.keymap.set("n", "<leader>ha", function()
            harpoon:list():add()
        end, { desc = "Add to Harpoon list" })
        vim.keymap.set("n", "<leader>he", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Toggle Harpoon quik menu" })

        vim.keymap.set("n", "<leader>hh", function()
            harpoon:list():select(1)
        end, { desc = "Harpoon select 1" })
        vim.keymap.set("n", "<leader>hs", function()
            harpoon:list():select(2)
        end, { desc = "Harpoon select 2" })
        vim.keymap.set("n", "<leader>ht", function()
            harpoon:list():select(3)
        end, { desc = "Harpoon select 3" })
        vim.keymap.set("n", "<leader>hf", function()
            harpoon:list():select(4)
        end, { desc = "Harpoon select 4" })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>hp", function()
            harpoon:list():prev()
        end, { desc = "Previous Harpoon buffer" })
        vim.keymap.set("n", "<leader>hn", function()
            harpoon:list():next()
        end, { desc = "Next Harpoon buffer" })
    end,
}
