vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear highlighted search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- Copy till end of line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Paste without overwriting the register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Move selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join below line with current with cursor at its place
vim.keymap.set("n", "J", "mzJ`z") vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Move cursor half a page (down/up), and at the center of the screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Go to next/previous search match, and at the center of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Restart LSP
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Search and replace word under cursor in current file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Jump prev and next quickfix entry
vim.keymap.set("n", "<A-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<A-j>", "<cmd>cprev<CR>zz")
