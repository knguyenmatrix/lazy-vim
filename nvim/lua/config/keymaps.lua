-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del({ "n", "v" }, "<leader>cf")
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format file or range (in visual mode)" })

vim.keymap.set("n", "<leader>cs", ":noh<CR>", { desc = "Removing highlight from search" })

-- Code centering
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center code when jumping down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center code when jumping up" })
vim.keymap.set("n", "n", "nzz", { desc = "Center code when searching down" })
vim.keymap.set("n", "N", "Nzz", { desc = "Center code when searching up" })
vim.keymap.set("n", "<C-o>", "<C-o>zz", { desc = "Center code when going back buffer" })
vim.keymap.set("n", "<C-i>", "<C-i>zz", { desc = "Center code when going forward buffer" })
vim.keymap.set("n", "gd", "gdzz", { desc = "Center code when going to definition" })

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true, desc = "Smart rename" })
