return {
  enabled = false,
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      themable = true,
      separator_style = "slant",
      diagnostics = "nvim_lsp",
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      offsets = {
        {
          filetype = "neo-tree",
          text = "Files",
          text_align = "center",
          separator = true,
        },
      },
    },
  },
}
