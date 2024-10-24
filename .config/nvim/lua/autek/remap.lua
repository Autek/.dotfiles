--To move highlighted text using J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--to keep the cursor in the middle doing ctrl- u or d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--to keep cursor in the middle when iterating aroud searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "<Nzzzv")

--to be able do replace something without changing buffer
vim.keymap.set("x", "<leader>p", "\"_dp")

--can't make it work but copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--delete without changing buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

--this can replace all occurences of a string
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--to train the muscle memory
local hardmode = true
if hardmode then
    -- Show an error message if a disabled key is pressed
    local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

    -- Disable arrow keys in insert mode with a styled message
    vim.api.nvim_set_keymap('i', '<Up>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Down>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Left>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Right>', '<C-o>' .. msg, { noremap = true, silent = false })
    --vim.api.nvim_set_keymap('i', '<Del>', '<C-o>' .. msg, { noremap = true, silent = false })
    --vim.api.nvim_set_keymap('i', '<BS>', '<C-o>' .. msg, { noremap = true, silent = false })

    -- Disable arrow keys in normal mode with a styled message
    vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
	vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })
    --vim.api.nvim_set_keymap('n', '<BS>', msg, { noremap = true, silent = false })
end
