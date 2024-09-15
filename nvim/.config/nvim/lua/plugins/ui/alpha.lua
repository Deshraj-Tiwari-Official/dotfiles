return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    vim.cmd [[
      highlight DashboardHeader guifg=#75E282
    ]]
    -- Set Header
    dashboard.section.header.val = {
      [[                                                                    ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████󰣇█████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ████████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
    }

    -- Set Menu
    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", "<cmd>ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Find file", "<cmd>FzfLua files<CR>"),
      dashboard.button("g", "  Lazygit", "<cmd>LazyGit<CR>"),
      dashboard.button("w", "  Live Grep", "<cmd>FzfLua live_grep<CR>"),
      dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("q", "  Quit Neovim", "<cmd>qa<CR>"),
    }

    -- Set Highlight
    dashboard.section.header.opts.hl = "DashboardHeader"

    -- Dashboard Config
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
