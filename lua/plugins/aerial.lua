return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  opts = {
    layout = {
      max_width = { 0.3 },
      width = nil,
      min_width = 10,
    },
    attach_mode = "global",
  },
  keys = {
    { "<leader>cs", "<cmd>AerialOpen<cr>", desc = "Focus Symbols" },
  },
  ft = { "python", "yaml", "lua" },
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
