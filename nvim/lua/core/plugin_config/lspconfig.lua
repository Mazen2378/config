require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua","tsserver","tailwindcss","graphql","prismals" }
})

local on_attach = function(_,_)
  vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename,{})
  vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})
  vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
  vim.keymap.set('n','gi',vim.lsp.buf.implementation,{})
  vim.keymap.set('n','gr',require('telescope.builtin').lsp_references,{})
  local map = vim.api.nvim_buf_set_keymap
  map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
  map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
  map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
  map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
  map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
  map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
  map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
  map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
  map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
