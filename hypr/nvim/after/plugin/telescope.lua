local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "File Finding"})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "git_files"})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, {desc = "grep string"})
vim.keymap.set('n', '[n', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']n', vim.diagnostic.goto_next)
local vim = vim  -- Assuming vim is already set in your Lua environment

vim.keymap.set('n', 'gr', function()
  require('telescope.builtin').lsp_references()
end, {noremap = true, silent = true})



