return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "cpp",
        "c",
        "cmake",
        "css",
        "php",
        "html",
        "java",
        "javascript",
      })
    end,
  },
}
