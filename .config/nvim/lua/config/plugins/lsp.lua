return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      -- ======================
      -- Lua
      -- ======================
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
      vim.lsp.enable("lua_ls")

      -- ======================
      -- TypeScript / JavaScript / React
      -- ======================
      vim.lsp.config("ts_ls", {
        settings = {
          completions = {
            completeFunctionCalls = true,
          },
        },
      })
      vim.lsp.enable("ts_ls")
    end,
  },
}