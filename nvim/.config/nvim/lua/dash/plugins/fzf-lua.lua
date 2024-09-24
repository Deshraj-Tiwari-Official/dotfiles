return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzflua = require("fzf-lua")
		vim.keymap.set("n", "<leader>pf", fzflua.files)
		vim.keymap.set("n", "<C-P>", fzflua.git_files)
		vim.keymap.set("n", "<leader>ps", function()
			fzflua.grep({ search = vim.fn.input("Grep > ") })
		end)
	end,
}
