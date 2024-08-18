-- Set colorscheme
vim.opt.termguicolors = true
vim.cmd.colorscheme('catppuccin-mocha')

-- General vim settings
vim.opt.number = true
vim.opt.mouse = ''
vim.opt.syntax = 'on'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = false
vim.opt.cursorline = true

vim.g.mapleader = ' '
-- Keymaps
vim.keymap.set('n', '<leader>p', '<cmd>bN<cr>', { silent = true })
vim.keymap.set('n', '<leader>n', '<cmd>bn<cr>', { silent = true })

-- Special functions
local function toggleNumGutter()
    if vim.o.number then vim.opt.number = false else vim.opt.number = true end
    if vim.o.signcolumn == 'yes' then
        vim.opt.signcolumn = 'no'
    else
        vim.opt.signcolumn = 'yes'
    end
end
vim.keymap.set('n', '<leader>h', toggleNumGutter)
vim.keymap.set('n', '<leader>b', '<cmd>ls<cr><cmd>b', { silent = true })

