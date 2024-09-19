return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function ()
    local neocodeium = require("neocodeium")
    neocodeium.setup()
    vim.keymap.set("i", "<C-a>", function() neocodeium.accept() end, { desc = "NeoCodeium Accept" })
    vim.keymap.set("i", "<C-w>", function() neocodeium.accept_word() end, { desc = "NeoCodeium Accept Word" })
    vim.keymap.set("i", "<C-l>", function() neocodeium.accept_line() end, { desc = "NeoCodeium Accept Line" })
    vim.keymap.set("i", "<C-j>", function() neocodeium.cycle_or_complete() end, { desc = "NeoCodeium Cycle" })
    vim.keymap.set("i", "<C-k>", function() neocodeium.cycle_or_complete(-1) end, { desc = "NeoCodeium Cycle Backward" })
    vim.keymap.set("i", "<C-e>", function() neocodeium.clear() end, { desc = "NeoCodeium Clear" })
  end
}
