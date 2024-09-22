return {

    -- NOTE: Autoclose
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup()
        end,
    },

    -- NOTE: Code Runner
    {
        "CRAG666/code_runner.nvim",
        config = function()
            require("code_runner").setup({
                filetype = {
                    java = {
                        "cd $dir &&",
                        "javac $fileName &&",
                        "java $fileNameWithoutExt",
                    },
                    python = "python3 -u",
                    typescript = "deno run",
                    rust = {
                        "cd $dir &&",
                        "rustc $fileName &&",
                        "$dir/$fileNameWithoutExt",
                    },
                    c = function(...)
                        c_base = {
                            "cd $dir &&",
                            "gcc $fileName -o",
                            "/tmp/$fileNameWithoutExt",
                        }
                        local c_exec = {
                            "&& /tmp/$fileNameWithoutExt &&",
                            "rm /tmp/$fileNameWithoutExt",
                        }
                        vim.ui.input({ prompt = "Add more args:" }, function(input)
                            c_base[4] = input
                            vim.print(vim.tbl_extend("force", c_base, c_exec))
                            require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
                        end)
                    end,
                },
            })
        end,
    },

    -- NOTE: Comments
    {
        "numToStr/Comment.nvim",
        opts = {
            {
                padding = true,
                sticky = true,
                toggler = {
                    line = "gcc",
                    block = "gbc",
                },
                opleader = {
                    line = "gc",
                    block = "gb",
                },
                extra = {
                    above = "gca",
                    below = "gcb",
                    eol = "gce",
                },
                mappings = {
                    basic = true,
                    extra = true,
                },
            },
        },
    },

    -- NOTE: Undotree
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },

    -- NOTE: Todo Comments
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
        config = function()
            require("todo-comments").setup({
                vim.keymap.set("n", "<leader>tq", vim.cmd.TodoQuickFix)
            })
        end,
    },
}
