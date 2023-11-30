return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
        command_palette = true,
      },
      cmdline = {
        enabled = true, -- enables the Noice cmdline UI
        view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
        opts = {}, -- global options for the cmdline. See section on views
        format = {
          -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
          -- view: (default is cmdline view)
          -- opts: any options passed to the view
          -- icon_hl_group: optional hl_group for the icon
          -- title: set to anything or empty string to hide
          cmdline = { pattern = "^:", icon = "󰘳 ", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = "  ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = "  ", lang = "regex" },
          filter = { pattern = "^:%s*!", icon = " ", lang = "bash" },
          lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = " ", lang = "lua" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "󰋖 " },
          input = {}, -- Used by input()
          -- lua = false, -- to disable a format, set to `false`
        },
      },
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      },
      views = {
        relative = "editor",
        cmdline_popup = {
          position = {
            row = "40%",
            col = "50%",
          },
          size = {
            width = "auto",
            height = "auto",
          },
        },
        -- popupmenu = {
        --   relative = "editor",
        --   position = {
        --     row = "50%",
        --     col = "50%",
        --   },
        --   size = {
        --     width = "auto",
        --     height = "auto",
        --   },
        --   border = {
        --     style = "rounded",
        --     padding = { 0, 1 },
        --   },
        --   win_options = {
        --     winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
        --   },
        -- },
      },
    },
  },
}
