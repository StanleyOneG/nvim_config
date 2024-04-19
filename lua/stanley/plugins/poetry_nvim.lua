return {
    "karloskar/poetry-nvim",

    config = function()
        local poetry_nvim = require("poetry-nvim")

        poetry_nvim:setup()
    end,
}
