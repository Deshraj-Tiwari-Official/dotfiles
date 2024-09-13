-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Helper function to load plugins from subdirectories
local function load_plugins_from_subdirs()
  local plugins = {}
  local subdirs = { "ui", "lsp", "func" }  -- Add more subdirectories if needed
  local config_path = vim.fn.stdpath("config") .. "/lua/plugins/"

  for _, subdir in ipairs(subdirs) do
    local plugin_files = vim.fn.globpath(config_path .. subdir, "*.lua", false, true)

    for _, file in ipairs(plugin_files) do
      local plugin_name = file:match("^.+/(.+).lua$")
      plugins[#plugins + 1] = { import = "plugins." .. subdir .. "." .. plugin_name }
    end
  end

  return plugins
end

-- Setup lazy.nvim
require("lazy").setup({
  spec = load_plugins_from_subdirs(),  -- Load plugins from subdirectories
  install = { colorscheme = { "catppuccin" } },
  checker = { enabled = true },
})
