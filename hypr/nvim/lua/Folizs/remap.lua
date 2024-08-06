vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "File Explore"})
vim.keymap.set("n", "<leader>te", vim.cmd.NERDTreeToggle, {desc = "File Explore"})
-- Set cursor at the middle when scroll page
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Set cursor at the middle when search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- Copy without losing buffer
vim.keymap.set("x", "<leader>p" , "\"_dP")
-- Copy Clipboard
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "Copy Clipboard"} )
vim.keymap.set("n", "<leader>y", "\"+y", {desc = "Copy Clipboard"} )
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = "Copy Clipboard"} )
-- Cut in clipboard
vim.keymap.set("v", "<leader>d", "\"+d", {desc = "Cut Clipboard"})
vim.keymap.set("n", "<leader>d", "\"+d", {desc = "Cut Clipboard"})
vim.keymap.set("n", "<leader>D", "\"+D", {desc = "Cut Clipboard"})
-- Vim remap j,k gj gk
-- vim.keymap.set("v", "j", "gj")
-- vim.keymap.set("n", "j", "gj")
-- vim.keymap.set("v", "k", "gk")
-- vim.keymap.set("n", "k", "gk")
-- Vim Coc
vim.api.nvim_set_keymap('n', '[d', '<Plug>(coc-diagnostic-next-error)', { silent = true })
vim.api.nvim_set_keymap('n', ']d', '<Plug>(coc-diagnostic-prev-error)', { silent = true })
-- Tmux Vim navigator
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>")
-- Emmet Nvim
