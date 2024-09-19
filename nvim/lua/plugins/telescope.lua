return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" } },
    { "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" } },
    { "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "LSP Diagnostics" } },
  },
  opts = {
    defaults = {
      layout_config = {
        horizontal = { width = 0.98 },
      },
    },
  },
}

