local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  --lsp_zero.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, {desc="[G]o to [D]efinition", buffer = bufnr, remap = false})
  vim.keymap.set('n', 'gr', function() require('telescope.builtin').lsp_references() end, {desc="[G]o to [R]eference", buffer = bufnr, remap = false})
  vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, {desc="[G]o to [H]over", buffer = bufnr, remap = false})
  vim.keymap.set("n", '<leader>ca', vim.lsp.buf.code_action, {desc="[C]ode [A]ction", buffer = bufnr, remap = false})
  vim.keymap.set('n', '<leader>ce', vim.diagnostic.open_float, {desc="[C]ode [D]etails"})
end)


require('lspconfig').pyright.setup{}
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "pyright", "clangd" },
  handlers = {
    lsp_zero.default_setup,
  },
})
require('lspconfig').clangd.setup {
    cmd = { "clangd",
    "--background-index",
    "--clang-tidy",
    "--cross-file-rename",
    "--header-insertion=iwyu",
    "-j=12",
    "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--header-insertion-decorators",
    "--pch-storage=memory"
}
}
