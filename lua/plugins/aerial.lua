return {
  "stevearc/aerial.nvim",
  lazy = true,
  backends = { "treesitter", "lsp", "markdown", "man" },
  opts = {
    layout = {
      max_width = { 0.3 },
      width = nil,
      min_width = { 0.2 },
      default_direction = "prefer_left",
    },
    attach_mode = "global",
    filter_kind = {
      ["_"] = false,
      markdown = false,
      yaml = false,
      python = {
        "Class",
        "Method",
        "Function",
        "Constant",
        "Module",
        "Property",
        "Enum",
        "EnumMember",
        "Object",
      },
    },
  },
  keys = {
    { "<leader>cs", "<cmd>AerialOpen<cr>", desc = "Focus Symbols" },
    { "<leader>cS", "<cmd>Telescope aerial<cr>", desc = "Telescope Symbols" },
  },
  ft = { "python", "yaml", "lua", "markdown", "md" },
  -- Optional dependencies
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
