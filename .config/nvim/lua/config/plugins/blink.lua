-- lua/config/plugins/blink.lua
return {
  {
    "saghen/blink.cmp",
    version = "*", -- use latest stable
    opts = {
      keymap = {
        preset = "default",
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      sources = {
        default = { "lsp", "path", "buffer" },
      },
    },
  },
}   