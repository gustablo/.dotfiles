vim.g.mapleader = " "

-- toggle tree 
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- move highlited lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Set 'x' to delete character under cursor
vim.keymap.set('n', 'x', 'x', { noremap = true, silent = true })

-- Optionally, set 'xx' to delete the current line for a more specific example
vim.keymap.set('n', 'xx', 'dd', { noremap  = true, silent= true })

-- don't copy when press p or d
vim.keymap.set("x", "p", [["_dP]])
vim.keymap.set("x", "d", [["_d]])

-- allow ctrl+c and ctrl+v
vim.keymap.set({"n", "v"}, "Y", [["+y]])
vim.keymap.set({"n", "v"}, "P", [["+p]])

-- format entire buffer?
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

