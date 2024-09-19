return {
  "williamboman/mason.nvim",
  opts = {
    -- list of servers for mason to install
    ensure_installed = {
      "typescript-language-server",
      "html-lsp",
      "css-lsp",
      "tailwindcss-language-server",
      "clangd",
      "pyright",
      "prettier",
    },
  },
}
