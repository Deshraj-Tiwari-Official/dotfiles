return {
	-- Gitsigns: Show Git changes in the sign column
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "▌" },
					change = { text = "▌" },
					delete = { text = "▌" },
					topdelete = { text = "▌" },
					changedelete = { text = "▌" },
				},
			})
		end,
	},

	-- Neogit: A Magit clone for Neovim
	{
		"NeogitOrg/neogit",
		config = true,
		keys = {
			{ "<leader>ng", "<cmd>Neogit<CR>", desc = "Neogit" },
		},
	},
}
