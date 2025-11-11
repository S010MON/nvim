require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  htmx = {},
  cssls = {},
  pylsp = {
    settings = {
      pylsp = {
        plugins = {
          pycodestyle = {
            ignore = { "W391" },
            maxLineLength = 100,
          },
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
-- read :h vim.lsp.config for changing options of lsp servers
