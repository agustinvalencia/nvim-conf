return {
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      -- jumplist
      {
        "<leader>nj",
        function()
          require("telescope.builtin").jumplist()
        end,
        desc = "Navigate jumplist",
      },
      -- buffers
      {
        "<tab><tab>",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Open buffers",
      },
      { "<C-k>", "<Up>", desc = "Up" },
      { "<C-j>", "<Down>", desc = "Down" },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
