return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			vim.keymap.set("n", "<BS>", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
            default_file_explorer = true,
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
                is_always_hidden = function (name, _)
                    return name == ".git" or name == ".." or name == ".github" or name == ".vscode"
                end,
            }
		})
	end,
}
