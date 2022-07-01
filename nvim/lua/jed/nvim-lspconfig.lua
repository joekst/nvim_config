local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Require nvim-lspconfig failed!")
  return
end

nvim_lsp.pyright.setup{}
