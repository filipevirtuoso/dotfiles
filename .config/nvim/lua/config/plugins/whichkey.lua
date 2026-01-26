return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")

      wk.setup({})

      -- Optional: Group names (these make the popup prettier)
      wk.add({
        { "<leader>f", group = "Find" },
        { "<leader>g", group = "Git" },
        { "<leader>l", group = "LSP" },
        { "<leader>c", group = "Code" },
        { "<leader>r", group = "Rename/Refactor" },
        { "<leader>s", group = "Search" },
      })
    end,
  },
}