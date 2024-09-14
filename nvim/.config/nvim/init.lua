require("config.lazy")
require("config.options")
require("config.keymaps")

-- Highlight on yanking (autocommand)
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

function LoadTemplate()
    builtin.find_files({
        prompt_title = "Select a Boilerplate",
        cwd = "~/.config/nvim/templates",
        attach_mappings = function(_, map)
            actions.select_default:replace(function(prompt_bufnr)
                local file = action_state.get_selected_entry().path
                actions.close(prompt_bufnr)
                
                -- Read the contents of the template file and insert it into the current buffer
                local lines = {}
                for line in io.lines(file) do
                    table.insert(lines, line)
                end
                vim.api.nvim_buf_set_lines(0, 0, -1, false, lines) -- Replaces the whole buffer
            end)
            return true
        end
    })
end
