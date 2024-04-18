return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        -- local harpoon = require("harpoon")
        -- harpoon:setup({})
        --    local transform_mod = require("telescope.actions.mt").transform_mod

        --    local trouble = require("trouble")
        --    local trouble_telescope = require("trouble.providers.telescope")

        -- or create your custom action
        --    local custom_actions = transform_mod({
        --      open_trouble_qflist = function(prompt_bufnr)
        --        trouble.toggle("quickfix")
        --      end,
        --    })

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        --            ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
                        --            ["<C-t>"] = trouble_telescope.smart_open_with_trouble,
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        -- -- basic telescope configuration
        -- local conf = require("telescope.config").values
        -- local function toggle_telescope(harpoon_files)
        --     local file_paths = {}
        --     for _, item in ipairs(harpoon_files.items) do
        --         table.insert(file_paths, item.value)
        --     end
        --
        --     require("telescope.pickers")
        --         .new({}, {
        --             prompt_title = "Harpoon",
        --             finder = require("telescope.finders").new_table({
        --                 results = file_paths,
        --             }),
        --             previewer = conf.file_previewer({}),
        --             sorter = conf.generic_sorter({}),
        --         })
        --         :find()
        -- end

        -- set keymaps
        local keymap = vim.keymap -- for conciseness
        -- vim.keymap.set("n", "<leader>he", function()
        --     toggle_telescope(harpoon:list())
        -- end, { desc = "Open harpoon window" })
        keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
        keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
    end,
}
