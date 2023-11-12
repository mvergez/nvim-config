local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  --lsp_zero.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gr', function() require('telescope.builtin').lsp_references() end, opts)
  vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
end)

require('lspconfig').pyright.setup{}

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "pyright", "clangd" },
  handlers = {
    lsp_zero.default_setup,
  },
})
