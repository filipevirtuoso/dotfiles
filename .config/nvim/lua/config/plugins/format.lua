return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, -- load before saving
    opts = {
      format_on_save = function(bufnr)
        -- Disable autoformat for specific filetypes if you ever want
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return
        end

        return { timeout_ms = 500, lsp_fallback = true }
      end,

      formatters_by_ft = {
        lua = { "stylua" },

        javascript = { "prettier" },
        javascriptreact = { "prettier" },

        typescript = { "prettier" },
        typescriptreact = { "prettier" },

        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        python = { "black" },
      },
    },
  },
}