-- Moving selection in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line down" })

-- Append line below BUT keep cursor at start
vim.keymap.set("n", "J", "mzJ`z")

-- Moving around document
-- Making sure that whenever we go up/down half a page we center the cursor and set it at the start
vim.keymap.set("n", "<C-d>", "0<C-d>zz")
vim.keymap.set("n", "<C-u>", "0<C-u>zz")

-- Navigation
vim.keymap.set("n", "<leader>n", "", { desc = "[N]avigation" })
vim.keymap.set("n", "<leader>nh", ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { desc = "[N]avigation [H]ere" })
vim.keymap.set("n", "<leader>nr", ":Telescope file_browser<CR>", { desc = "[N]avigation [R]oot" })

-- Terminal
vim.keymap.set("n", "<leader>t", "", { desc = "[T]erminal" })
vim.keymap.set("n", "<leader>th", ":terminal<CR>i", { desc = "[T]erminal [H]ere" })
vim.keymap.set("n", "<leader>tv", ":vsplit<CR>:terminal<CR>", { desc = "[T]erminal [V]Split" })
vim.keymap.set("n", "<leader>ts", ":split<CR>:terminal<CR>", { desc = "[T]erminal [S]plit" })

-- Window resizing by 5 mines
vim.keymap.set("n", "<C-w>/", "<cmd>resize -5<cr>", { desc = "5 lines smaller" })
vim.keymap.set("n", "<C-w>*", "<cmd>resize +5<cr>", { desc = "5 lines bigger" })

vim.keymap.set("n", "<leader>E", function()
    config = vim.diagnostic.config()
    vim.diagnostic.config {
        virtual_lines = not config.virtual_lines,
        virtual_text = not config.virtual_text,
    }
end, {
        desc = "Switch inline errors"
    })

