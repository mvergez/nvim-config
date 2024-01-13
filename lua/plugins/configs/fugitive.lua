vim.keymap.set("n", "<leader>vs", vim.cmd.Git, { desc='[V]ersion control [S]tatus' });
vim.keymap.set("n", "<leader>vc", function() vim.cmd.Git('commit') end, { desc='[V]ersion control [C]ommit' });
vim.keymap.set("n", "<leader>vd", vim.cmd.Gvdiffsplit, { desc='[V]ersion control [D]iff' });
