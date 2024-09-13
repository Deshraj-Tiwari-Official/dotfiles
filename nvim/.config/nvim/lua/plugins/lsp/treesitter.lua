return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "vim",
        "vimdoc",
        "regex",
        "lua",
        "bash",
        "markdown",
        "markdown_inline",
      },
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
