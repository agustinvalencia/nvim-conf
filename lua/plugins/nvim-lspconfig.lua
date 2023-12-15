return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {},
      ruff_lsp = {},
      marksman = {},
    },
    setup = {
      eslint = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
          elseif client.name == "tsserver" then
            client.server_capabilities.documentFormattingProvider = false
          end
        end)
      end,
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
