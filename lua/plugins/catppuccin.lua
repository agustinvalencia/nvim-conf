return {
  {
    "catppuccin/nvim",
    opts = {
      integrations = {
        git = true,
        aerial = true,
        mason = true,
        mini = {
          enabled = true,
          indentscope_color = "", -- catppuccin color (eg. `lavender`) Default: text
        },
        noice = true,
        notifier = true,
        notify = true,
        ts_rainbow = true,
        ts_rainbow2 = true,
        whichkey = true,
      },
    },
    -- Configure LazyVim to load catpuccin
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  },
}
