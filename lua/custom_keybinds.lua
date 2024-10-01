-- Normal mode remaps
vim.api.nvim_set_keymap('n', 'l', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'm', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'h', '0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ù', '$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':!mkdir ', { noremap = true, silent = true })

-- Visual mode remaps
vim.api.nvim_set_keymap('v', 'l', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'm', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'h', '0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'ù', '$', { noremap = true, silent = true })

-- Insert mode remap
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- Leader key mappings
vim.api.nvim_set_keymap('n', '<Leader>s', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>b', ':Ex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>l', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':e %:h/', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Shif-n>', ':!mkdir %:h/', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Create custom command for saving with sudo
vim.api.nvim_create_user_command('Sw', 'w !sudo tee % > /dev/null', {})
