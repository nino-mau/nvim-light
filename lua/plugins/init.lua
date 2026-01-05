-- Minimal plugin configuration
-- Only essential treesitter parsers and mason tools

return {
  -- Treesitter with minimal parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- Mason with minimal tools
  {
    "mason-org/mason.nvim",
    version = "^2.0.0",
    opts = {
      ensure_installed = {
        "stylua",
        "lua-language-server",
        "typescript-language-server",
        "json-lsp",
        "html-lsp",
        "css-lsp",
      },
    },
  },
}
