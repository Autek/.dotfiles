-- line numbers and relative line number
vim.opt.nu = true
vim.opt.rnu = true

-- use tabs not spaces and the width is 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- autoIndent (I think)
vim.smartindent = true

-- no line wrap
vim.opt.wrap = false

-- no neovim backup but infinit backup with undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- no keeping highlights (can't rememember incsearch)
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- I like colors
vim.termguicolor = true

--keep cursor when possible at least 8 lines from top or bottom
vim.opt.scrolloff = 8

-- colorcolumn to not write too long lines
vim.opt.colorcolumn = "80"

-- leader key
vim.g.mapleader = " "

-- disable copilot on startup
--vim.cmd(":Copilot disable")

vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = {"java", "kotlin", "xml"},  -- File types where you'd like to suppress warnings
  callback = function()
    vim.diagnostic.disable(0)  -- Disable diagnostics for the current buffer
  end,
})

