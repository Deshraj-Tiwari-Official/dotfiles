local M = {}

-- Check if a plugin is installed
M.has = function(plugin)
  return require("lazy.core.config").plugins[plugin] ~= nil
end

-- Execute a function when the 'VeryLazy' event occurs
M.on_very_lazy = function(callback)
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = callback,
  })
end

return M
