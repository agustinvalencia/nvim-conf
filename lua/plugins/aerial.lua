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
    filter_kind = {
      "Class",
      "Function",
      "Method",
      "Field",
      "Enum",
      "Constant",
    },
  },
  keys = {
    { "<leader>cs", "<cmd>AerialOpen<cr>", desc = "Focus Symbols" },
    { "<leader>cS", "<cmd>Telescope aerial<cr>", desc = "Telescope Symbols" },
  },
  ft = { "python", "yaml", "lua" },
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
