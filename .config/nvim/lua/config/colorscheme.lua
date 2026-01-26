-- lua/config/colorscheme.lua

vim.g.everforest_background = "hard" -- soft | medium | hard
vim.g.everforest_enable_italic = 1

local colorscheme = "everforest"

local ok = pcall(vim.cmd.colorscheme, colorscheme)
if not ok then
  vim.notify(
    "Colorscheme '" .. colorscheme .. "' not found!",
    vim.log.levels.WARN
  )
end