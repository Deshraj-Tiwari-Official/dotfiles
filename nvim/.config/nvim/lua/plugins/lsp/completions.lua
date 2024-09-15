return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()

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
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
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
          { name = "codeium" },
          { name = 'path' },
          { name = "buffer" },
        }),
      })
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({})
        -- Keymaps for Codeium
        local opts = { expr = true, silent = true, desc = "Codeium Completion" }
        vim.keymap.set("i", "<Tab>", function() return vim.fn["codeium#Accept"]() end, vim.tbl_extend("force", opts, { desc = "Codeium Accept" }))
        vim.keymap.set("i", "<C-x>", function() return vim.fn["codeium#Clear"]() end, vim.tbl_extend("force", opts, { desc = "Codeium Clear" }))
        vim.keymap.set("i", "<C-j>", function() return vim.fn end, vim.tbl_extend("force", opts, { desc = "Codeium Next Suggestion" }))
        vim.keymap.set("i", "<C-k>", function() return vim.fn["codeium#CycleCompletions"](-1) end, vim.tbl_extend("force", opts, { desc = "Codeium Previous Suggestion" }))
    end
},
}
