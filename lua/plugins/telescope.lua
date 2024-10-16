return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fS", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>fs", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" } },
    { "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "LSP Diagnostics" } },
  },
  opts = {
    defaults = {
      layout_config = {
        horizontal = { width = 0.98 },
      },
      mappings = {
        n = {
          ["o"] = require("telescope.actions").select_default,
        },
      },
    },
  },
}
