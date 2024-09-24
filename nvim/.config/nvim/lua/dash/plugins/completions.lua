return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
            local ls = require("luasnip")
            ls.snippets = {
                c = {
                    ls.parser.parse_snippet("bp", "#include <stdio.h>\n\nint main() {\n\tprintf(\"Hello, World!\");\n\treturn 0;\n}"),
                }
            }
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
        dependencies = {"hrsh7th/nvim-cmp"},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(),
					["<C-n>"] = cmp.mapping.select_next_item(),
					["<C-y>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),

					-- Luasnip jumping after acception of snippet
					["<Tab>"] = cmp.mapping(function(fallback)
						if luasnip.jumpable(1) then
							luasnip.jump(1)
						else
							fallback()
						end
					end, { "i", "s" }),

					["<S-Tab>"] = cmp.mapping(function(fallback)
						if luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "buffer" },
				}),
			})
		end,
	},
	{
		"monkoose/neocodeium",
		event = "VeryLazy",
		config = function()
			local neocodeium = require("neocodeium")
			neocodeium.setup()
			vim.keymap.set("i", "<C-a>", function()
				neocodeium.accept()
			end, { desc = "NeoCodeium Accept" })
			vim.keymap.set("i", "<C-w>", function()
				neocodeium.accept_word()
			end, { desc = "NeoCodeium Accept Word" })
			vim.keymap.set("i", "<C-l>", function()
				neocodeium.accept_line()
			end, { desc = "NeoCodeium Accept Line" })
			vim.keymap.set("i", "<C-j>", function()
				neocodeium.cycle_or_complete()
			end, { desc = "NeoCodeium Cycle" })
			vim.keymap.set("i", "<C-k>", function()
				neocodeium.cycle_or_complete(-1)
			end, { desc = "NeoCodeium Cycle Backward" })
			vim.keymap.set("i", "<C-e>", function()
				neocodeium.clear()
			end, { desc = "NeoCodeium Clear" })
		end,
	},
}
