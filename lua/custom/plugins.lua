local plugins = {
  -- {
  --   "mfussenegger/nvim-lint",
  --   event = "VeryLazy",
  --   config = function ()
  --     require "custom.configs.lint"
  --   end
  -- },
  -- {
  --   "folke/todo-comments.nvim",
  --   event = "VeryLazy",
  --   dependencies = {"nvim-lua/plenary.nvim"},
  --   opts = {}
  -- },
  {
    "windwp/nvim-ts-autotag",
    config = function ()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "aznhe21/actions-preview.nvim",
    event = "VeryLazy",
    config = function ()
      vim.keymap.set({"v", "n"}, "<leader>cq", require("actions-preview").code_actions);
    end
  },
  {
    "filipdutescu/renamer.nvim",
    event = "VeryLazy",
    config = function ()
      require("renamer").setup()
    end
  },
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    config = function ()
      require("mini.ai").setup()
    end
  },
  {
    "supermaven-inc/supermaven-nvim",
    cmd = {
      "SupermavenStart",
    },
    config = function ()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_word = "<C-m>"
        }
      })
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require("gitsigns").setup()
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "typescript-language-server",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins