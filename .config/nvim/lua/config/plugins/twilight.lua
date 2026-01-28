return {
  {
    "folke/twilight.nvim",
    cmd = "Twilight",
    opts = {
      dimming = {
        alpha = 0.25, -- amount of dimming (0.0–1.0)
      },
      context = 10, -- lines of context around cursor
      treesitter = true, -- use treesitter for better block detection
    },
  },
}