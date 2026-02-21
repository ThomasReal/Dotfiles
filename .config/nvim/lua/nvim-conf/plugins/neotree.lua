-- dependencies
vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

vim.pack.add({ "https://github.com/nvim-neo-tree/neo-tree.nvim" })

require("neo-tree").setup({
  enable_cursor_hijack = true,

  event_handlers = {
    {
      event = "file_opened",
      handler = function(_)
        require("neo-tree.command").execute({ action = "close" })
      end,
    },
    {
      event = "file_renamed",
      handler = function(args)
        vim.lsp.util.rename(args.source, args.destination)
        print(args.source, " renamed to ", args.destination)
      end,
    },
    {
      event = "file_moved",
      handler = function(args)
        vim.lsp.util.rename(args.source, args.destination)
        print(args.source, " moved to ", args.destination)
      end,
    },
  },

  window = {
    mappings = {
      ["u"] = "colemak_up",
      ["e"] = "colemak_down",
      ["j"] = "none",
      ["k"] = "none",
    },
  },

  commands = {
    colemak_up = function()
      vim.api.nvim_feedkeys("k", "n", false)
    end,

    colemak_down = function()
      vim.api.nvim_feedkeys("j", "n", false)
    end,
  },
})
