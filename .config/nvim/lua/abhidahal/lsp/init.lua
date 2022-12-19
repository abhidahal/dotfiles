local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "abhidahal.lsp.mason"
require("abhidahal.lsp.handlers").setup()
require "abhidahal.lsp.null-ls"
