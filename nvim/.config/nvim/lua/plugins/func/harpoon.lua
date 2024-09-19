return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    -- basic fzf-lua configuration
    local fzf = require("fzf-lua")
    local function toggle_fzf(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      fzf.fzf_exec(file_paths, {
        prompt = 'Harpoon > ',
        previewer = false,
        actions = {
          ["default"] = function(selected)
            vim.cmd("e " .. selected[1])
          end,
        },
      })
    end

    -- Use this when you have to fuzzily switch between the harpoon menu entries
    vim.keymap.set("n", "<C-f>", function() toggle_fzf(harpoon:list()) end)

    -- Use this when you have to delete entries in harpoon (dd and :w)
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
  end
}
