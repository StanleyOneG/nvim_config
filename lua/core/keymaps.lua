vim.g.mapleader = " "

local keymap = vim.keymap
local builtin = require('telescope.builtin')


-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab


-- Buffers management
keymap.set("n", "<leader>bp", ":bprevious<CR>") --  go to previous tab
keymap.set("n", "<leader>bn", ":b next<CR>") --  go to previous tab


----------------------
-- Plugin Keybinds
----------------------

-- Neotree
keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

--local mark = require("harpoon.mark")
--local ui = require("harpoon.ui")
--local swenv = require("swenv.api")
--local tabnine = require('tabnine.status')

-- harpoon
--vim.keymap.set("n", "<leader>a", mark.add_file)
--vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

--vim.keymap.set("n", "<C-t>", function() ui.nav_file(1) end)
--vim.keymap.set("n", "<C-y>", function() ui.nav_file(2) end)
--vim.keymap.set("n", "<C-u>", function() ui.nav_file(3) end)
--vim.keymap.set("n", "<C-i>", function() ui.nav_file(4) end)

-- telescope
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
keymap.set("n", "<leader>td", ":Telescope lsp_definitions<CR>") 
keymap.set("n", "<leader>tb", ":Telescope buffers<CR>") 
keymap.set("n", "<leader>tr", ":Telescope lsp_references<CR>") 
keymap.set("n", "<leader>ti", ":Telescope lsp_incoming_calls<CR>") 
keymap.set("n", "<leader>to", ":Telescope lsp_outgoing_calls<CR>") 


-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- Swenv
--keymap.set("n", "<leader>v", function() swenv.pick_venv() end)
--keymap.set("n", "<leader>cv", function() swenv.get_current_venv() end)

-- VenvSelector
keymap.set("n", "<leader>v", "<cmd>:VenvSelect<cr>") -- toggle split window maximization
keymap.set("n", "<leader>cv", "<cmd>:VenvSelectCached<cr>") -- toggle split window maximization

-- Tabnine
-- vim.keymap.set("n", "<leader>hs", function() tabnine.status() end)

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- ToggleTerm
keymap.set("n", "<leader>tt", ":ToggleTerm<CR>") -- toggle split window maximization

-- Bufferline
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>") -- toggle split window maximization
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>") -- toggle split window maximization
keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>") -- toggle split window maximization
