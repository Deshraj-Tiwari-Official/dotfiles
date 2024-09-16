local map = vim.keymap.set;

-- INFO: Boilerplates using telescope
vim.api.nvim_set_keymap("n", "<leader>ft", ":lua LoadTemplate()<CR>",
  { desc = "Load all boilerplates in telescope", noremap = true })

-- INFO: FzfLua
map("n", "<leader>fz", "<cmd>FzfLua<CR>", { desc = "FzfLua" })
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find Files" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find Buffers" })
map("n", "<leader>fg", "<cmd>FzfLua buffers<cr>", { desc = "Live Grep" })

-- INFO: Remove highlight search by pressing escape key
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- INFO: Easy window navigation
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- INFO: Neo Tree toggle
map("n", "<C-n>", "<cmd>:Neotree filesystem toggle right<CR>", { desc = "Neotree toggle" })

-- INFO: LSP, Linters keymaps
map("n", "K", vim.lsp.buf.hover, { desc = "Hover Docs" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format File" })

-- INFO: Bufferline
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bd", "<Cmd>bdelete<CR>", { desc = "Close Current Buffer" })
map("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle Pin" })
map("n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", { desc = "Delete Non-Pinned Buffers" })
map("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Delete Other Buffers" })
map("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", { desc = "Delete Buffers to the Right" })
map("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", { desc = "Delete Buffers to the Left" })
map("n", "[B", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer prev" })
map("n", "]B", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer next" })

-- INFO: Neovim tmux navigation
map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { desc = "Move to Left TMUX Pane" })
map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { desc = "Move to Down TMUX Pane" })
map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { desc = "Move to Up TMUX Pane" })
map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { desc = "Move to Right TMUX Pane" })

-- INFO: Gitsigns
map("n", "<leader>gs", "<cmd>Gitsigns<CR>", { desc = "Gitsigns" })

-- INFO: Code Runner
map('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
-- map('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
-- map('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
-- map('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
-- map('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
-- map('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- map('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- INFO: NeoCodeium
local neocodeium = require("neocodeium")
map("i", "<C-a>", function() neocodeium.accept() end, { desc = "NeoCodeium Accept" })
map("i", "<C-w>", function() neocodeium.accept_word() end, { desc = "NeoCodeium Accept Word" })
map("i", "<C-l>", function() neocodeium.accept_line() end, { desc = "NeoCodeium Accept Line" })
map("i", "<C-j>", function() neocodeium.cycle_or_complete() end, { desc = "NeoCodeium Cycle" })
map("i", "<C-k>", function() neocodeium.cycle_or_complete(-1) end, { desc = "NeoCodeium Cycle Backward" })
map("i", "<C-e>", function() neocodeium.clear() end, { desc = "NeoCodeium Clear" })
