-- lua/config/lsp/keymaps.lua

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true }),
  callback = function(event)
    local opts = { buffer = event.buf, silent = true }

    -- Go to definition
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

    -- Go to references
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

    -- Go to implementation
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

    -- Hover documentation
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- Signature help
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)

    -- Rename symbol
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

    -- Code actions
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    -- Diagnostics
    -- Show diagnostics in floating window
    vim.keymap.set("n", "<leader>e", function()
      vim.diagnostic.open_float(nil, { focusable = false })
    end, opts)

    -- Go to previous diagnostic
    vim.keymap.set("n", "[d", function()
      vim.diagnostic.jump({
        count = -1,
        on_jump = function()
          vim.diagnostic.open_float(nil, { focusable = false })
        end,
      })
    end, opts)

    -- Go to next diagnostic
    vim.keymap.set("n", "]d", function()
      vim.diagnostic.jump({
        count = 1,
        on_jump = function()
          vim.diagnostic.open_float(nil, { focusable = false })
        end,
      })
    end, opts)

    -- Send diagnostics to location list
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
  end,
})

