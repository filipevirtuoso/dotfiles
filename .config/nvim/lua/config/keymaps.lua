vim.g.mapleader = ' '

-- Save current file 
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})

-- Move line up/down in normal mode
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move selected lines in visual mode
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Toggle Twilight
vim.keymap.set("n", "<leader>tw", "<cmd>Twilight<CR>", { desc = "Toggle Twilight" })

-- File tree
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<leader>fe", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file tree" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Go to right window" })
