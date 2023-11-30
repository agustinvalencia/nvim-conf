local flake_ignores = {
  "E203", -- whitespace before :
  "W503", -- line break before binary operator
  "E501", -- line too long
  "C901",
} -- mccabe complexity
local settings = {
  pylsp = {
    plugins = {
      mccabe = { enabled = false },
      flake8 = {
        enabled = true,
        ignore = table.concat(flake_ignores, ","),
      },
    },
  },
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {},
      ruff_lsp = {},
    },
    setup = {
      ruff_lsp = function()
        require("lazyvim.util").lsp.on_attach(function(client, _)
          if client.name == "ruff_lsp" then
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
  },
}
