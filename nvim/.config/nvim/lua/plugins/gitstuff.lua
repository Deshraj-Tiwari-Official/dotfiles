return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				vim.keymap.set("n", "<leader>hp", require("gitsigns").preview_hunk),
				vim.keymap.set("n", "<leader>tb", require("gitsigns").toggle_current_line_blame),
				-- There are some other bindings that you might like to setup
			})
		end,
	},
}
