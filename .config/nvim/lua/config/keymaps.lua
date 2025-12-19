local keymap = vim.keymap.set

keymap('n', '<C-a>', '<Home>')
keymap('n', '<C-e>', '<End>')
keymap('n', '<C-b>', '<Left>')
keymap('n', '<C-f>', '<Right>')
keymap('n', '<C-d>', '<Del>')

keymap("i", "<S-Tab>", "<C-d>", { noremap = true, silent = true })
keymap('i', '<C-a>', '<Home>')
keymap('i', '<C-e>', '<End>')
keymap('i', '<C-b>', '<Left>')
keymap('i', '<C-f>', '<Right>')
keymap('i', '<C-d>', '<Del>')
