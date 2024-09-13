return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      --  INFO: ==> Install the linters and formatter here.
        sources = {
            null_ls.builtins.formatting.stylua,
        },
    })
  end
}
